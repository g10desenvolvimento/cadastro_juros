unit RegistroBaixaDAO;

interface

uses
  Variants, SysUtils, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Unit1, Dialogs, StdCtrls, ExtCtrls, DBCtrls, Classes,
  Validar,RegistroBaixa, Parcela, Juros;

type
  TRegistroBaixaDAO = class

  private
    { Private Declarations }
    ZQuery: TZQuery;
  public
    constructor Create;
    function modpagamento(RegistroBaixa : TRegistroBaixa) : String;
    function numeroDocumento(registroBaixa: TRegistroBaixa): String;
    procedure BaixarParcela(registroBaixa : TRegistroBaixa);
    procedure alterarStatusParcela(RegistroBaixa : TRegistroBaixa; iStatus : integer);
    function verificaStatusParcela(RegistroBaixa: TRegistroBaixa): Boolean;
    function statusParcelaTitulo(RegistroBaixa : TRegistroBaixa):Boolean;
    procedure atualizarStatusTitulo(RegistroBaixa : TRegistroBaixa);
    function verificaExiteJuros(RegistroBaixa : TRegistroBaixa):Boolean;
    function pegaJurosCMF(RegistroBaixa : TRegistroBaixa): TJuros;
    procedure atualizaValorComJuros(iParcela : integer; cValor : Currency);
    function getParcela(iCodigoTitulo: integer): TParcela;

  end;

implementation



constructor TRegistroBaixaDAO.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;


function TRegistroBaixaDAO.modpagamento(RegistroBaixa : TRegistroBaixa): String;
var
  ZgetModPgto: TZQuery;
  sPagamento, sSQL: string;
begin
  try
    {Monta a query}
    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL := 'select mp.descricao from parcela p '+
            'join titulo t on (p.tituloid=t.id) '+
            'join modalidadepagamento mp on (t.modalidadepagamentoid=mp.id) '+
            'where p.id = '+IntToStr(RegistroBaixa.parcela.codigo);


    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    sPagamento := ZgetModPgto.FieldByName('descricao').AsString;

    result := sPagamento;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end;
end;

function TRegistroBaixaDAO.numeroDocumento(
  registroBaixa: TRegistroBaixa): String;
var
  ZgetNDocumento  : TZQuery;
  sSQL, sDocumento: string;
begin
  try
    ZgetNDocumento := TZQuery.Create(ZQuery);
    ZgetNDocumento.Connection := frmPrincipal.ZConnection;

    {Monta a query}
    sSQL := 'select pp.numerodocumento from parcela p '+
            'join titulo t on (p.tituloid=t.id) '+
            'join prepagamento pp on (pp.tituloid=t.id) '+
            'where p.id = '+IntToStr(RegistroBaixa.parcela.codigo);

    ZgetNDocumento.SQL.Text := sSQL;
    ZgetNDocumento.Open;

    sDocumento := ZgetNDocumento.FieldByName('numerodocumento').AsString;
    result := sDocumento;
  finally
    ZgetNDocumento.Close;
    ZgetNDocumento.Free;
  end;

end;

function TRegistroBaixaDAO.pegaJurosCMF(RegistroBaixa: TRegistroBaixa): TJuros;
var
  ZgetJuros: TZQuery;
  juros: TJuros;
  sSQL: string;
begin
  try
    ZgetJuros            := TZQuery.Create(ZQuery);
    ZgetJuros.Connection := frmPrincipal.ZConnection;
    juros     := TJuros.Create;

    {Monta a query}
    sSQL := 'select cmf.descricao as cmf,j.juros,j.jurosmora,j.acrescimo from cmf '+
            'join juros j on (j.id=cmf.jurosid) '+
            'where cmf.descricao = '''+RegistroBaixa.parcela.Titulo.Cmf.descricao+'''';

    ZgetJuros.SQL.Text := sSQL;

    while not ZgetJuros.Eof do
    begin
      juros.juros     := ZgetJuros.FieldByName('juros').AsCurrency;
      juros.jurosMora := ZgetJuros.FieldByName('jurosmora').AsCurrency;

      if (ZgetJuros.FieldByName('acrescimo').AsString = '') then
        juros.acrescimo := 0
      else
        juros.acrescimo := ZgetJuros.FieldByName('acrescimo').AsCurrency;

      ZgetJuros.Next;
    end;

    result := juros;
  finally
    ZgetJuros.Close;
    ZgetJuros.Free;
  end;
end;

procedure TRegistroBaixaDAO.alterarStatusParcela(RegistroBaixa: TRegistroBaixa; iStatus : integer);
var
  ZsetUpdate: TZQuery;
  sSQL: string;
begin
  try
    ZsetUpdate            := TZQuery.Create(ZQuery);
    ZsetUpdate.Connection := frmPrincipal.ZConnection;

    {Monta query para registro de baixa}
    if iStatus = 2 then
      sSQL := 'update parcela set statusgrupoid = 2 where id = '+IntToStr(RegistroBaixa.parcela.codigo)
    else
      sSQL := 'update parcela set statusgrupoid = 3 where id = '+IntToStr(RegistroBaixa.parcela.codigo);

    ZsetUpdate.SQL.Text := sSQL;
    ZsetUpdate.ExecSQL;
  finally
    ZsetUpdate.Close;
    ZsetUpdate.Free
  end;
end;

procedure TRegistroBaixaDAO.atualizarStatusTitulo(
  RegistroBaixa: TRegistroBaixa);
var
  sSQL: string;
  ZsetUpdate: TZQuery;
begin
  try
    ZsetUpdate            := TZQuery.Create(ZQuery);
    ZsetUpdate.Connection := frmPrincipal.ZConnection;

    {Monta query para registro de baixa}
    sSQL := 'update titulo set statusid = 2 where id = (select tituloid from parcela where id = '+IntToStr(RegistroBaixa.parcela.codigo)+')';

    ZsetUpdate.SQL.Text := sSQL;

    ZsetUpdate.ExecSQL;
  finally
    ZsetUpdate.Close;
    ZsetUpdate.Free;
  end;

end;

procedure TRegistroBaixaDAO.atualizaValorComJuros(iParcela: integer; cValor: Currency);
var
  sSQL      : string;
  ZsetUpdate: TZQuery;
  Validar   : TValidar;
begin
  try
    ZsetUpdate            := TZQuery.Create(ZQuery);
    ZsetUpdate.Connection := frmPrincipal.ZConnection;
    Validar               := TValidar.Create;

    {Monta query para registro de baixa}
    sSQL := 'update parcela set valor = '+Validar.VirgulaPonto(CurrToStr(cValor))+' where id = '+IntToStr(iParcela);

    ZsetUpdate.SQL.Text := sSQL;

    ZsetUpdate.ExecSQL;
  finally
    ZsetUpdate.Close;
    ZsetUpdate.Free;
    Validar.Free
  end;

end;

procedure TRegistroBaixaDAO.BaixarParcela(registroBaixa: TRegistroBaixa);
var
  sSQL       : string;
  Validar    : TValidar;
  ZgetInsert : TZQuery;
begin
  try
    ZgetInsert            := TZQuery.Create(ZQuery);
    ZgetInsert.Connection := frmPrincipal.ZConnection;
    Validar               := TValidar.Create;
    
    {Monta query para registro de baixa}
    sSQL := 'insert into registrobaixa (parcelaid,modpagamentoid,numerodocumento,valorpago,datapagamento,numerotransacao,historico) values (' +
            IntToStr(registroBaixa.parcela.codigo)+','+
            IntToStr(registroBaixa.parcela.Titulo.modalidadePagamento.codigo)+','''+
            registroBaixa.parcela.Titulo.prepagamento+''','''+
            validar.VirgulaPonto(CurrToStr(registroBaixa.parcela.vl_parcela))+''','''+
            FormatDateTime('yyyy/MM/dd',(registroBaixa.dt_pagamento))+''','''+
            registroBaixa.no_transacao+''','''+
            registroBaixa.historico+''')';

    ZgetInsert.SQL.Text := sSQL;
    ZgetInsert.ExecSQL;
  finally
    ZgetInsert.Close;
    ZgetInsert.Free;
  end;
end;

function TRegistroBaixaDAO.statusParcelaTitulo(
  RegistroBaixa: TRegistroBaixa): Boolean;
var
  sSQL: string;
  ZgetStatus: TZQuery;
  bVazia: boolean;
begin
  try
    ZgetStatus            := TZQuery.Create(ZQuery);
    ZgetStatus.Connection := frmPrincipal.ZConnection;

    sSQL := 'select statusgrupoid from parcela '+
            'where tituloid=(select tituloid from parcela where id = '+IntToStr(RegistroBaixa.parcela.codigo)+') '+
            'and statusgrupoid = 1';

    ZgetStatus.SQL.Text := sSQL;

    bVazia := false;
    if not ZgetStatus.IsEmpty then
       bVazia := true;

    result := bVazia;
  finally
    ZgetStatus.Close;
    ZgetStatus.Free;
  end;

end;

function TRegistroBaixaDAO.verificaExiteJuros(
  RegistroBaixa: TRegistroBaixa): Boolean;
var
  sSQL: string;
  ZgetStatus: TZQuery;
  bVazia: boolean;
begin
  try
    ZgetStatus            := TZQuery.Create(ZQuery);
    ZgetStatus.Connection := frmPrincipal.ZConnection;

    sSQL := 'select jurosid from cmf where descricao = '''+RegistroBaixa.parcela.Titulo.Cmf.descricao+'''';

    ZgetStatus.SQL.Text := sSQL;

    bVazia := false;
    if not ZgetStatus.IsEmpty then
       bVazia := true;

    result := bVazia;
  finally
    ZgetStatus.Close;
    ZgetStatus.Free;
  end;
end;

function TRegistroBaixaDAO.verificaStatusParcela(
  RegistroBaixa: TRegistroBaixa): Boolean;
var
  sSQL: string;
  ZgetStatus: TZQuery;
  bVazia: boolean;
begin
  try
    ZgetStatus            := TZQuery.Create(ZQuery);
    ZgetStatus.Connection := frmPrincipal.ZConnection;

    sSQL := 'select sg.descricao from parcela p '+
            'join statusgrupo sg on (sg.id=p.statusgrupoid) '+
            'where p.statusgrupoid = 2 and p.id = '+IntToStr(RegistroBaixa.parcela.codigo)+
            '  or p.statusgrupoid = 3 and p.id = '+IntToStr(RegistroBaixa.parcela.codigo);

    ZgetStatus.SQL.Text := sSQL;

    bVazia := false;
    if not ZgetStatus.IsEmpty then
       bVazia := true;

    result := bVazia;
  finally
    ZgetStatus.Close;
    ZgetStatus.Free;
  end;
end;

function TRegistroBaixaDAO.getParcela(iCodigoTitulo: integer): TParcela;
var
  ZgetParcela: TZQuery;
  Parcela: TParcela;
  sSQL: string;
begin
  try
    ZgetParcela            := TZQuery.Create(ZQuery);
    ZgetParcela.Connection := frmPrincipal.ZConnection;
    Parcela                := TParcela.Create;

    {Monta a query}
    sSQL := 'select parcela.id, parcela.valor, parcela.modalidadepagamento from parcela '+
            'where tituloid = '''+IntToStr(iCodigoTitulo)+'''';

    ZgetParcela.SQL.Text := sSQL;
    ZgetParcela.Open;

    while not ZgetParcela.Eof do
    begin
      Parcela.codigo     := ZgetParcela.FieldByName('id').AsInteger;
      Parcela.vl_parcela := ZgetParcela.FieldByName('valor').AsCurrency;
      Parcela.Titulo.modalidadePagamento.codigo := ZgetParcela.FieldByName('modalidadepagamento').AsInteger;

      ZgetParcela.Next;
    end;

    result := Parcela;
  finally
    ZgetParcela.Close;
    ZgetParcela.Free;
  end;
end;

end.
