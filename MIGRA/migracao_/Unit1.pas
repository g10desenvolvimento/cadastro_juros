unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, ExtCtrls, DBCtrls, ExcelXP,
  OleServer, StdCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, Validar, Classes, Titulo, Parcela, RegistroBaixa, ComCtrls,
  Dados, ComObj, ZAbstractConnection, DateUtils;

type
  TfrmPrincipal = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ZConnection: TZConnection;
    ZQuery: TZQuery;
    ZQPF: TZQuery;
    ZQPJ: TZQuery;
    ZQPIMP: TZQuery;
    ZQEND: TZQuery;
    ZQTel: TZQuery;
    ZQPessoaImp: TZQuery;
    ZQCli: TZQuery;
    ZQDV: TZQuery;
    ZQDados: TZQuery;
    ZQProduto: TZQuery;
    ZQBaixa: TZQuery;
    ZQEmail: TZQuery;
    ZQEND1: TZQuery;
    ZQUPEND: TZQuery;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ZQFor: TZQuery;
    Button6: TButton;
    ZQCatCli: TZQuery;
    Button7: TButton;
    Button8: TButton;
    ProgressBar: TProgressBar;
    lbstatus: TLabel;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    ZQCMF: TZQuery;
    ZQSEQCMF: TZQuery;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    ZConnection1: TZConnection;
    Panel1: TPanel;
    Button19: TButton;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    ZQuery4: TZQuery;
    ZQuery5: TZQuery;
    ZQuery6: TZQuery;
    ZQuery7: TZQuery;
    ZQuery8: TZQuery;
    ZQuery9: TZQuery;
    ZQuery10: TZQuery;
    ZQuery11: TZQuery;
    ZQuery12: TZQuery;
    ZQuery13: TZQuery;
    ZQuery14: TZQuery;
    ZQuery15: TZQuery;
    ZQuery16: TZQuery;
    ZQuery17: TZQuery;
    zGet: TZQuery;
    ZQSeqDados: TZQuery;
    Button20: TButton;
    Button22: TButton;
    ZgetEnd: TZQuery;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Edit1: TEdit;
    ZServerG10: TZConnection;
    ZLocalhost: TZConnection;
    zSet: TZQuery;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    zqSeq: TZQuery;
    Button33: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    ckbCliente: TCheckBox;
    btnXLSBatra: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    btnProdutoCASABONITA: TButton;
    btnMarcaCASABONITA: TButton;
    btProdutoCNovo: TButton;
    btnPComercialBatista: TButton;
    btnPJequitivaMadereira: TButton;
    btnComercialPinto: TButton;
    btnClienteComercialPinto: TButton;
    btnCRComercialPinto: TButton;
    btnComercialNicacio: TButton;
    btnAMO: TButton;
    btnECOLAR: TButton;
    btnCODBARRAECOLAR: TButton;
    StringGrid1: TStringGrid;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    btnM_NASCIMENTO: TButton;
    btnC_NASCIMENTO: TButton;
    Button55: TButton;
    Button56: TButton;
    btnProdutoSouza: TButton;
    btnClienteSouza: TButton;
    Button57: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure btnXLSBatraClick(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure btnMarcaCASABONITAClick(Sender: TObject);
    procedure btnProdutoCASABONITAClick(Sender: TObject);
    procedure btProdutoCNovoClick(Sender: TObject);
    procedure btnPComercialBatistaClick(Sender: TObject);
    procedure btnPJequitivaMadereiraClick(Sender: TObject);
    procedure btnComercialPintoClick(Sender: TObject);
    procedure btnClienteComercialPintoClick(Sender: TObject);
    procedure btnCRComercialPintoClick(Sender: TObject);
    procedure btnComercialNicacioClick(Sender: TObject);
    procedure btnAMOClick(Sender: TObject);
    procedure btnECOLARClick(Sender: TObject);
    procedure btnCODBARRAECOLARClick(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure btnM_NASCIMENTOClick(Sender: TObject);
    procedure btnC_NASCIMENTOClick(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure btnProdutoSouzaClick(Sender: TObject);
    procedure btnClienteSouzaClick(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    ExcelApplication1 : TExcelApplication;
    ExcelWorksheet1 : TExcelWorksheet;
    procedure TrimAppMemorySize;
  public
    //ZQuery1, ZQPF1, ZQPJ1, ZQPIMP1, ZQEND1, ZQTel1,  ZQCli1,  ZQDV1, ZQEmail1, ZQCatCli1, ZQDados1: TZQuery;
    { Public declarations }
    function removeLetra(sString: string): string;
    function removeNumero(sString: string): string;
    function removeSONumero(sString: string): string;
    function ehNumero(sString: string): boolean;
    function getCEP(sString: string): string;
    function removeData(sString: string): string;
    function removeSifra(sString: string): string;
    function removeApost(sString: string): string;
    function dddTel(sString: string; flag: integer): string;
    function primeiroNome(sString: string): string;
    function getNome(sString: string): string;
    function getString(sString: string; iEsp: integer): string;
    function getLim(sString: string): string;
    function getGrupo(sString: string): integer;
    function getUnidade(sString: string): integer;
    function getModPgto(sString: string): integer;
    function getIdPessoa(sString: string): integer;
    function getIdPessoaPORIdentifier(sString: string): integer;
    function getCMF(sString: string): integer;
    function getCodigoPessoa(sString: string): integer;
    function getCodigoPessoaFornecedor(sString: string): integer;
    function getIdProduto(sString: string): integer;
    function getFornecedorOuCmf(sCod, sDescricao: string): string;
    function getCodigoBarras(sCod: string): string;
    function getCodigoCidade(sCidade, sUf: string): string;
    function getCodigoUF(sUf: string): string;
    function getDescProduto(str: string): string;
    function getMarca(sMarca: string): string;
    function getMarcaPorDescricao(sDescricao: string): string;
    function getExisteProduto(sDescricao: string): boolean;
    function getExisteCodigoProduto(sCodigo: string): boolean;
    function getSusbSecao(sDescricao: string): integer;
    function getFamilia(sDescricao: string): integer;
    function gettGRUPO(sDescricao: string): integer;
    function Xls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
    function getExisteProdutoCodDesc(sCodigo, sDescricao:string): boolean;
    procedure limpaStg(Stg: TStringGrid);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  TituloRN, RegistroBaixaRN, Produto, ProdutoRN, Email;


{$R *.dfm}

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ExcelApplication1.Free;
  ExcelWorksheet1.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 // ClientDataSet1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Cadastro de Clientes.xlsx');
//  ClientDataSet1.Open;
    ExcelApplication1 := TExcelApplication.Create(self);
    ExcelWorksheet1   := TExcelWorksheet.Create(self);
end;

function TfrmPrincipal.removeNumero(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '_0123456789,';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;
end;

function TfrmPrincipal.dddTel(sString: string; flag: integer): string;
var
  i, x: integer;
  sNum: string;
begin
  sNum := '';
  for i := 1 to Length(sString) do
  begin
    if flag = 2 then
    begin
      sNum := Trim(sNum) + Trim(sString[i]);
      if Length(sNum) = flag then
         break;
    end;

    if flag = 8 then
    begin
      if i >= 3 then
         sNum := Trim(sNum) + Trim(sString[i]);

      if Length(sNum) = flag then
         break;
    end;
  end;
  result := sNum;
end;

procedure TfrmPrincipal.Button30Click(Sender: TObject);
var
  ArquivoTXT: TextFile;
  sCodigo, sDescricao, sData, Path: string;
  i: integer;

  Linhas, Colunas: TStringList;
  j:integer;
begin
  Path    := ExtractFilePath(Application.ExeName) + '\xls\tb463.txt';

  Linhas  := TStringList.Create;
  Colunas := TStringList.Create;
  try
    Linhas.LoadFromFile(Path);

    ProgressBar.Position := 0;
    ProgressBar.Max      := Linhas.Count;

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into spedcodigoreceita(codigo, descricao, datainicio, identifier) ');
    ZQuery.SQL.Add('values (:codigo, :descricao, :datainicio,(select identificador from dados where id = 1428) )  ');


    for i := 0 to Pred(Linhas.Count) do
    begin
      Colunas.text := Trim(StringReplace(Linhas.Strings[i], '|', #13, [rfReplaceAll]));
      {
      for j := 0 to Colunas.Count-1 do
      begin
        if Trim(Colunas.Strings[j]) = 'Código' then
        begin

        end;
      end;
      }
      sCodigo    := Trim(Colunas.Strings[0]);
      sDescricao := Trim(Colunas.Strings[1]);
      sData      := Copy(Trim(Colunas.Strings[2]),1,2)+'/'+Copy(Trim(Colunas.Strings[2]),3,2)+'/'+Copy(Trim(Colunas.Strings[2]),5,4);

      ZQuery.Close;
      ZQuery.ParamByName('codigo').AsString    := sCodigo;
      ZQuery.ParamByName('descricao').AsString := sDescricao;
      ZQuery.ParamByName('datainicio').AsDate  := StrToDate(sData);
      ZQuery.ExecSQL;
    end;
    ShowMessage('Importou');
  finally
    ZQuery.Close;
  end;
end;

procedure TfrmPrincipal.Button31Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Titulos,	Agen,	Conta, sNome, sCod, sCodForCMF, sPC: string;
  DtDoc,	DtVenc, DtPgto: TDate;
  VlDoc, sObs, VlPago: string;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  bImportar: boolean;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
begin
  try
  Button22.Enabled := false;

  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;


  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\'+
  'CPBAIXADO.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  for iPlanilha := 1 to 1 do
  begin

    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      ProgressBar.Position := 0;
      ProgressBar.Max      := 16788;

      for i := 2 to Rows.Count do
      begin
        Codigo     := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        VlDoc      := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
        sCodForCMF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

        //if i=16 then
        //   ShowMessage(Codigo);

        if ehNumero(Codigo) and (sCodForCMF <> '') then
        begin
          Codigo := removeNumero(Codigo);

          if ehNumero(VlDoc) then
             sObs := Trim(Range['A' + IntToStr(I+1), 'A' + IntToStr(I+1)].Value2) +
                     Trim(Range['B' + IntToStr(I+1), 'B' + IntToStr(I+1)].Value2) +
                     Trim(Range['C' + IntToStr(I+1), 'C' + IntToStr(I+1)].Value2) +
                     Trim(Range['D' + IntToStr(I+1), 'D' + IntToStr(I+1)].Value2) +
                     Trim(Range['E' + IntToStr(I+1), 'E' + IntToStr(I+1)].Value2);

          Agen    := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
          Conta   := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

          sCod := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          sCodForCMF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          //if Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2) <> '' then
          DtDoc   := now; //Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2;

          if Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2) <> '' then
             DtPgto := Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2;

          if Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2) <> '' then
             DtVenc  := Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2;

          Doc    := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          VlDoc  := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
          VlPago := Trim(Range['O' + IntToStr(I), 'O' + IntToStr(I)].Value2);

          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := 6;
          if Doc = 'DEP' then
             iModPgto  := 16;
          if Doc = 'VAL' then
             iModPgto  := 8;
          if Doc = 'DUP' then
             iModPgto  := 9;
          if Doc = 'CHP' then
             iModPgto  := 4;
          if Doc = 'CA' then
             iModPgto  := 1;
          if Doc = 'CHC' then
             iModPgto  := 11;
          if (Doc = 'DIN') or (Doc='DCC') or (Doc='DIV') or (Doc='BBB')then
             iModPgto  := 5;

          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].vl_Pgto              := StrToFloat(getLim(VlPago));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          Parcela.parcelas[iTamArray-1].dt_vencimento    := DtVenc;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
          Parcela.parcelas[iTamArray-1].dt_Pgto          := DtPgto;
          DataVenc                                       := DtDoc;

          Parcela.parcelas[iTamArray-1].Status.codigo := 1;

          sPC := getFornecedorOuCmf(sCod, sCodForCMF);

          if System.Copy(sPC, 1, 1)='C' then
          begin
            System.Delete(sPC,1,1);
            Parcela.Titulo.Cmf.codigo   := StrToInt(sPC);
            Parcela.Titulo.dados.codigo := 1428;
          end;

          if System.Copy(sPC, 1, 1)='P' then
          begin
            System.Delete(sPC,1,1);
            Parcela.Titulo.Cmf.codigo   := 80;
            Parcela.Titulo.dados.codigo := StrToInt(sPC)
          end;

          Parcela.Titulo.sCodidgoImport       := Codigo;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := Doc;
          Parcela.Titulo.status.codigo        := 2;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := sObs;
          Parcela.Titulo.usuario.codigo    := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          for iTamArray := 0 to Length(Parcela.parcelas) - 1 do
          begin
            RegistroBaixa.parcela.codigo              := Parcela.codigo;
            RegistroBaixa.parcela.Titulo.prepagamento := '';
            RegistroBaixa.parcela.vl_parcela          := Parcela.parcelas[iTamArray].vl_Pgto;
            RegistroBaixa.dt_pagamento                := Parcela.parcelas[iTamArray].dt_Pgto;
            RegistroBaixa.no_transacao                := Validar.gerarDigitoZero(IntToStr(Parcela.parcelas[iTamArray].codigo), 8);
            RegistroBaixa.historico                   := '';
            RegistroBaixa.status.codigo               := Parcela.parcelas[iTamArray].Status.codigo;
            RegistroBaixa.parcela.Titulo.modalidadePagamento.codigo := Parcela.Titulo.modalidadePagamento.codigo;

            RegistroBaixaRN.baixarParcela(RegistroBaixa);
          end;

          iNParcela := 1;
          iTamArray := 0;
          Codigo    := '';
          bImportar := false;

        end;

        ProgressBar.Position := i;

        if i = 16788 then
           break;
      end;

    end;

    if iPlanilha = 1 then
       Break;

  end;
  ShowMessage('A importa��o foi realizada com �xito.');

  RegistroBaixaRN.Free;
  RegistroBaixa.Free;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' - '+IntToStr(i)+' - '+Codigo);
    end;
  end;
end;

procedure TfrmPrincipal.Button32Click(Sender: TObject);
var
  Codigo, Descricao, Abrangencia: string;
  i, iPlanilha: integer;
  ProdutoRN: TProdutoRN;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;

  Excel : Variant;
  Linha: Integer;
  fim: string;
begin
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  {
  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\novoscst.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es
  ExcelApplication1.ScreenUpdating[LCID] := True;
  }

  ProgressBar.Position := 0;
  ProgressBar.Max      := 156;

  zSet.Close;
  zSet.SQL.Clear;
  zSet.SQL.Text :=
  'INSERT INTO cst (codigo, descricao, tipo, abrangencia, tributacao, origem) '+
  'VALUES (:codigo, :descricao, :tipo, :abrangencia, :tributacao, :origem)    ';

  Excel := CreateOleObject('Excel.Application');
  Excel.DisplayAlerts := false;
  Excel.Visible := false;
  {Excel.Workbooks.Add;}
  Excel.WorkBooks.Open(ExtractFilePath(Application.ExeName) +'xls\novoscst.xls');
  Linha := 1;
  Fim   := '';
  while Fim <> 'FIM' do
  begin
    //ShowMessage(Excel.WorkBooks[1].Sheets[1].Cells[linha,1]);
    Codigo    := Trim(Excel.WorkBooks[1].Sheets[1].Cells[linha,1]);
    Descricao := Trim(Excel.WorkBooks[1].Sheets[1].Cells[linha,2]);

    if Codigo = 'c' then
       Abrangencia := UpperCase(Descricao);

    lbstatus.Caption := 'Importando cst, Aguarde...'+Codigo;
    lbstatus.Refresh;
    lbstatus.Repaint;

    if ehNumero(Codigo) then
    begin
      if StrToInt(System.Copy(Codigo, 1, 1)) >= 3 then
      begin
      zSet.Close;
      zSet.ParamByName('codigo').AsString      := Codigo;
      zSet.ParamByName('descricao').AsString   := UpperCase(Descricao);
      zSet.ParamByName('tipo').AsString        := System.Copy(Codigo, 1, 1);
      zSet.ParamByName('abrangencia').AsString := Abrangencia;
      zSet.ParamByName('tributacao').Clear;
      zSet.ParamByName('origem').AsString      := System.Copy(Codigo, 1, 1);
      zSet.ExecSQL;
      end;
    end;

    ProgressBar.Position := ProgressBar.Position + 1;

    Linha := Linha+1;
    Fim   := Excel.WorkBooks[1].Sheets[1].Cells[linha,1];
  end;
  Excel.Application.quit;

  {
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

      if Codigo = '-' then
         Abrangencia := UpperCase(Descricao);

      if Codigo = 'FIM' then
         break;

      lbstatus.Caption := 'Importando cst, Aguarde...'+Codigo;
      lbstatus.Refresh;
      lbstatus.Repaint;

      if ehNumero(Codigo) then
      begin
        if StrToInt(System.Copy(Codigo, 1, 1)) >= 3 then
        begin
        zSet.Close;
        zSet.ParamByName('codigo').AsString      := Codigo;
        zSet.ParamByName('descricao').AsString   := UpperCase(Descricao);
        zSet.ParamByName('tipo').AsString        := System.Copy(Codigo, 1, 1);
        zSet.ParamByName('abrangencia').AsString := Abrangencia;
        zSet.ParamByName('tributacao').Clear;
        zSet.ParamByName('origem').AsString      := System.Copy(Codigo, 1, 1);
        zSet.ExecSQL;
        end;
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
    end;
  end;
  }
  ShowMessage('OK!...OK!');

end;

procedure TfrmPrincipal.Button33Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
    Button8.Enabled := false;
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +'\xls\'+
    'Unidade.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into unidade (descricao) ');
    ZQuery.SQL.Add('values (:descricao)   ');

    iNParcela := 1;
    iTamArray := 0;

    for iPlanilha := 1 to 2 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 1 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          //ColunaF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          if ColunaA='FIM' then
             break;

          try
            //StrToInt(ColunaA);

            if ColunaA <> '9' then
            begin
            ZQuery.Close;
            //ZQuery.ParamByName('id').AsInteger     := StrToInt(ColunaA);
            ZQuery.ParamByName('descricao').AsString := ColunaA;
            //ZQuery.ParamByName('codigo').AsString  := Validar.gerarDigitoZero(ColunaA, 4);
            ZQuery.ExecSQL;
            end;
          except
            on E:Exception do
            begin
              ShowMessage(E.Message);
              break;
            end;
          end;

          ColunaA := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          //ColunaF := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

          if ColunaA='FIM' then
             break;

          try
            //StrToInt(ColunaA);
            if ColunaA <> '9' then
            begin
            ZQuery.Close;
            //ZQuery.ParamByName('id').AsInteger     := StrToInt(ColunaA);

            ZQuery.ParamByName('descricao').AsString := ColunaA;
            //ZQuery.ParamByName('codigo').AsString  := Validar.gerarDigitoZero(ColunaA, 4);
            ZQuery.ExecSQL;
            end;
          except
            on E:Exception do
            begin
              ShowMessage(E.Message);
              break;
            end;
          end;

        end;
    end;
    end;

    ShowMessage('Importou');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.Button35Click(Sender: TObject);
var
  i, CodigoDados, iPos1, iPos2: Integer;
  Validar: TValidar;
  pessoaimpid: integer;

  InsEstadual, Fantasia : string;
  DataCadastro: string;
  sTipo, sFone: string;

  bImportar: boolean;
  ArquivoTXT: TextFile;
  sLinha, sConteudo, Path, sInf: string;
  iCont: integer;

  Linhas, Colunas: TStringList;
  j:integer;
  {Primeira Linha}
  Codigo, Ref, Barra, Produto, sProduto, UnS, UnE: string;
  {Segunda Linha}
  Especie, Marca, Gen: string;
  {Terceira Linha}
  Grupo, NBM, Garantia, Tipo, Comis: string;
  {Quarta Linha}
  CST, Anexo, Icms, Reducao, VendaVar, VendaRev: string;
  {Quinta Linha}
  Estoque, UltTrans, UltVenda, UltCompra: string;
  bLeLinha: boolean;
  Produtos: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
  Validar   := TValidar.Create;
  Produtos  := TProduto.Create;
  ProdutoRN := TProdutoRN.Create;

  Path      := ExtractFilePath(Application.ExeName) + '\xls\Produto47.txt';

  Linhas    := TStringList.Create;
  Colunas   := TStringList.Create;

  try
    Linhas.LoadFromFile(Path);

    ProgressBar.Position := 0;
    ProgressBar.Max      := Linhas.Count;

    {
    C�digo : 70001 Ref.: Barra : Produto CALCA MASC. ORD. 104 UND UND
    Especie: Marca : 1 SIMARON Gen.: 0
    Grupo : 002.007... CONFECCOES NCM : 61082200 Garantia : 0 Tipo : Comis:Mercadoria para Revenda 0 0
    CST : 000 Anexo : 0 Icms : 17,00 Reducao : 0,000 Venda Var.: 33,00 Venda Rev.: 0,00
    Estoque : 3,000 Sit. Esp.: 0 Ult.Trans.: 14/01/08 10:33:09 Ult.Venda: 14/01/08 10:33:09 Ult.Compra: 10/04/06
    }

    for i := 0 to Pred(Linhas.Count) do
    begin
      Colunas.text := Trim(StringReplace(Linhas.Strings[i], ':', #13, [rfReplaceAll]));

      sTipo := '';
      for j := 0 to Colunas.Count-1 do
      begin
        if Trim(Colunas.Strings[j]) = 'C�digo' then
        begin
          bLeLinha  := true;
          bImportar := false;
          iCont     := 1;
        end;

        if iCont = 1 then
        case j of
         1: begin
              Codigo := Trim(Colunas.Strings[j]);
              Codigo := removeSONumero(Codigo);
              //if Codigo = '91' then
              //   ShowMessage(Codigo);
            end;
         2: begin
              Ref := Trim(Colunas.Strings[j]);
              if Ref <> 'Barra' then
                 Ref := Copy(Ref, 1,10)
              else
                 Ref := '';
            end;
         3: begin
              sProduto := Trim(Colunas.Strings[j]);
              Barra := '0';
              {
              if Copy(sProduto, 1, 7)='Produto' then

              else
              begin
                Barra := getCodigoBarras(sProduto);
                Delete(sProduto,1,14);
                sProduto := Trim(sProduto);
              end;
              }
              Delete(sProduto,1,7);
              sProduto := Trim(sProduto);
              Produto  := Trim(getNome(sProduto));

              //Delete(sProduto, 1, Length(Produto));

              sProduto := getDescProduto(Produto);

              UnS      := 'UND';
              UnE      := 'UND';

              Inc(iCont);
              break;
            end;
        end;

        if iCont = 2 then
        case j of
        1: begin
             Especie := Trim(Colunas.Strings[j]);
             if Especie <> 'Marca' then
                Especie := removeSONumero(Especie)
             else
                Especie := '';
           end;
        2: begin
             Marca := Trim(Colunas.Strings[j]);
             if Marca <> 'Gen' then
                Marca := removeSONumero(Marca)
             else
                Marca := '';
           end;
        3: begin
             Gen := Trim(Colunas.Strings[j]);
             Gen := Trim(Copy(Trim(Gen), 1, 2));
             Inc(iCont);
             break;
           end;
        end;

        if iCont = 3 then
        case j of
        1: begin
             Grupo := Trim(Colunas.Strings[j]);
             if Grupo <> 'NBM' then
                Grupo := removeSONumero(Grupo)
             else
                Grupo := '';
           end;
        2: begin
             NBM := Trim(Colunas.Strings[j]);
             if NBM <> 'Garantia' then
                NBM := removeSONumero(NBM)
             else
                NBM := '';
           end;
        3: begin
             Garantia := Trim(Colunas.Strings[j]);
             if Garantia <> 'Tipo' then
                Garantia := getNome(Trim(Garantia))
             else
                Garantia := '';
           end;
        4: begin
             Tipo := Trim(Colunas.Strings[j]);
             if Tipo <> 'Comis' then
                Tipo := getNome(Trim(Tipo))
             else
                Tipo := '';

             if Colunas.Count = 5 then
             begin
               Comis := '';
               Inc(iCont);
               break;
             end;
           end;
        5: begin
             Comis := Trim(Colunas.Strings[j]);
             Comis := getNome(Trim(Comis));
             Inc(iCont);
             break;
           end;
        end;

        if iCont = 4 then
        case j of
        1: begin
             CST := Trim(Colunas.Strings[j]);
             if CST <> 'Anexo' then
                CST := removeSONumero(CST)
             else
                CST := '';
           end;
        2: begin
             Anexo := Trim(Colunas.Strings[j]);
             if Anexo <> 'Icms' then
                Anexo := removeSONumero(Anexo)
             else
                Anexo := '';
           end;
        3: begin
             Icms := Trim(Colunas.Strings[j]);
             if Icms <> 'Reducao' then
                Icms := Trim(removeNumero(Trim(Icms)))
             else
                Icms := '';
           end;
        4: begin
             Reducao := Trim(Colunas.Strings[j]);
             if Reducao <> 'Venda Var' then
                Reducao := removeNumero(Trim(Reducao))
             else
                Reducao := '';
           end;
        5: begin
             VendaVar := Trim(Colunas.Strings[j]);
             if VendaVar <> 'Venda Rev' then
                VendaVar := removeNumero(Trim(VendaVar))
             else
                VendaVar := '';
           end;
        6: begin
             VendaRev := Trim(Colunas.Strings[j]);
             VendaRev := removeNumero(Trim(VendaRev));
             Inc(iCont);
             break;
           end;
        end;

        if iCont = 5 then
        case j of
        1: begin
             Estoque := Trim(Colunas.Strings[j]);
             if Estoque <> 'Ult.Trans.' then
                Estoque := removeNumero(Trim(Estoque))
             else
                Estoque := '';

              bImportar := true;
              iCont := 0;
              break;
           end;
        2: begin
             UltTrans := Trim(Colunas.Strings[j]);
           end;
        3: begin
             UltTrans := UltTrans+':'+Trim(Colunas.Strings[j]);
           end;
        4: begin
             UltTrans := UltTrans+':'+Copy(Trim(Colunas.Strings[j]), 1, 2);
           end;
        5: begin
             UltVenda := Trim(Colunas.Strings[j]);
           end;
        6: begin
             UltVenda := UltVenda+':'+Trim(Colunas.Strings[j]);
           end;
        7: begin
             UltVenda := UltVenda+':'+Copy(Trim(Colunas.Strings[j]), 1, 2);
           end;
        8: begin
             UltCompra := Trim(Colunas.Strings[j]);
             bImportar := true;
             iCont := 0;
             break;
           end;
        end;// fim case
        sConteudo := Trim(Colunas.Strings[j]);
      end;// fim for

      if ((bImportar) and (Codigo <> '')) then
      begin
        bImportar := false;

        //if Codigo = '5227' then
        //   ShowMessage(Codigo);

        Produtos.cod := Validar.gerarDigitoZero(Trim(Codigo), 7);

        if Trim(Barra) = '0' then
        begin
          Produtos.codigoBarra       := Validar.gerarDigitoZero(Trim(Codigo), 14);
          Produtos.codigoBarraImport := Validar.gerarDigitoZero(Trim(Codigo), 14);
        end
        else
        begin
          Produtos.codigoBarra       := Validar.gerarDigitoZero(Trim(Barra), 14);
          Produtos.codigoBarraImport := Validar.gerarDigitoZero(Trim(Barra), 14);
        end;

        Produtos.descricaoFiscal    := removeApost(sProduto);
        Produtos.Descricao          := removeApost(sProduto);
        Produtos.CST                := Cst;
        Produtos.AliquotaIcms       := StrToFloat(Icms);
        Produtos.valor              := Validar.StrToCurrency(Trim(VendaVar));
        Produtos.lote               := '';

        Produtos.TipoProduto.codigo := IntToStr(getGrupo(removeNumero(Grupo)));

        if Produtos.tipoproduto.codigo = '0' then
           Produtos.tipoproduto.codigo := '1006';

        try
          Produtos.Marca.codigo := StrToInt(Trim(Marca));
        except
          Produtos.Marca.codigo := 9;
        end;

        Produtos.garantia           := Trim(Garantia);
        Produtos.subsecao.codigo    := 3;
        Produtos.valorCompra        := 0;
        Produtos.comissaoValor      := 0;
        Produtos.estoqueminimo      := StrToFloat(getLim(Estoque));
        Produtos.Qtde               := StrToFloat(getLim(Estoque));
        Produtos.estoquemaximo      := 0;
        Produtos.comissaoPercentual := 0;
        Produtos.descontoMaximo     := 0;
        Produtos.bCalcIcms          := StrToFloat(Reducao);
        Produtos.bCalcIcmsSubs      := 0;
        Produtos.AliquotaIpi        := 0;
        Produtos.Status.codigo      := 29;
        Produtos.sVendaDiferenciada := '0';
        Produtos.sConstanteCalculo  := '0';
        Produtos.sReferencia        := Ref;
        Produtos.sIPPT              := 'T';
        Produtos.NCM                := NBM;
        Produtos.sBalanca           := '0';
        Produtos.unidade.codigo     := IntToStr(getUnidade(UnE));
        Produtos.unidadeSaida.codigo:= IntToStr(getUnidade(UnS));
        Produtos.Fornecedor.Codigo  := 1428;

        if Produtos.unidade.codigo = '1' then
           Produtos.sBalanca := '1';

        if (Produtos.descricaoFiscal <> '') and (Produtos.Descricao <> '') then
            ProdutoRN.InsertOrUpdate(Produtos, '');

        Codigo := '';
        UltTrans := '';
        UltVenda := '';
        {Primeira Linha}
        Ref:= '';
        Barra:= '';
        Produto:= '';
        sProduto:= '';
        UnS:= '';
        UnE:= '';
        {Segunda Linha}
        Especie:= '';
        Marca:= '';
        Gen:= '';
        {Terceira Linha}
        Grupo:= '';
        NBM:= '';
        Garantia:= '';
        Tipo:= '';
        Comis:= '';
        {Quarta Linha}
        CST:= '';
        Anexo:= '';
        Icms:= '';
        Reducao:= '';
        VendaVar:= '';
        VendaRev:= '';
        {Quinta Linha}
        Estoque:= '';
        UltTrans:= '';
        UltVenda:= '';
        UltCompra:= '';
        ProgressBar.Position := i;
      end;
    end;
  finally
    Linhas.Free;
    Colunas.Free;
  end;


  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' codigo: '+Codigo);
    end;
  end;

end;

procedure TfrmPrincipal.Button36Click(Sender: TObject);
begin
  ZQPF.Close;
  ZQPF.SQL.Text := 'update titulo set pessoaid=:pessoaid, cmfid=:cmfid where id=:id';

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add(
  'select dadospessoajuridica.id as pessoaid, dadospessoajuridica.razaosocial, '+
  'cmf.descricao, titulo.cmfid, titulo.id as tituloid                          '+
  'from cmf                                                                    '+
  'join dadospessoajuridica on dadospessoajuridica.razaosocial=cmf.descricao   '+
  'join titulo on titulo.cmfid=cmf.id                                          ');
  ZQuery.Open;

  while not ZQuery.Eof do
  begin
    ZQPF.Close;
    ZQPF.ParamByName('pessoaid').AsInteger := ZQuery.FieldByName('pessoaid').AsInteger;
    ZQPF.ParamByName('id').AsInteger       := ZQuery.FieldByName('tituloid').AsInteger;
    ZQPF.ParamByName('cmfid').AsInteger    := 80;
    ZQPF.ExecSQL;


    ZQuery.Next;
  end;

  ZQPF.Close;
  ZQPF.SQL.Text := 'delete from cmf where id > 102;';
  ZQPF.ExecSQL;

  ShowMessage('OK');
end;

procedure TfrmPrincipal.Button37Click(Sender: TObject);
var
  Linhas: TStringList;
  i, iLinha: integer;
  Validar: TValidar;
  Path, Texto: string;

begin
  Path    := 'D:\G10Sistemas\Controle Usuario\exe\MenuSystems\Relatorio Cliente.txt';
  Linhas  := TStringList.Create;
  Validar := TValidar.Create;

  Linhas.LoadFromFile(Path);

  ProgressBar.Position := 0;
  ProgressBar.Max      := Linhas.Count;

  iLinha := 1;
  for i := 0 to Linhas.Count - 1 do
  begin
    Texto := Copy(Linhas.Strings[i],1,Pos('@',Linhas.Strings[i])-1);

    Linhas.Strings[i] := Texto+'@'+Validar.gerarDigitoZero(IntToStr(iLinha),4);

    iLinha := iLinha + 1;
  end;

  Linhas.SaveToFile(Path);

  ShowMessage('ok')
end;

procedure TfrmPrincipal.Button38Click(Sender: TObject);
begin
  ShowMessage('CLICOU!');
end;

procedure TfrmPrincipal.Button39Click(Sender: TObject);
var
  I, J: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  bSalvar: boolean;
begin
  try
    Button7.Enabled := false;
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    WKBK := ExcelApplication1.Workbooks.Open(

    ExtractFilePath(Application.ExeName) + 'xls\Grupos.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into tipoproduto(descricao, codigo) ');
    ZQuery.SQL.Add('values (:descricao, :codigo)               ');

    iNParcela        := 1;
    iTamArray        := 0;
    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        bSalvar := false;
        for i := 1 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          if ColunaA = 'FIM' then
             break;

          if ehNumero(removeNumero(ColunaA)) and (ColunaF <>'') then
          begin
            ZQuery.Close;
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ParamByName('codigo').AsString    := Validar.gerarDigitoZero(removeNumero(ColunaA), 4);
            ZQuery.ExecSQL;
          end;
        end;
    end;
    end;

    ShowMessage('Importou!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
var
  sUltimo: string;
  iSexo: integer;
begin
  Button3.Enabled := false;
  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('select id, nome from dadospessoafisica');
  ZQuery.Open;

  ZQPF.Close;
  ZQPF.SQL.Clear;
  ZQPF.SQL.Add('update dadospessoafisica set sexo = :sexo where id = :id ');

  while not ZQuery.Eof do
  begin
    sUltimo := primeiroNome(Trim(ZQuery.FieldByName('nome').AsString));

    if ((Trim(UpperCase(sUltimo)) = 'O') or
       (Trim(UpperCase(sUltimo)) = 'X') or
       (Trim(UpperCase(sUltimo)) = 'N') or
       (Trim(UpperCase(sUltimo)) = 'L') or
       (Trim(UpperCase(sUltimo)) = '�') or
       (Trim(UpperCase(sUltimo)) = 'R') or
       (Trim(UpperCase(sUltimo)) = 'S') or
       (Trim(UpperCase(sUltimo)) = 'Y') or
       (Trim(UpperCase(sUltimo)) = 'Z'))  then
       iSexo := 0
    else
       iSexo := 1;

    ZQPF.Close;
    ZQPF.ParamByName('sexo').AsInteger := iSexo;
    ZQPF.ParamByName('id').AsInteger := ZQuery.FieldByName('id').AsInteger;

    ZQPF.ExecSQL;

    ZQuery.Next;
  end;
  ShowMessage('Finalizou!');

end;

function TfrmPrincipal.primeiroNome(sString: string): string;
var
  PNome, sUltimo : String;

begin
  PNome := '';
  if pos (' ', sString) <> 0 then
  begin
    PNome := copy (sString, 1, pos (' ', sString) - 1);
  end
  else
    PNome := sString;

  sUltimo := Copy(PNome, Length(PNome), 1);

  Result := sUltimo;

end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CnpjCpf, Pessoa: string;
  DataCadastro, Endereco, Bairro : string;
  Email, Cep, Fone, Fax, sTipo, sFone, sNumero: string;
  Limite: double;
  ColunaA, ColunaF: string;
  bImportou: boolean;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
begin
  try
  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  ZConnection.StartTransaction;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +
  'AReceber.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  for iPlanilha := 1 to 33 do
  begin
    bImportou := true;
    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        ColunaF := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);

        if Trim(ColunaA) = 'G-Flux' then
           break;

        if (Trim(ColunaA) = 'Ordem :') and (Pessoa <> Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2)) then
        begin
          Pessoa := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
          ZQDados.Close;
          ZQDados.ParamByName('nome').AsString := Pessoa;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;
        end;

        if Trim(ColunaA) = 'SS' then
        begin
          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := 6;
          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(removeSifra(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          if Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2 <> '' then
             Parcela.parcelas[iTamArray-1].dt_vencimento := StrToDate(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

          if Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2 <> '' then
          begin
            Parcela.parcelas[iTamArray-1].dt_cadastramento := StrToDate(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
            DataVenc                                       := StrToDate(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          end;

          sPedidoArqHis := Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2;
          sStatus := '1';
          Parcela.parcelas[iTamArray-1].Status.codigo := StrToInt(sStatus);
          Inc(iNParcela);
        end;

        if Trim(ColunaF) = 'Sub-Total :' then
        begin
          Parcela.Titulo.Cmf.codigo           := 3;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := sPedidoArqHis;
          Parcela.Titulo.status.codigo        := 1;
          Parcela.Titulo.vl_titulo            := Validar.StrToCurrency(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := 'importa��o';

          Parcela.Titulo.dados.codigo   := CodigoDados;
          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          iNParcela := 1;
          iTamArray := 0;
        end;

     end;
    end;
  end;
  ZConnection.Commit;
  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TfrmPrincipal.Button40Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque: string;
  sBalanca, CST, NCM, CFOP, CODBARRA, GRUPO, QTDEEMB, PRECOATAC, QTDEATAC: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutosAtivo.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 14585;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      CODIGO := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

      //if Codigo = '201480000' then
      //   ShowMessage(Codigo);

      if CODIGO = 'FIM' then
         break;

      //if ehNumero(Codigo) and (System.Copy(Codigo, 1, 1) <> '2') then
      //begin
        CODBARRA   := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        Descricao  := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        GRUPO      := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        Unidade    := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        Custo      := Validar.PontoVirgula(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        Preco      := Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));
        QTDEEMB    := Validar.PontoVirgula(Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2));
        PRECOATAC  := Validar.PontoVirgula(Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2));
        QTDEATAC   := Validar.PontoVirgula(Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2));
        NCM        := Trim(Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2);
        Estoque    := Validar.PontoVirgula(Trim(Range['L' + IntToStr(I), 'L' + IntToStr(I)].Value2));
        CFOP       := '';
        CST        := Validar.gerarDigitoZero(Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2), 3);
        Aliquota   := '0';
        sBalanca   := Trim(Range['N' + IntToStr(I), 'N' + IntToStr(I)].Value2);

        MLucro     := '0';
        sPisCofins := '0';

        sMsg       := 'PRODUTO: C�DIGO '+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if (sBalanca = 'S') and (Unidade = 'KG') then
        begin
          Unidade             := 'KG';
          Produto.sBalanca    := '1';
          Produto.cod         := Validar.gerarDigitoZero(CODIGO, 7);
          Produto.codigoBarra := Validar.gerarDigitoZero(CODIGO, 14);
        end
        else
        begin
          Unidade             := 'UN';
          Produto.sBalanca    := '0';

          if length(Codigo) = 13 then
             Produto.cod := ProdutoRN.gerarCodigo
          else
             Produto.cod := Validar.gerarDigitoZero(Codigo, 7);

          if CODBARRA = '' then
             Produto.codigoBarra := Validar.gerarDigitoZero(Produto.cod, 14)
          else
             Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end;

        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
        }
        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := IntToStr(getGrupo(removeNumero(Grupo)));

        if Produto.tipoproduto.codigo = '0' then
           Produto.tipoproduto.codigo := '1006';

        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        produto.QtdeEmbalagem         := StrToFloat(removeNumero(QTDEEMB));
        produto.precoatado            := removeNumero(PRECOATAC);
        produto.QtdeAtacado           := StrToFloat(removeNumero(QTDEATAC));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      //end;
      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.Button41Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPis, sCofins, Estoque: string;
  sBalanca, CST, NCM, CFOP, CODBARRA: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  sReducao: string;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutosALG.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 39849;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

      //if Codigo = '201480000' then
      //   ShowMessage(Codigo);

      if( (Codigo = 'FIM') or  (Codigo = '') ) then
           break;

      //if ehNumero(Codigo) and (System.Copy(Codigo, 1, 1) <> '2') then
      //begin
        CODBARRA   := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        NCM        := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        CFOP       := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        CST        := Validar.gerarDigitoZero(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2), 3);
        Aliquota   := Validar.PontoVirgula(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        sReducao   := Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));
        Descricao  := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
        Unidade    := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);
        sBalanca   := Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2);
        Preco      := Validar.PontoVirgula(Trim(Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2));
        Estoque    := Validar.PontoVirgula(Trim(Range['L' + IntToStr(I), 'L' + IntToStr(I)].Value2));
        Custo      := Validar.PontoVirgula(Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2));
        MLucro     := '0';

        sPis    := '0';
        sCofins := '0';

        sPis    := Validar.PontoVirgula(Trim(Range['N' + IntToStr(I), 'N' + IntToStr(I)].Value2));
        sCofins := Validar.PontoVirgula(Trim(Range['O' + IntToStr(I), 'O' + IntToStr(I)].Value2));

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption     := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if sBalanca = '1' then
        begin
          Unidade             := 'KG';
          Produto.sBalanca    := '1';
          Produto.cod         := Validar.gerarDigitoZero(CODBARRA, 7);
          Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end
        else
        begin
          Unidade             := 'UN';
          Produto.sBalanca    := '0';

          if length(Codigo) = 13 then
             Produto.cod := ProdutoRN.gerarCodigo
          else
             Produto.cod := Validar.gerarDigitoZero(Codigo, 7);

          Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end;

        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
        }

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 0;
        if (StrToFloat(sPis) > 0) or (StrToFloat(sCofins) > 0) then
           Produto.PisCofins := 1;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.PercentBaseCalcIcms   := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.PercentBaseCalcIcms   := StrToFloat(removeNumero(sReducao));

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      //end;
      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');

end;

procedure TfrmPrincipal.Button42Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPis, sCofins, Estoque: string;
  sBalanca, CST, NCM, CFOP, CODBARRA: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  sReducao: string;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\Produtos.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := true;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 27526;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

      //if Codigo = '201480000' then
      //   ShowMessage(Codigo);

      if( (Codigo = 'FIM') or  (Codigo = '') ) then
           break;

      //if ehNumero(Codigo) and (System.Copy(Codigo, 1, 1) <> '2') then
      //begin
        CODBARRA   := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        NCM        := '';
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        sReducao   := '0';
        Descricao  := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        Unidade    := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        sBalanca   := '0';
        Preco      := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        Estoque    := '0';
        Custo      := '0';
        MLucro     := '0';

        sPis       := '0';
        sCofins    := '0';

        sPis       := '0';
        sCofins    := '0';

        if (UpperCase(Preco) = 'NULL') or (UpperCase(Preco) = '') then
           Preco := '0'
        else
           Preco := Validar.PontoVirgula(Preco);

        if Unidade = 'KG' then
           sBalanca := '1';

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption     := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if sBalanca = '1' then
        begin
          Unidade             := 'KG';
          Produto.sBalanca    := '1';
          Produto.cod         := Validar.gerarDigitoZero(Codigo, 7);
          Produto.codigoBarra := Validar.gerarDigitoZero(Codigo, 14);
        end
        else
        begin
          Unidade             := 'UN';
          Produto.sBalanca    := '0';

          {
          if length(Codigo) = 13 then
             Produto.cod := ProdutoRN.gerarCodigo
          else
          }

          if CODBARRA = '' then
             CODBARRA := Codigo;

          Produto.cod         := Validar.gerarDigitoZero(Codigo, 7);
          Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end;

        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
        }

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 0;
        if (StrToFloat(sPis) > 0) or (StrToFloat(sCofins) > 0) then
           Produto.PisCofins := 1;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.PercentBaseCalcIcms   := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.PercentBaseCalcIcms   := StrToFloat(removeNumero(sReducao));

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      //end;
      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');

end;

procedure TfrmPrincipal.Button43Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque: string;
  sBalanca, CST, NCM, CFOP, CODBARRA: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\Produtos.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 13989;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

      //if Codigo = '201480000' then
      //   ShowMessage(Codigo);

      if Codigo = 'FIM' then
         break;

      //if ehNumero(Codigo) and (System.Copy(Codigo, 1, 1) <> '2') then
      //begin
        CODBARRA   := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

        NCM        := '';
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        Descricao  := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        Unidade    := '';
        sBalanca   := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);
        Preco      := Validar.PontoVirgula(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));
        Estoque    := '0';
        Custo      := Validar.PontoVirgula(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));
        MLucro     := '0';
        sPisCofins := '0';

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption     := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if sBalanca = 'True' then
        begin
          Unidade             := 'KG';
          Produto.sBalanca    := '1';
          if CODBARRA <> '' then
             Produto.cod := Validar.gerarDigitoZero(System.Copy(CODBARRA, 3, 7), 7)
          else
             Produto.cod := Validar.gerarDigitoZero(Codigo, 7);

          Produto.codigoBarra := Validar.gerarDigitoZero(Produto.cod, 14);
        end
        else
        begin
          Unidade             := 'UN';
          Produto.sBalanca    := '0';

          if length(Codigo) = 13 then
             Produto.cod := ProdutoRN.gerarCodigo
          else
             Produto.cod := Validar.gerarDigitoZero(Codigo, 7);

          Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end;

        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
        }

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      //end;
      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');

end;

procedure TfrmPrincipal.Button44Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins: string;
  i, iPlanilha, CodigoDados, pessoaimpid: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, Cat, Lim, Email, Contato: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento, sStatus, Apel, RI, Obs, Nasc: string;
  sArquivo: string;

  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\Clientes.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

    Cat := '1';
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';

    ProgressBar.Max := 89;
    ProgressBar.Position := 0;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

        if Codigo = 'FIM' then
           break;

        Nome         := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        Apel         := Trim(Range['U' + IntToStr(I), 'U' + IntToStr(I)].Value2);
        Contato      := Trim(Range['V' + IntToStr(I), 'V' + IntToStr(I)].Value2);
        CpfCnpj      := removeNumero(Trim(Range['S' + IntToStr(I), 'S' + IntToStr(I)].Value2));
        DataCadastro := Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2);
        Lim          := '0';
        Email        := Trim(Range['N' + IntToStr(I), 'N' + IntToStr(I)].Value2);
        RI           := Trim(Range['T' + IntToStr(I), 'T' + IntToStr(I)].Value2);
        Obs          := '';
        Nasc         := '';

        sTipo := 'F';
        if Length(CpfCnpj) = 14 then
           sTipo := 'J';

        sFone    := removeNumero(Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2));
        sDDDCel  := '75';

        if Length(sFone) > 8 then
        begin
          sDDDCel  := Trim(System.Copy(sFone, 1, 2));
          sFONECel := Trim(System.Copy(sFone, 3, 20));
        end;

        sFone    := removeNumero(Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2));
        sDDDTel  := '75';

        if Length(sFone) > 8 then
        begin
          sDDDTel  := Trim(System.Copy(sFone, 1, 2));
          sFONETel := Trim(System.Copy(sFone, 3, 20));
        end;

        Logradouro   := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);
        Bairro       := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);
        Cidade       := 'ALAGOINHAS';
        Uf           := 'BA';
        Cep          := removeNumero(Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2));
        Numero       := Trim(Range['AC' + IntToStr(I), 'AC' + IntToStr(I)].Value2);
        Complemento  := Trim(Range['Y' + IntToStr(I), 'Y' + IntToStr(I)].Value2);

        CodigoImportacao := Codigo;

        ZQDados.Close;
        ZQDados.Open;

        while ProdutoRN.codigoExiste(Codigo) do
        begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;
          Codigo      := ZQDados.FieldByName('id').AsString;
        end;

        if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
        begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;

          if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
          begin
            ZQDados.Close;
            ZQDados.SQL.Clear;
            ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
            ZQDados.Open;

            CodigoDados := ZQDados.FieldByName('id').AsInteger;
          end;
        end
        else
          CodigoDados := StrToInt(Codigo);

        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

        if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
        begin
          ZQPessoaImp.Close;
          ZQPessoaImp.SQL.Clear;
          ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
          ZQPessoaImp.Open;

          pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
        end;

        ZQuery.Close;
        ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
        ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

        if DataCadastro = '' then
           ZQuery.ParamByName('cad').AsDate := Now
        else
           ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

        ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
        ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
        ZQuery.ExecSQL;

        Lim := '9999.99';

        ZQCli.Close;
        ZQCli.ParamByName('id').AsInteger             := CodigoDados;
        ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
        ZQCli.ExecSQL;

        ZQDV.Close;
        ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
        ZQDV.ParamByName('vinculoid').AsInteger := 1;
        ZQDV.ExecSQL;

        if Email <> '' then
        begin
          ZQEmail.Close;
          ZQEmail.ParamByName('descricao').AsString      := Email;
          ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
          ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
          ZQEmail.ExecSQL;
        end;

        begin
          ZQEND.Close;
          ZQEND.ParamByName('logradouro').AsString      := Logradouro;
          ZQEND.ParamByName('complemento').AsString     := Complemento;
          ZQEND.ParamByName('bairro').AsString          := Bairro;
          ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(Cidade, Uf);
          ZQEND.ParamByName('estado').AsString          := getCodigoUF(Uf);
          ZQEND.ParamByName('cep').AsString             := removeSONumero(Cep);
          ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
          ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
          ZQEND.ParamByName('paisid').AsInteger         := 1;
          ZQEND.ParamByName('isnotafiscal').AsString    := '0';
          ZQEND.ParamByName('numero').AsString          := Numero;
          ZQEND.ExecSQL;
        end;

        if Trim(sFONETel) <> '' then
        begin
          ZQTel.Close;
          ZQTel.ParamByName('ddd').Clear;
          ZQTel.ParamByName('numero').Clear;
          ZQTel.ParamByName('tipoenderecoid').Clear;
          ZQTel.ParamByName('dadosid').Clear;

          ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
          ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

          ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
          ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
          ZQTel.ExecSQL;
        end;

        if Trim(sFONECel) <> '' then
        begin
          ZQTel.Close;
          ZQTel.ParamByName('ddd').Clear;
          ZQTel.ParamByName('numero').Clear;
          ZQTel.ParamByName('tipoenderecoid').Clear;
          ZQTel.ParamByName('dadosid').Clear;

          ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
          ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

          ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
          ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
          ZQTel.ExecSQL;
        end;

        sStatus := '18';
        if Cat = '4' then
           sStatus := '19';

        if sTipo = 'F' then
        begin
          ZQPF.Close;
          ZQPF.ParamByName('id').AsInteger         := CodigoDados;
          ZQPF.ParamByName('nome').AsString        := Trim(Nome);
          ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
          ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
          ZQPF.ParamByName('obs').AsString         := Obs;
          ZQPF.ParamByName('tipocliente').AsString := '0';
          if Nasc = '' then
             ZQPF.ParamByName('datanascimento').Clear
          else
             ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

          ZQPF.ParamByName('rg').AsString := removeNumero(RI);

          ZQPF.ParamByName('sexo').Clear;
          ZQPF.ExecSQL;
        end;

        if sTipo = 'J' then
        begin
          ZQPJ.Close;
          ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
          ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
          ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
          ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
          ZQPJ.ParamByName('contato').AsString            := '';
          ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
          ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
          ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
          ZQPJ.ParamByName('obs').AsString                := Obs;
          ZQPJ.ParamByName('tipocliente').AsString        := '0';
          ZQPJ.ExecSQL;
        end;

        Obs     := '';
        sStatus := '';

        ProgressBar.Position := i;
    end;
  end;
  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.Button45Click(Sender: TObject);
var
  ProdutoRN: TProdutoRN;
begin
  ProdutoRN := TProdutoRN.Create;
  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Text :=
  'select * from produto where codigo IN(   '+
  'select produto.codigo from produto       '+
  'group by codigo                          '+
  'having count(*) > 1) and balanca = ''0'' ';
  zGet.Open;

  ProgressBar.Max := zGet.RecordCount;

  zSet.Close;
  zSet.SQL.Clear;
  zSet.SQL.Text := 'update produto set codigo =:codigo where id =:id ';

  while not zGet.Eof do
  begin
    zSet.Close;
    zSet.ParamByName('codigo').AsString := ProdutoRN.gerarCodigo;
    zSet.ParamByName('id').AsInteger    := zGet.FieldByName('id').AsInteger;
    zSet.ExecSQL;

    ProgressBar.Position := ProgressBar.Position + 1;

    zGet.Next;
  end;
  ProdutoRN.Free;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.Button46Click(Sender: TObject);
var
  Codigo, Descricao: string;
  i: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Validar: TValidar;
  Zget: TZQuery;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  Zget := TZQuery.Create(ZQuery);
  Zget.Connection := frmPrincipal.ZConnection;

  Xls_To_StringGrid(StringGrid1, ExtractFilePath(Application.ExeName) +'xls\SECAO.xls');

  ProgressBar.Position := 0;
  ProgressBar.Max      := 15;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  for i := 0 to StringGrid1.RowCount - 1 do
  begin
    if i > 0 then
    begin
      Codigo    := StringGrid1.Cells[0, i];
      Descricao := StringGrid1.Cells[1, i];

      if Codigo = '' then
         break;

      Zget.Close;
      Zget.SQL.Clear;
      Zget.SQL.Text := 'insert into secao(id, descricao)values('''+Codigo+''', '''+Descricao+''')';
      Zget.ExecSQL;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
  Zget.close;
  Zget.Free;
end;

procedure TfrmPrincipal.Button47Click(Sender: TObject);
var
  Codigo, Descricao, Secao: string;
  i: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Validar: TValidar;
  Zget: TZQuery;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  Zget := TZQuery.Create(ZQuery);
  Zget.Connection := frmPrincipal.ZConnection;

  Xls_To_StringGrid(StringGrid1, ExtractFilePath(Application.ExeName) +'xls\SUBSECAO.xls');

  ProgressBar.Position := 0;
  ProgressBar.Max      := 15;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  for i := 0 to StringGrid1.RowCount - 1 do
  begin
    if i > 0 then
    begin
      Codigo    := StringGrid1.Cells[0, i];
      Descricao := StringGrid1.Cells[1, i];
      Secao     := StringGrid1.Cells[2, i];

      if Codigo = '' then
         break;

      Zget.Close;
      Zget.SQL.Clear;
      Zget.SQL.Text :=
      'insert into subsecao(id, descricao, secaoid, tabelaimpostosid ) '+
      'values ('''+Codigo+''', '''+Descricao+''', '''+Secao+''', 0)';
      Zget.ExecSQL;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
  Zget.close;
  Zget.Free;
end;

procedure TfrmPrincipal.Button48Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo, GRUPO: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorCompra: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\PRODUTOSLR.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 11843;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := removeApost(UpperCase(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2)));

      if Descricao = '' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        CODBARRA    := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        Unidade     := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        GRUPO       := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        cValorVenda := Validar.StrToCurrency(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        Estoque     := '0';
        cValorCompra:= 0;
        cCusto      := 0;

        MLucro      := '0';
        SubSecao    := '3';
        CST         := '000';

        NCM         := '99999999';
        sMarca      := '9';
        CFOP        := '';

        if CST = '000' then
           Aliquota := '18';

         if (CST = '060') or (CST = '040') then
           Aliquota := '0';

        Preco         := Validar.PontoVirgula(CurrToStr(cValorVenda));
        Custo         := Validar.PontoVirgula(CurrToStr(cCusto));

        sPisCofins    := '0';
        EstoqueMinimo := '0';

        cAvista       := 0;
        cAprazo       := 0;

        Produto.unidade.codigo := '2';
        Produto.sBalanca       := '0';

        if (Unidade = 'CX') then
          Produto.unidade.codigo := '4';

        if (Unidade = 'DZ') then
          Produto.unidade.codigo := '9';

        if (Unidade = 'ML') then
          Produto.unidade.codigo := '13';

        if (Unidade = 'PC') then
          Produto.unidade.codigo := '7';

        if (Unidade = 'QT') then
          Produto.unidade.codigo := '12';

        if (Unidade = 'KG') then
        begin
          Produto.unidade.codigo := '1';
          Produto.sBalanca       := '1';
        end;

        sMsg := 'PRODUTO: C�DIGO '+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Validar.gerarDigitoZero(Codigo, 7);
        Produto.codigoBarra        := Validar.gerarDigitoZero(CODBARRA, 14);
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := GRUPO;
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := StrToInt(SubSecao);
        Produto.valorCompra           := cValorCompra;
        Produto.CustoMedio            := cCusto;
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.desconto              := 0;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.Button49Click(Sender: TObject);
var
  Codigo, Descricao: string;
  i: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Validar: TValidar;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('insert into tipoproduto(descricao, codigo) ');
  ZQuery.SQL.Add('values (:descricao, :codigo)               ');

  Xls_To_StringGrid(StringGrid1, ExtractFilePath(Application.ExeName) +'xls\GRUPOLR.xls');

  ProgressBar.Position := 0;
  ProgressBar.Max      := 33;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  for i := 0 to StringGrid1.RowCount - 1 do
  begin
    if i > 0 then
    begin
      Descricao := Trim(StringGrid1.Cells[0, i]);
      Codigo    := Trim(StringGrid1.Cells[1, i]);

      if Codigo = '' then
         break;

      ZQuery.Close;
      ZQuery.ParamByName('descricao').AsString := Descricao;
      ZQuery.ParamByName('codigo').AsString    := Validar.gerarDigitoZero(removeNumero(Codigo), 4);
      ZQuery.ExecSQL;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');

end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CnpjCpf, Pessoa: string;
  DataCadastro, Endereco, Bairro : string;
  Email, Cep, Fone, Fax, sTipo, sFone, sNumero: string;
  Limite: double;
  ColunaA, ColunaF: string;
  bImportou: boolean;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
begin
  try
  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;

  ZConnection.StartTransaction;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +
  'Recebidos_02_1.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  for iPlanilha := 1 to 254 do
  begin
    bImportou := true;
    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        ColunaF := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);

        if Trim(ColunaA) = 'G-Flux' then
           break;

        if (Trim(ColunaA) = 'Ordem :') and (Pessoa <> Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2)) then
        begin
          Pessoa := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          if Pessoa = 'CLIENTE PADRAO' then
             CodigoDados := 1426
          else
          begin
            ZQDados.Close;
            ZQDados.ParamByName('nome').AsString := Pessoa;
            ZQDados.Open;

            CodigoDados := ZQDados.FieldByName('id').AsInteger;
          end;
        end;

        if Trim(ColunaA) = 'SS' then
        begin
          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := 6;
          if Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2) = 'CARTAO CREDITO' then
             iModPgto := 1;

          if Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2) = 'DINHEIRO' then
             iModPgto := 5;

          if Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2) = 'CARTAO DEBITO' then
             iModPgto := 7;

          if Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2) = 'PROMISSORIA' then
             iModPgto := 6;
          
          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;

          sValor := removeSifra(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);

          if sValor = '' then
             sValor := removeSifra(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);

          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(sValor);
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;
          Parcela.parcelas[iTamArray-1].dt_Pgto          := Now;

          if Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2 <> '' then
             Parcela.parcelas[iTamArray-1].dt_vencimento := StrToDate(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

          if Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2 <> '' then
          begin
            Parcela.parcelas[iTamArray-1].dt_Pgto := StrToDate(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
            DataVenc                              := StrToDate(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          end;

          sPedidoArqHis := Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2;
          sStatus := '2';
          Parcela.parcelas[iTamArray-1].Status.codigo := StrToInt(sStatus);
          Inc(iNParcela);
        end;

        if Trim(ColunaF) = 'Sub-Total :' then
        begin
          Parcela.Titulo.Cmf.codigo           := 3;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := sPedidoArqHis;
          Parcela.Titulo.status.codigo        := 2;
          Parcela.Titulo.vl_titulo            := Validar.StrToCurrency(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := 'importa��o';

          Parcela.Titulo.dados.codigo   := CodigoDados;
          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          for iTamArray := 0 to Length(Parcela.parcelas) - 1 do
          begin
            RegistroBaixa.parcela.codigo              := Parcela.codigo;
            RegistroBaixa.parcela.Titulo.prepagamento := '';
            RegistroBaixa.parcela.vl_parcela          := Parcela.parcelas[iTamArray].vl_parcela;
            RegistroBaixa.dt_pagamento                := Parcela.parcelas[iTamArray].dt_Pgto;
            RegistroBaixa.no_transacao                := Validar.gerarDigitoZero(IntToStr(Parcela.parcelas[iTamArray].codigo), 8);
            RegistroBaixa.historico                   := '';
            RegistroBaixa.status.codigo               := Parcela.parcelas[iTamArray].Status.codigo;
            RegistroBaixa.parcela.Titulo.modalidadePagamento.codigo := Parcela.Titulo.modalidadePagamento.codigo;

            RegistroBaixaRN.baixarParcela(RegistroBaixa);
          end;

          iNParcela := 1;
          iTamArray := 0;
        end;

     end;
    end;
  end;
  ZConnection.Commit;
  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;
end;

function TfrmPrincipal.removeSifra(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '0123456789,';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;
end;

function TfrmPrincipal.removeSONumero(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '0123456789';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;
 end;

procedure TfrmPrincipal.TrimAppMemorySize;
var
  MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except

  end;
end;

function TfrmPrincipal.Xls_To_StringGrid(AGrid: TStringGrid;
  AXLSFile: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r: Integer;
begin
  Result := False;
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(AXLSFile);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column;

    // Set Stringgrid's row &col dimensions.

    AGrid.RowCount := x;
    AGrid.ColCount := y;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;
    //  Define the loop for filling in the TStringGrid
    k := 1;
    repeat
      for r := 1 to y do
        AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[K, R];
      Inc(k, 1);
      AGrid.RowCount := k + 1;
    until k > x;
    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
      Result := True;
    end;
  end;

end;

procedure TfrmPrincipal.Button50Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo, GRUPO, FAMILIA, CEST: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorCompra: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\PRODUTOS.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 611;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := removeApost(UpperCase(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2)));

      if Descricao = '' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        CODBARRA    := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        Unidade     := '';

        GRUPO       := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        FAMILIA     := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        SubSecao    := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);

        Estoque     := Validar.PontoVirgula(Trim(Range['W' + IntToStr(I), 'W' + IntToStr(I)].Value2));
        Preco       := Validar.PontoVirgula(Trim(Range['Y' + IntToStr(I), 'Y' + IntToStr(I)].Value2));
        cValorCompra:= StrToCurr( Validar.PontoVirgula(Trim(Range['X' + IntToStr(I), 'X' + IntToStr(I)].Value2)));
        Custo       := Validar.PontoVirgula(Trim(Range['X' + IntToStr(I), 'X' + IntToStr(I)].Value2));

        MLucro      := '0';
        CST         := Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2);

        NCM         := Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2);
        CEST        := Trim(Range['Z' + IntToStr(I), 'Z' + IntToStr(I)].Value2);
        sMarca      := '9';
        CFOP        := '';

        if CST = '000' then
           Aliquota := '18';

        if (CST = '060') or (CST = '040') then
           Aliquota := '0';

        sPisCofins    := '0';
        EstoqueMinimo := '0';

        cAvista       := 0;
        cAprazo       := 0;

        Produto.unidade.codigo := '2';
        Produto.sBalanca       := '0';

        sMsg := 'PRODUTO: C�DIGO '+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Validar.gerarDigitoZero(Codigo, 7);
        Produto.codigoBarra        := Validar.gerarDigitoZero(CODBARRA, 14);
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.CEST               := CEST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := IntToStr(gettGRUPO(GRUPO));
        Produto.sFamilia              := IntToStr(getFamilia(FAMILIA));
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := getSusbSecao(SubSecao);
        Produto.valorCompra           := cValorCompra;
        Produto.CustoMedio            := cCusto;
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.desconto              := 0;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');

end;

procedure TfrmPrincipal.Button51Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, sMarca, sRef, sRef2: string;
  i, iPlanilha, CodigoDados, pessoaimpid: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento: string;
  sArquivo, Contato, CODBARRA: string;

  dtCadastro: TDate;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
begin
  Produto              := TProduto.Create;
  ProdutoRN            := TProdutoRN.Create;
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;

  try
    Cat := '1';
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';
    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Text := 'select * from endereco where dadosid = 1428';
    ZQUPEND.Open;

    ProgressBar.Position := 0;

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\CLIENTES.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      Codigo    := Trim(StringGrid1.Cells[0, i]);
      Nome      := Trim(StringGrid1.Cells[1, i]);
      CpfCnpj   := '';
      Descricao := '';

      if Nome = 'NOME DO CLIENTE' then
         Nome := '';

      DataCadastro := '';
      Cat          := '1';
      sTipo        := 'F';

      if Nome = '' then
         Break;

      Apel         := Trim(StringGrid1.Cells[2, i]);
      Contato      := '';
      CpfCnpj      := removeNumero(Trim(StringGrid1.Cells[10, i]));
      DataCadastro := DateToStr(Now);
      Lim          := Validar.PontoVirgula(Trim(StringGrid1.Cells[19, i]));
      Email        := Trim(StringGrid1.Cells[16, i]);
      RI           := Trim(StringGrid1.Cells[17, i]);
      Obs          := '';
      Nasc         := '';

      if Lim = '' then
         Lim := '0';

      sTipo := 'F';
      if Length(CpfCnpj) = 14 then
         sTipo := 'J';

      sFone    := removeNumero(Trim(StringGrid1.Cells[12, i]));
      sDDDCel  := '75';

      if Length(sFone) > 8 then
      begin
        sDDDCel  := Trim(System.Copy(sFone, 1, 2));
        sFONECel := Trim(System.Copy(sFone, 3, 20));
      end;

      sFone    := removeNumero(Trim(StringGrid1.Cells[14, i]));
      sDDDTel  := '75';

      if Length(sFone) > 8 then
      begin
        sDDDTel  := Trim(System.Copy(sFone, 1, 2));
        sFONETel := Trim(System.Copy(sFone, 3, 20));
      end;

      Logradouro   := Trim(StringGrid1.Cells[3, i]);
      Bairro       := Trim(StringGrid1.Cells[4, i]);
      Cidade       := Trim(StringGrid1.Cells[5, i]);
      Uf           := Trim(StringGrid1.Cells[6, i]);
      Cep          := removeNumero(Trim(StringGrid1.Cells[7, i]));
      Numero       := Trim(StringGrid1.Cells[8, i]);
      Complemento  := Trim(StringGrid1.Cells[9, i]);

      CodigoImportacao := Codigo;

      ZQDados.Close;
      ZQDados.Open;

      while ProdutoRN.codigoExiste(Codigo) do
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;
        Codigo      := ZQDados.FieldByName('id').AsString;
      end;

      if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;

        if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
        begin
          ZQDados.Close;
          ZQDados.SQL.Clear;
          ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;
        end;
      end
      else
        CodigoDados := StrToInt(Codigo);

      ZQPessoaImp.Close;
      ZQPessoaImp.SQL.Clear;
      ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
      ZQPessoaImp.Open;

      pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

      if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
      begin
        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
      end;

      ZQuery.Close;
      ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
      ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

      if DataCadastro = '' then
         ZQuery.ParamByName('cad').AsDate := Now
      else
         ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

      ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
      ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
      ZQuery.ExecSQL;

      ZQCli.Close;
      ZQCli.ParamByName('id').AsInteger             := CodigoDados;
      ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
      ZQCli.ExecSQL;

      ZQDV.Close;
      ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
      ZQDV.ParamByName('vinculoid').AsInteger := 1;
      ZQDV.ExecSQL;

      if Email <> '' then
      begin
        ZQEmail.Close;
        ZQEmail.ParamByName('descricao').AsString      := Email;
        ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
        ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEmail.ExecSQL;
      end;

      begin
        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := Logradouro;
        ZQEND.ParamByName('complemento').AsString     := Complemento;
        ZQEND.ParamByName('bairro').AsString          := Bairro;
        ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(Cidade, Uf);
        ZQEND.ParamByName('estado').AsString          := getCodigoUF(Uf);
        ZQEND.ParamByName('cep').AsString             := removeSONumero(Cep);
        ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := 1;
        ZQEND.ParamByName('isnotafiscal').AsString    := '0';
        ZQEND.ParamByName('numero').AsString          := Numero;
        ZQEND.ExecSQL;
      end;

      if Trim(sFONETel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      if Trim(sFONECel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      sStatus := '18';
      if Cat = '4' then
         sStatus := '19';

      if sTipo = 'F' then
      begin
        ZQPF.Close;
        ZQPF.ParamByName('id').AsInteger         := CodigoDados;
        ZQPF.ParamByName('nome').AsString        := Trim(Nome);
        ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
        ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
        ZQPF.ParamByName('obs').AsString         := Obs;
        ZQPF.ParamByName('tipocliente').AsString := '0';
        if Nasc = '' then
           ZQPF.ParamByName('datanascimento').Clear
        else
           ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

        ZQPF.ParamByName('rg').AsString := removeNumero(RI);

        ZQPF.ParamByName('sexo').Clear;
        ZQPF.ExecSQL;
      end;

      if sTipo = 'J' then
      begin
        ZQPJ.Close;
        ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
        ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
        ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
        ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
        ZQPJ.ParamByName('contato').AsString            := '';
        ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
        ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
        ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
        ZQPJ.ParamByName('obs').AsString                := Obs;
        ZQPJ.ParamByName('tipocliente').AsString        := '0';
        ZQPJ.ExecSQL;
      end;

      Obs     := '';
      sStatus := '';

      ProgressBar.Position := i;
    end;
    ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo+'-'+Nome);
    end;
  end;
end;

procedure TfrmPrincipal.Button52Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, sMarca, sRef, sRef2: string;
  i, iPlanilha, CodigoDados, pessoaimpid, i3142628: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento: string;
  sArquivo, Contato, CODBARRA: string;

  sAno, sMes, sDia: string;

  dtCadastro: TDate;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
begin
  Produto              := TProduto.Create;
  ProdutoRN            := TProdutoRN.Create;
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;

  try
    Cat := '1';
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';
    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Text := 'select * from endereco where dadosid = 1428';
    ZQUPEND.Open;

    ProgressBar.Position := 0;

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Fornecedores.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      sDia      := Trim(StringGrid1.Cells[0, i]);
      Codigo    := Trim(StringGrid1.Cells[0, i]);
      Nome      := Trim(StringGrid1.Cells[11, i]);
      Apel      := Trim(StringGrid1.Cells[15, i]);
      Contato   := Trim(StringGrid1.Cells[21, i]);
      CpfCnpj   := removeNumero(Trim(StringGrid1.Cells[1, i]));
      Descricao := '';

      if Codigo = 'FIM' then
         break;
      if ehNumero(Codigo) then
      begin
      if Nome = 'NOME DO CLIENTE' then
         Nome := '';

      DataCadastro := '';
      Cat          := '1';
      sTipo        := UpperCase(Trim(StringGrid1.Cells[2, i]));

      if Nome = '' then
         Break;

      DataCadastro := DateToStr(Now);

      Lim          := '0';
      Email        := LowerCase(Trim(StringGrid1.Cells[15, i]));
      RI           := Trim(StringGrid1.Cells[17, i]);
      Obs          := '';
      Nasc         := '';

      if Lim = '' then
         Lim := '0';

      //sTipo := 'F';
      //if Length(CpfCnpj) = 14 then
      //   sTipo := 'J';

      sFone    := removeNumero(Trim(StringGrid1.Cells[13, i]));
      sDDDCel  := '75';

      if Length(sFone) > 8 then
      begin
        sDDDCel  := Trim(System.Copy(sFone, 1, 2));
        sFONECel := Trim(System.Copy(sFone, 3, 20));
      end;

      sFone    := removeNumero(Trim(StringGrid1.Cells[9, i]));
      sDDDTel  := '75';

      if Length(sFone) > 8 then
      begin
        sDDDTel  := Trim(System.Copy(sFone, 1, 2));
        sFONETel := Trim(System.Copy(sFone, 3, 20));
      end;

      Logradouro   := Trim(StringGrid1.Cells[5, i]);
      Bairro       := Trim(StringGrid1.Cells[6, i]);
      Cidade       := Trim(StringGrid1.Cells[8, i]);
      Uf           := Trim(StringGrid1.Cells[7, i]);
      Cep          := removeNumero(Trim(StringGrid1.Cells[12, i]));
      Numero       := Trim(StringGrid1.Cells[19, i]);
      Complemento  := Trim(StringGrid1.Cells[10, i]);

      if Numero = '' then
         Numero := 'S/N';

      CodigoImportacao := Codigo;

      ZQDados.Close;
      ZQDados.Open;

       while ProdutoRN.codigoExiste(Codigo) do
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;
        Codigo      := ZQDados.FieldByName('id').AsString;
      end;

      if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
      begin
        i3142628    := i3142628 + 1;
        CodigoDados := i3142628;
        pessoaimpid := i3142628;
      end
      else
        CodigoDados := StrToInt(Codigo);

      ZQuery.Close;
      ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
      ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

      if DataCadastro = '' then
         ZQuery.ParamByName('cad').AsDate := Now
      else
         ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

      ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
      ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
      ZQuery.ExecSQL;

      ZQCli.Close;
      ZQCli.ParamByName('id').AsInteger             := CodigoDados;
      ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
      ZQCli.ExecSQL;

      ZQDV.Close;
      ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
      ZQDV.ParamByName('vinculoid').AsInteger := 4;
      ZQDV.ExecSQL;

      if Email <> '' then
      begin
        ZQEmail.Close;
        ZQEmail.ParamByName('descricao').AsString       := Email;
        ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
        ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEmail.ExecSQL;
      end;

      begin
        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := Logradouro;
        ZQEND.ParamByName('complemento').AsString     := Complemento;
        ZQEND.ParamByName('bairro').AsString          := Bairro;
        ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(Cidade, Uf);
        ZQEND.ParamByName('estado').AsString          := getCodigoUF(Uf);
        ZQEND.ParamByName('cep').AsString             := removeSONumero(Cep);
        ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := 1;
        ZQEND.ParamByName('isnotafiscal').AsString    := '0';
        ZQEND.ParamByName('numero').AsString          := Numero;
        ZQEND.ExecSQL;
      end;

      if Trim(sFONETel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      if Trim(sFONECel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      sStatus := '18';
      if Cat = '4' then
         sStatus := '19';

      if sTipo = 'F' then
      begin
        ZQPF.Close;
        ZQPF.ParamByName('id').AsInteger         := CodigoDados;
        ZQPF.ParamByName('nome').AsString        := Trim(Nome);
        ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
        ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
        ZQPF.ParamByName('obs').AsString         := Obs;
        ZQPF.ParamByName('tipocliente').AsString := '0';
        if Nasc = '' then
           ZQPF.ParamByName('datanascimento').Clear
        else
           ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

        ZQPF.ParamByName('rg').AsString := removeNumero(RI);

        ZQPF.ParamByName('sexo').Clear;
        ZQPF.ExecSQL;
      end;

      if sTipo = 'J' then
      begin
        ZQPJ.Close;
        ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
        ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
        ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
        ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
        ZQPJ.ParamByName('contato').AsString            := '';
        ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
        ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
        ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
        ZQPJ.ParamByName('obs').AsString                := Obs;
        ZQPJ.ParamByName('tipocliente').AsString        := '0';
        ZQPJ.ExecSQL;
      end;
      end;

      Obs     := '';
      sStatus := '';

       ProgressBar.Position := ProgressBar.Position + 1;
    end;
    ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+sDia+'-'+Nome);
    end;
  end;
end;

procedure TfrmPrincipal.Button53Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo, GRUPO, FAMILIA, CEST: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorCompra: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;
  try
  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\PRODUTOS.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 4046;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := removeApost(UpperCase(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2)));

      if Descricao = '' then
         break;

      if not getExisteCodigoProduto(Codigo) then
      begin
        CODBARRA := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        if CODBARRA = '' then
           CODBARRA := Codigo;

        Unidade     := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

        GRUPO       := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        FAMILIA     := '1';
        SubSecao    := '3';

        Estoque     := '0';
        Preco       := Validar.PontoVirgula(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        cValorCompra:= StrToCurr( Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2)));
        Custo       := Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));

        MLucro      := '0';
        CST         := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);

        NCM         := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);
        CEST        := '';
        sMarca      := '9';
        CFOP        := '';

        if CST = '000' then
           Aliquota := '18';

        if (CST = '060') or (CST = '040') then
           Aliquota := '0';

        sPisCofins    := '0';
        EstoqueMinimo := '0';

        cAvista       := 0;
        cAprazo       := 0;

        Produto.unidade.codigo := IntToStr(getUnidade(Unidade));
        Produto.sBalanca       := '0';

        sMsg := 'PRODUTO: C�DIGO '+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Validar.gerarDigitoZero(Codigo, 7);
        Produto.codigoBarra        := Validar.gerarDigitoZero(CODBARRA, 14);
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.CEST               := CEST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := GRUPO;
        Produto.sFamilia              := FAMILIA;
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := StrToInt(SubSecao);
        Produto.valorCompra           := cValorCompra;
        Produto.CustoMedio            := cCusto;
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.desconto              := 0;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo);
    end;
  end;
end;

procedure TfrmPrincipal.Button54Click(Sender: TObject);
var
  I: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha: integer;
  ColunaA, ColunaF: string;
begin
  try
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;

    WKBK := ExcelApplication1.Workbooks.Open(

    ExtractFilePath(Application.ExeName) + 'xls\GRUPO.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into tipoproduto(descricao, codigo) ');
    ZQuery.SQL.Add('values (:descricao, :codigo)               ');

    for iPlanilha := 1 to 1 do
    begin
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 1 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          if ColunaA = '' then
             break;

          if ehNumero(removeNumero(ColunaA)) and (ColunaF <>'') then
          begin
            ZQuery.Close;
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ParamByName('codigo').AsString    := Validar.gerarDigitoZero(removeNumero(ColunaA), 4);
            ZQuery.ExecSQL;
          end;
        end;
    end;
    end;

    ShowMessage('Importou!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.Button55Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, sMarca, sRef, sRef2: string;
  i, iPlanilha, CodigoDados, pessoaimpid: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, DataNasc, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento: string;
  sArquivo, Contato, CODBARRA: string;

  dtCadastro: TDate;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
begin
  Produto              := TProduto.Create;
  ProdutoRN            := TProdutoRN.Create;
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;

  try
    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ProgressBar.Position := 0;

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\CLIENTES_FONES.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      if Trim(StringGrid1.Cells[0, i]) = '' then
         break;

      CodigoDados := StrToInt(Trim(StringGrid1.Cells[0, i]));
      sDDDCel     := removeNumero(Trim(StringGrid1.Cells[2, i]));
      sFone       := removeNumero(Trim(StringGrid1.Cells[3, i]));
      Cat         := '1';

      if System.Copy(sFone,1,1) = '0' then
         Delete(sFone, 1 ,1);

      if Trim(StringGrid1.Cells[1, i]) = 'Residencial'  then
         Cat := '1';

      if Trim(StringGrid1.Cells[1, i]) = 'Comercial'  then
         Cat := '2';

      if Trim(StringGrid1.Cells[1, i]) = 'Celular'  then
         Cat := '3';

      if Length(sFone) > 8 then
      begin
        sDDDCel  := Trim(System.Copy(sFone, 1, 2));
        sFONECel := Trim(System.Copy(sFone, 3, 8));
      end
      else
        sFONECel := sFone;

      if sDDDCel = '' then
         sDDDCel := '74';

      if Trim(sFONECel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := StrToInt(Cat);
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      ProgressBar.Position := i;
    end;
    ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+IntToStr(CodigoDados));
    end;
  end;
end;

procedure TfrmPrincipal.Button56Click(Sender: TObject);
var
  Validar: TValidar;
  sArquivo: string;
  iIndex: integer;
  codigo, descricao, grupo, familia, subgrupo, subsubgrupo, unidadegrandeza, unidademedida: string;
begin
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;
  try
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into anp(codigo, descricao, grupo, familia, subgrupo, subsubgrupo, unidadegrandeza, unidademedida) ');
    ZQuery.SQL.Add('values(:codigo, :descricao, :grupo, :familia, :subgrupo, :subsubgrupo, :unidadegrandeza, :unidademedida)   ');

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\ANP.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max  := StringGrid1.RowCount;
    lbstatus.Caption := '';
    lbstatus.Visible := true;
    for iIndex := 2 to StringGrid1.RowCount - 1 do
    begin
      familia         := Trim(StringGrid1.Cells[0, iIndex]);
      grupo           := Trim(StringGrid1.Cells[1, iIndex]);
      subgrupo        := Trim(StringGrid1.Cells[2, iIndex]);
      subsubgrupo     := Trim(StringGrid1.Cells[3, iIndex]);
      descricao       := Trim(StringGrid1.Cells[4, iIndex]);
      codigo          := Trim(StringGrid1.Cells[5, iIndex]);
      unidadegrandeza := Trim(StringGrid1.Cells[6, iIndex]);
      unidademedida   := Trim(StringGrid1.Cells[7, iIndex]);

      lbstatus.Caption := codigo;
      Application.ProcessMessages;

      ZQuery.Close;
      ZQuery.ParamByName('familia').AsString         := familia;
      ZQuery.ParamByName('codigo').AsString          := codigo;
      ZQuery.ParamByName('descricao').AsString       := descricao;
      ZQuery.ParamByName('grupo').AsString           := grupo;
      ZQuery.ParamByName('subgrupo').AsString        := subgrupo;
      ZQuery.ParamByName('subsubgrupo').AsString     := subsubgrupo;
      ZQuery.ParamByName('unidadegrandeza').AsString := unidadegrandeza;
      ZQuery.ParamByName('unidademedida').AsString   := unidademedida;
      ZQuery.ExecSQL;

      ProgressBar.Position := iIndex;
    end;
    ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo);
    end;
  end;

end;

procedure TfrmPrincipal.Button57Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Agen,	Conta: string;
  DtDoc,	DtVenc: TDate;
  VlDoc: string;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
begin
  try
  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;

  WKBK := ExcelApplication1.Workbooks.Open(ExtractFilePath(Application.ExeName) +'xls\CRAberto.xls',
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;

  for iPlanilha := 1 to 1 do
  begin
    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      ProgressBar.Max := Rows.Count;
      for i := 2 to Rows.Count do
      begin
        Codigo  := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

        if Codigo = '' then
           break;

        if ehNumero(Codigo) then
        begin
          Doc := '';

          if Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2) <> '' then
             DtDoc   := Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2;

          if Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2) <> '' then
             DtVenc  := Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2;

          VlDoc := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto := 6;
          if Doc = 'NP' then
             iModPgto := 6;
          if Doc = 'DEP' then
             iModPgto  := 16;
          if Doc = 'VAL' then
             iModPgto  := 8;
          if Doc = 'DUP' then
             iModPgto  := 9;
          if Doc = 'CHP' then
             iModPgto  := 4;
          if Doc = 'CA' then
             iModPgto  := 1;
          if Doc = 'CHE' then
             iModPgto  := 11;
          if (Doc = 'DIN') or (Doc='DCC') or (Doc='DIV') or (Doc='BBB')then
             iModPgto  := 5;

          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;

          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          Parcela.parcelas[iTamArray-1].dt_vencimento    := DtVenc;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
          DataVenc                                       := DtDoc;

          Parcela.parcelas[iTamArray-1].Status.codigo := 1;

          Parcela.Titulo.Cmf.codigo           := 3;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := Doc;
          Parcela.Titulo.status.codigo        := 1;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := 'importa��o';

          Parcela.Titulo.dados.codigo   := getIdPessoa(Codigo);
          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          if Parcela.Titulo.dados.codigo <> 0 then
             Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          iNParcela := 1;
          iTamArray := 0;
          Codigo    := '';

          ProgressBar.Position := i;
        end;

      end;

    end;

    if iPlanilha = 1 then
       Break;

  end;
  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
  LCID     := GetUserDefaultLCID;
  Validar  := TValidar.Create;
  Produto  := TProduto.Create;
  ProdutoRN:= TProdutoRN.Create;

  ZConnection.StartTransaction;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +
  'Produto_06_1.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  for iPlanilha := 1 to 229 do
  begin
    bImportou := true;
    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        ColunaF := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);

        if Trim(ColunaA) = 'G-Flux' then
           break;

        if (Trim(ColunaA) = 'Codigo:') then
        begin
          Codigo      := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          CodigoBarra := Validar.gerarDigitoZero(Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2),14);
          Nome        := Trim(Range['L' + IntToStr(I), 'L' + IntToStr(I)].Value2);
        end;

        if Trim(ColunaA) = 'Sub-Grupo:' then
        begin
          SubGrupo := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          Marca    := Trim(Range['O' + IntToStr(I), 'O' + IntToStr(I)].Value2);
        end;

        if Trim(ColunaA) = 'Cst:' then
        begin
          Cst          := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
          IcmsAliquota := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);
        end;

        if Trim(ColunaA) = 'Pis/Cofins:' then
        begin
          PrecoVenda := removeSifra(Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2));

          sBalanca               := '0';
          Produto.unidade.codigo := '2';
          if Trim(Range['T' + IntToStr(I), 'T' + IntToStr(I)].Value2) = 'S' then
          begin
            sBalanca               := '1';
            Produto.unidade.codigo := '1';
          end;

          Produto.codigoBarra       := '';
          Produto.codigoBarraImport := Validar.gerarDigitoZero(CodigoBarra, 14);
          Produto.cod             := Codigo;
          Produto.descricaoFiscal := removeApost(Nome);
          Produto.CST             := Cst;
          Produto.AliquotaIcms    := StrToFloat(IcmsAliquota);
          //Produto.valor           := Validar.VirgulaPonto(PrecoVenda);
          Produto.lote            := '';
          Produto.TipoProduto.codigo := '1006';
          Produto.garantia           := '0';
          Produto.subsecao.codigo    := 3;
          Produto.acresextra1 := 0;
          Produto.acresextra2 := 0;
          Produto.acresextra3 := 0;
          Produto.acresreal1  := 0;
          Produto.acresreal2  := 0;
          Produto.acresreal3  := 0;
          Produto.extra1      := 0;
          Produto.extra2      := 0;
          Produto.extra3      := 0;
          Produto.extrareal1  := 0;
          Produto.extrareal2  := 0;
          Produto.extrareal3  := 0;
          Produto.valorCompra := 0;
          Produto.comissaoValor := 0;
          Produto.estoqueminimo := 0;
          Produto.estoquemaximo := 0;
          Produto.comissaoPercentual := 0;
          Produto.descontoMaximo     := 0;
          Produto.bCalcIcms          := 0;
          Produto.bCalcIcmsSubs      := 0;
          Produto.AliquotaIpi        := 0;
          Produto.Status.codigo      := 29;
          Produto.sVendaDiferenciada := '0';
          Produto.sConstanteCalculo  := '0';
          Produto.sReferencia        := '';
          Produto.sIPPT              := 'T';
          Produto.NCM                := '';
          Produto.sBalanca           := sBalanca;

          ProdutoRN.InsertOrUpdate(Produto, '');

          //ProdutoRN.editar(Produto);
          
       end;

      end;
    end;
  end;

  ShowMessage('Importou');
  except
    on E:Exception do
    begin
      ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;
end;

function TfrmPrincipal.removeApost(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := 'ABCDEFGHIJLMNOPQRSTUVXZKYW�-/0123456789.,\+() ';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (sString[i] = aNum[x]) then
          sNum := sNum + sString[i];
    end;
  end;

  result := sNum;
end;

function TfrmPrincipal.getNome(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '   ';

  sNum := '';
  x    := 0;
  for i := 1 to Length(sString) do
  begin
    if sString[i] = ' ' then
       Inc(x)
    else
       x := 0;

    if x = 4 then
    begin
      x := 0;
      break;
    end;

    sNum := sNum + sString[i];
  end;

  result := sNum;
end;

function TfrmPrincipal.getLim(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '-0123456789,';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
var
  sNumero, sNum: string;
  Validar: TValidar;
begin
  try
    Button6.Enabled := false;

    Validar := TValidar.Create;
    ZQEND.Close;
    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('select * from cidade');

    ZQEND1.Close;
    ZQEND1.SQL.Clear;
    ZQEND1.SQL.Add('select dadosid, cidadeimport from endereco where cidadeimport is not null');

    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Add('update endereco set cidade =:cidade where dadosid =:dadosid ');

    ZQEND1.Open;
    ZQEND.Open;

    while not ZQEND1.Eof do
    begin
      ZQEND.First;
      while not ZQEND.Eof do
      begin
        if (Validar.RemoveAcento(LowerCase(Trim(ZQEND.FieldByName('descricao').AsString))) =
            Validar.RemoveAcento(LowerCase(Trim(ZQEND1.FieldByName('cidadeimport').AsString))))  then
        begin
          ZQUPEND.Close;
          ZQUPEND.ParamByName('cidade').AsString   := ZQEND.FieldByName('id').AsString;
          ZQUPEND.ParamByName('dadosid').AsInteger := ZQEND1.FieldByName('dadosid').AsInteger;
          ZQUPEND.ExecSQL;
        end;

        ZQEND.Next;
      end;
      ZQEND1.Next;
    end;

    ZQEND.Close;
    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('select * from estado');

    ZQEND1.Close;
    ZQEND1.SQL.Clear;
    ZQEND1.SQL.Add('select dadosid, estadoimport from endereco where estadoimport is not null');

    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Add('update endereco set estado =:estado where dadosid =:dadosid ');

    ZQEND1.Open;
    ZQEND.Open;

    while not ZQEND1.Eof do
    begin

      ZQEND.First;
      while not ZQEND.Eof do
      begin
        if (Validar.RemoveAcento(LowerCase(Trim(ZQEND.FieldByName('descricao').AsString))) =
            Validar.RemoveAcento(LowerCase(Trim(ZQEND1.FieldByName('estadoimport').AsString))))  then
        begin
          ZQUPEND.Close;
          ZQUPEND.ParamByName('estado').AsString   := ZQEND.FieldByName('id').AsString;
          ZQUPEND.ParamByName('dadosid').AsInteger := ZQEND1.FieldByName('dadosid').AsInteger;
          ZQUPEND.ExecSQL;
        end;

        ZQEND.Next;
      end;

      ZQEND1.Next;
    end;

    ShowMessage('Atualizou');
  except
    on E:Exception do
    begin
    ZConnection.Rollback;
    ShowMessage(E.Message+' Erro! '+ZQEND1.FieldByName('cidadeimport').AsString);
    end;
  end;


end;

procedure TfrmPrincipal.Button7Click(Sender: TObject);
var
  I, J: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca, sArquivo, Grupo: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  bSalvar: boolean;
begin
  try
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    ProgressBar.Position := 0;
    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Produto.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      Grupo := Trim(StringGrid1.Cells[1, i]);

      if Grupo <> '' then
      begin
        ZQPF.Close;
        ZQPF.SQL.Clear;
        ZQPF.SQL.Text := 'select id from tipoproduto where descricao ='''+Trim(Grupo)+'''';
        ZQPF.Open;

        if ZQPF.IsEmpty then
        begin
          ZQuery.Close;
          ZQuery.SQL.Clear;
          ZQuery.SQL.Text := 'INSERT INTO public.tipoproduto (descricao) VALUES ('''+Trim(Grupo)+''') ';
          ZQuery.ExecSQL;
        end;
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
    end;

    ShowMessage('Processo Finalizado!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TfrmPrincipal.Button8Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca, sArquivo: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    ZQPF.Close;
    ZQPF.SQL.Clear;
    ZQPF.SQL.Text := 'select id from marca where descricao =:descricao';

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('INSERT INTO public.marca (descricao) VALUES ( ');
    ZQuery.SQL.Add(':descricao) ');

    ProgressBar.Position := 0;
    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Itens.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      Marca := Trim(StringGrid1.Cells[18, i]);

      if Marca <> '' then
      begin
        ZQPF.Close;
        ZQPF.ParamByName('descricao').AsString := Marca;
        ZQPF.Open;

        if ZQPF.IsEmpty then
        begin
          ZQuery.Close;
          ZQuery.ParamByName('descricao').AsString := Marca;
          ZQuery.ExecSQL;
        end;
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
    end;

    ShowMessage('Processo Finalizado!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

function TfrmPrincipal.getGrupo(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
  Validar: TValidar;
begin
  try
    {Monta a query}
    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;
    id := 0;
    Validar := TValidar.Create;

    sSQL := 'select id from tipoproduto where codigo = '''+Validar.gerarDigitoZero(sString, 4)+''' ';

    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    if not ZgetModPgto.IsEmpty then
       id := ZgetModPgto.FieldByName('id').AsInteger;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
    Validar.Free;
  end;

end;

function TfrmPrincipal.getUnidade(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
begin
  try
    {Monta a query}
    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    if (sString = 'CD') or (sString = 'CJT') or (sString = 'CL') or (sString = 'CP') or (sString = 'CRT') or (sString = 'CT') then
       sString := 'CJ';

    if (sString = 'CX06') or (sString = 'CX12') or (sString = 'CX34') or (sString = 'CXA') then
       sString := 'CX';

    if (sString = 'DP') or (sString = 'DS') or (sString = 'EXB') then
       sString := 'DZ';

    if (sString = 'FDO') then
       sString := 'FD';

    if (sString = 'GF') or (sString = 'KG.') then
       sString := 'KG';

    if (sString = 'PAR') then
       sString := 'PA';

    if (sString = 'PCA') or (sString = 'PK') or (sString = 'PT') then
       sString := 'PC';

    if (sString = 'SAC') then
       sString := 'SC';

    if (sString = 'UND') or (sString = 'UN1') or (sString = 'UNI') then
       sString := 'UN';

    sSQL := 'select id from unidade where descricao = '''+sString+''' ';

    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := 0;
    if not ZgetModPgto.IsEmpty then
       if not ZgetModPgto.FieldByName('id').IsNull then
          id := ZgetModPgto.FieldByName('id').AsInteger;

    if id = 0 then
    begin
      {
      22 - BOB BOBINA
      4 -  CXA CAIXA        23 -CM CENTIMETRO
      13 - DZ DUZIA         3 - FD FARDO
      17 - GRO GROSA        14 - JG JOGO
      19 - LT LATA          12 - L LITROS
      5 - MT METRO          24 - M3 METRO CUBICO
      8 - M2 METROQUADRADO  25 - MIL MILHEIRO
      20 - ML MILILITROS    11 - PAR PAR
      7 - PCA PE�A          1 - KG QUILO
      21 -RES RESMA         26 -ROL ROLO
      6 - SC SACO           2 - U UNID
      2 - UND UNIDADE       27 -VG VARA
      }

      id := 2;

      if sString = 'CM' then
         id := 23;

      if sString = 'FD' then
         id := 3;

      if sString = 'JG' then
         id := 14;

      if sString = 'L' then
         id := 12;

      if sString = 'M3' then
         id := 24;

      if sString = 'MIL' then
         id := 25;

      if sString = 'PAR' then
         id := 11;

      if sString = 'KG' then
         id := 1;

      if sString = 'ROL' then
         id := 26;

      if sString = 'U' then
         id := 2;

      if sString = 'VG' then
         id := 27; 

      if sString = 'BOB' then
         id := 22;

      if sString = 'CXA' then
         id := 4;

      if sString = 'DZ' then
         id := 13;

      if sString = 'GRO' then
         id := 17;

      if sString = 'LT' then
         id := 19;

      if sString = 'MT' then
         id := 5;

      if sString = 'M2' then
         id := 8;

      if sString = 'ML' then
         id := 20;

      if sString = 'PCA' then
         id := 7;

      if sString = 'RES' then
         id := 21;

      if sString = 'SC' then
         id := 6;

      if sString = 'UND' then
         id := 2;




    end;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end;
end;

procedure TfrmPrincipal.limpaStg(Stg: TStringGrid);
var
  wIndice: word;
begin
  for wIndice := 0 to Stg.RowCount do
      Stg.Rows[wIndice].Clear;
end;

procedure TfrmPrincipal.btnAMOClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\produtosAMO.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 785;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Descricao   := UpperCase(Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2));
      CODBARRA    := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
      SubSecao    := '';
      Estoque     := '0';
      cValorVenda := Validar.StrToCurrency(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2));
      cCusto      := 0;

      if Descricao = '' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        Codigo := ProdutoRN.gerarCodigo;

        if CODBARRA = '' then
           CODBARRA := Validar.gerarDigitoZero(Codigo, 14)
        else
           CODBARRA := Validar.gerarDigitoZero(CODBARRA, 14);

        NCM           := '99999999';
        sMarca        := '9';
        CFOP          := '';
        CST           := '000';
        Aliquota      := '18';
        Unidade       := 'UNIDADE';
        Preco         := Validar.PontoVirgula(CurrToStr(cValorVenda));
        Custo         := Validar.PontoVirgula(CurrToStr(cCusto));
        MLucro        := '0';
        sPisCofins    := '0';
        EstoqueMinimo := '0';

        cAvista       := 0;
        cAprazo       := 0;

        sMsg          := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Codigo;
        Produto.codigoBarra        := CODBARRA;
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        Produto.sBalanca           := '0';
        Produto.unidade.codigo     := '2';

        if (Unidade = 'UNIDADE') then
            Produto.unidade.codigo := '2';

        if (Unidade = 'SACO') then
            Produto.unidade.codigo := '16';

        if (Unidade = 'ROLO') then
            Produto.unidade.codigo := '15';

        if (Unidade = 'KG') or (Unidade = 'QUILO') then
           Produto.unidade.codigo := '1';

        if (Unidade = 'PC') or (Unidade = 'P�') then
            Produto.unidade.codigo := '14';

         if (Unidade = 'PT') then
            Produto.unidade.codigo := '13';

         if (Unidade = 'METRO') then
            Produto.unidade.codigo := '5';

          if (Unidade = 'M3') then
            Produto.unidade.codigo := '9';

          if (Unidade = 'M�') then
            Produto.unidade.codigo := '8';

        if (Unidade = 'LATA') or (Unidade = 'LT') then
            Produto.unidade.codigo := '12';

          if (Unidade = 'JG') then
            Produto.unidade.codigo := '11';

          if (Unidade = 'GL') then
            Produto.unidade.codigo := '10';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := getSusbSecao(SubSecao);
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.desconto              := 0;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end
      else
      begin
        {
        ZQuery.Close;
        ZQuery.SQL.Clear;
        ZQuery.SQL.Add('update centroestocador_fisico set quantidade=:quantidade where id = (select id from produto where descricao = '''+Descricao+''') ');

        ZQuery.ParamByName('quantidade').AsFloat := StrToFloat(removeNumero(Estoque));
        ZQuery.ExecSQL;
        }
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnClienteComercialPintoClick(Sender: TObject);
var
  i, CodigoDados: Integer;
  Validar: TValidar;
  pessoaimpid: integer;
  Codigo: string;
  InsEstadual, Fantasia : string;
  DataCadastro: string;
  sTipo, sDDDCel, sFONECel, sDDDTel, sFONETel: string;

  bImportar: boolean;
  ArquivoTXT: TextFile;
  sLinha, sConteudo, Path, sInf, sDDD: string;
  iCont: integer;

  Linhas, Colunas: TStringList;
  j: integer;
  {Primeira Linha}
  Tp, Nome, Apel, CpfCnpj: string;
  {Segunda Linha
  Ende, No, Bairro, Cep, Cidade, Uf: string;
  {Terceira Linha}
  Cob, CobNo, CobBairro, CobCep, CobCidade, CobUf: string;
  {Quarta Linha}
  Nasc, Fone, Fax, Comp, Email, RI, Lim: string;
  {Quinta Linha}
  CFis, Cat, DescCat, RotaVen, RotaCob: string;
  {Sexta Linha}
  Obs, sStatus, CodigoImportacao, sFone: string;
  bLeLinha: boolean;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;

  Ex, Tabela, Descricao, AliqNac, AliqImp: string;

  LCID: Cardinal;
  WKBK :_Workbook;

  iPlanilha: integer;
begin
  try
    Produto:= TProduto.Create;
    Validar   := TValidar.Create;
    ProdutoRN := TProdutoRN.Create;

    iPlanilha := 1;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +'xls\TABELA_COMERCIAL_PINTO.xls', EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    ProgressBar.Position := 0;
    ProgressBar.Max      := 60;

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                       ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)    ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro, ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,   ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)   ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid) ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao) ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';

    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Text := 'select * from endereco where id = 1428';
    ZQUPEND.Open;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        Nome      := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        CpfCnpj   := '';
        Descricao := '';

        if Nome = 'NOME DO CLIENTE' then
           Nome := '';

        DataCadastro := '';
        Cat          := '1';
        Tp           := 'F';

        if Nome = 'FIM' then
           Break;

       if ((Nome <> '') and not (ProdutoRN.pessoaExisteNome(Nome))) then
       begin

         ZQDados.Close;
         ZQDados.Open;

         CodigoDados := ZQDados.FieldByName('id').AsInteger;
         Codigo      := ZQDados.FieldByName('id').AsString;

         CodigoImportacao := Codigo;

        if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
        begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;

          if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
          begin
            ZQDados.Close;
            ZQDados.SQL.Clear;
            ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
            ZQDados.Open;

            CodigoDados := ZQDados.FieldByName('id').AsInteger;
          end;
        end;

        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

        if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
        begin
          ZQPessoaImp.Close;
          ZQPessoaImp.SQL.Clear;
          ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
          ZQPessoaImp.Open;

          pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
        end;

        ZQuery.Close;
        ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
        ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

        if DataCadastro = '' then
           ZQuery.ParamByName('cad').AsDate := Now
        else
           ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

        ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
        ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
        ZQuery.ExecSQL;

        sTipo := Tp;

        ZQCli.Close;
        ZQCli.ParamByName('id').AsInteger             := CodigoDados;
        ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
        ZQCli.ExecSQL;

        ZQDV.Close;
        ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
        ZQDV.ParamByName('vinculoid').AsInteger := 1;
        ZQDV.ExecSQL;

        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := ZQUPEND.FieldByName('logradouro').AsString;
        ZQEND.ParamByName('complemento').AsString     := ZQUPEND.FieldByName('complemento').AsString;
        ZQEND.ParamByName('bairro').AsString          := ZQUPEND.FieldByName('bairro').AsString;;
        ZQEND.ParamByName('cidade').AsString          := ZQUPEND.FieldByName('cidade').AsString;
        ZQEND.ParamByName('estado').AsString          := ZQUPEND.FieldByName('estado').AsString;
        ZQEND.ParamByName('cep').AsString             := ZQUPEND.FieldByName('cep').AsString;
        ZQEND.ParamByName('tipoenderecoid').AsInteger := ZQUPEND.FieldByName('tipoenderecoid').AsInteger;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := ZQUPEND.FieldByName('paisid').AsInteger;
        ZQEND.ParamByName('isnotafiscal').AsString    := ZQUPEND.FieldByName('isnotafiscal').AsString;
        ZQEND.ParamByName('numero').AsString          := ZQUPEND.FieldByName('numero').AsString;
        ZQEND.ExecSQL;

        sStatus := '18';
        if Cat = '4' then
           sStatus := '19';

        Apel := '';
        Nasc := '';

        if sTipo = 'F' then
        begin
          ZQPF.Close;
          ZQPF.ParamByName('id').AsInteger         := CodigoDados;
          ZQPF.ParamByName('nome').AsString        := Trim(Nome);
          ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
          ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
          ZQPF.ParamByName('obs').AsString         := Obs;
          ZQPF.ParamByName('tipocliente').AsString := '0';

          if Nasc = '' then
             ZQPF.ParamByName('datanascimento').Clear
          else
             ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

          ZQPF.ParamByName('rg').AsString := removeNumero(RI);

          ZQPF.ParamByName('sexo').Clear;
          ZQPF.ExecSQL;
        end;

        if sTipo = 'J' then
        begin
          ZQPJ.Close;
          ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
          ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
          ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
          ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
          ZQPJ.ParamByName('contato').AsString            := '';
          ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
          ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
          ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
          ZQPJ.ParamByName('obs').AsString                := Obs;
          ZQPJ.ParamByName('tipocliente').AsString        := '0';
          ZQPJ.ExecSQL;
        end;

        ProgressBar.Position := i;
    end;
   end;
  end;

  ZConnection.Commit;
  ShowMessage('A importa��o foi realizada com �xito.');

  except
    on E:Exception do
    begin
      ZConnection.Rollback;
      ShowMessage(E.Message+' Codigo:'+Codigo+'-'+Nome+'-'+' Codigo Dados:'+IntToStr(CodigoDados));
    end;
  end;
end;

procedure TfrmPrincipal.btnClienteSouzaClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, sMarca, sRef, sRef2: string;
  i, iPlanilha, CodigoDados, pessoaimpid: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone, sFantasia: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, DataNasc, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento: string;
  sArquivo, Contato, CODBARRA: string;

  dtCadastro: TDate;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
begin
  Produto              := TProduto.Create;
  ProdutoRN            := TProdutoRN.Create;
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;

  try
    Cat := '1';
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';
    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Text := 'select * from endereco where dadosid = 1428';
    ZQUPEND.Open;

    ProgressBar.Position := 0;

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Clientes.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      Codigo    := Trim(StringGrid1.Cells[0, i]);
      Nome      := Trim(StringGrid1.Cells[2, i]);
      CpfCnpj   := removeSONumero(Trim(StringGrid1.Cells[1, i]));
      sFantasia := removeSONumero(Trim(StringGrid1.Cells[3, i]));
      DataCadastro := Trim(StringGrid1.Cells[10, i]);
      DataNasc     := '';

      Descricao := '';

      if Nome = 'NOME DO CLIENTE' then
         Nome := '';

      Cat          := '1';
      sTipo        := 'F';

      if Nome = '' then
         Break;

      RI           := Trim(StringGrid1.Cells[11, i]);
      Apel         := Nome;
      Contato      := '';
      Lim          := '0';
      Email        := '';

      Obs          := '';
      Nasc         := '';

      if Lim = '' then
         Lim := '0';

      sTipo := 'F';
      if Length(CpfCnpj) = 14 then
         sTipo := 'J';


      sFONETel := removeNumero(Trim(StringGrid1.Cells[8, i]));
      sDDDTel  := '75';

      if Length(sFONETel) > 8 then
      begin
        sDDDTel  := Trim(System.Copy(sFONETel, 1, 2));
        sFONETel := Trim(System.Copy(sFONETel, 3, 20));
      end;

      sFONECel := removeNumero(Trim(StringGrid1.Cells[9, i]));
      sDDDCel  := '75';

      if Length(sFONECel) > 8 then
      begin
        sDDDCel  := Trim(System.Copy(sFONECel, 1, 2));
        sFONECel := Trim(System.Copy(sFONECel, 3, 20));
      end;

      Logradouro   := Trim(StringGrid1.Cells[4, i]);
      Bairro       := Trim(StringGrid1.Cells[5, i]);
      Cidade       := Trim(StringGrid1.Cells[10, i]);
      Uf           := Trim(StringGrid1.Cells[12, i]);
      Cep          := removeSONumero(Trim(StringGrid1.Cells[7, i]));
      Numero       := removeSONumero(Trim(StringGrid1.Cells[6, i]));
      Complemento  := '';

      CodigoImportacao := Codigo;

      ZQDados.Close;
      ZQDados.Open;

      while ProdutoRN.codigoExiste(Codigo) do
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;
        Codigo      := ZQDados.FieldByName('id').AsString;
      end;

      if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;

        if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
        begin
          ZQDados.Close;
          ZQDados.SQL.Clear;
          ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;
        end;
      end
      else
        CodigoDados := StrToInt(Codigo);

      ZQPessoaImp.Close;
      ZQPessoaImp.SQL.Clear;
      ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
      ZQPessoaImp.Open;

      pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

      if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
      begin
        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
      end;

      ZQuery.Close;
      ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
      ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

      if DataCadastro = '' then
         ZQuery.ParamByName('cad').AsDate := Now
      else
         ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

      ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
      ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
      ZQuery.ExecSQL;

      ZQCli.Close;
      ZQCli.ParamByName('id').AsInteger             := CodigoDados;
      ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
      ZQCli.ExecSQL;

      ZQDV.Close;
      ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
      ZQDV.ParamByName('vinculoid').AsInteger := 1;
      ZQDV.ExecSQL;

      if Email <> '' then
      begin
        ZQEmail.Close;
        ZQEmail.ParamByName('descricao').AsString      := Email;
        ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
        ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEmail.ExecSQL;
      end;

      begin
        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := Logradouro;
        ZQEND.ParamByName('complemento').AsString     := Complemento;
        ZQEND.ParamByName('bairro').AsString          := Bairro;
        ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(Cidade, Uf);
        ZQEND.ParamByName('estado').AsString          := getCodigoUF(Uf);
        ZQEND.ParamByName('cep').AsString             := removeSONumero(Cep);
        ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := 1;
        ZQEND.ParamByName('isnotafiscal').AsString    := '0';
        ZQEND.ParamByName('numero').AsString          := Numero;
        ZQEND.ExecSQL;
      end;

      if Trim(sFONETel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      if Trim(sFONECel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      sStatus := '18';
      if Cat = '4' then
         sStatus := '19';

      if sTipo = 'F' then
      begin
        ZQPF.Close;
        ZQPF.ParamByName('id').AsInteger         := CodigoDados;
        ZQPF.ParamByName('nome').AsString        := Trim(Nome);
        ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
        ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
        ZQPF.ParamByName('obs').AsString         := Obs;
        ZQPF.ParamByName('tipocliente').AsString := '0';

        if DataNasc = '' then
           ZQPF.ParamByName('datanascimento').Clear
        else
           ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(DataNasc));

        ZQPF.ParamByName('rg').AsString := removeNumero(RI);

        ZQPF.ParamByName('sexo').Clear;
        ZQPF.ExecSQL;
      end;

      if sTipo = 'J' then
      begin
        ZQPJ.Close;
        ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
        ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
        ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
        ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
        ZQPJ.ParamByName('contato').AsString            := '';
        ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
        ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
        ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
        ZQPJ.ParamByName('obs').AsString                := Obs;
        ZQPJ.ParamByName('tipocliente').AsString        := '0';
        ZQPJ.ExecSQL;
      end;

      Obs     := '';
      sStatus := '';

      ProgressBar.Position := i;
    end;
    ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo+'-'+Nome);
    end;
  end;

end;

procedure TfrmPrincipal.btnCODBARRAECOLARClick(Sender: TObject);
var
  Codigo, CODBARRA: string;
  i: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Validar: TValidar;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  Xls_To_StringGrid(StringGrid1, ExtractFilePath(Application.ExeName) +'xls\ProdutosCodigoBarra.xls');

  ProgressBar.Position := 0;
  ProgressBar.Max      := 59440;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  for i := 0 to StringGrid1.RowCount - 1 do
  begin
    if i > 0 then
    begin
      Codigo    := StringGrid1.Cells[0, i];
      CODBARRA  := StringGrid1.Cells[1, i];

      if Codigo = '' then
         break;

      ProdutoRN.setEditarCodigo_ECO_LAR(Codigo, CODBARRA);

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := CODBARRA;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnComercialNicacioClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutosNICACIO.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 2095;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Descricao   := UpperCase(Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2));
      Codigo      := System.Copy(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2), 6, 14);
      SubSecao    := '';
      Estoque     := Validar.PontoVirgula(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2));
      cValorVenda := Validar.StrToCurrency(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));
      cCusto      := Validar.StrToCurrency(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));

      if Codigo = 'FIM' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        CODBARRA   := '';

        NCM        := '99999999';
        sMarca     := '9';
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        Unidade    := 'UNIDADE';
        Preco      := Validar.PontoVirgula(CurrToStr(cValorVenda));
        Custo      := Validar.PontoVirgula(CurrToStr(cCusto));
        MLucro     := '0';
        sPisCofins := '0';
        EstoqueMinimo := Validar.PontoVirgula(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2));

        cAvista := Validar.StrToCurrency(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));
        cAprazo := Validar.StrToCurrency(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Codigo;
        Produto.codigoBarra        := Validar.gerarDigitoZero(Produto.cod, 14);
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        Produto.sBalanca           := '0';
        Produto.unidade.codigo     := '2';

        if (Unidade = 'UNIDADE') then
            Produto.unidade.codigo := '2';

        if (Unidade = 'SACO') then
            Produto.unidade.codigo := '16';

        if (Unidade = 'ROLO') then
            Produto.unidade.codigo := '15';

        if (Unidade = 'KG') or (Unidade = 'QUILO') then
           Produto.unidade.codigo := '1';

        if (Unidade = 'PC') or (Unidade = 'P�') then
            Produto.unidade.codigo := '14';

         if (Unidade = 'PT') then
            Produto.unidade.codigo := '13';

         if (Unidade = 'METRO') then
            Produto.unidade.codigo := '5';

          if (Unidade = 'M3') then
            Produto.unidade.codigo := '9';

          if (Unidade = 'M�') then
            Produto.unidade.codigo := '8';

        if (Unidade = 'LATA') or (Unidade = 'LT') then
            Produto.unidade.codigo := '12';

          if (Unidade = 'JG') then
            Produto.unidade.codigo := '11';

          if (Unidade = 'GL') then
            Produto.unidade.codigo := '10';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := getSusbSecao(SubSecao);
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        cDifAVAP := (cAprazo - cAvista);

        Produto.desconto := validar.Arredondar( ((cDifAVAP * 100) / cAprazo), 2);

        if Produto.cod = '0000534' then
           ShowMessage('0000534');

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end
      else
      begin
        {
        ZQuery.Close;
        ZQuery.SQL.Clear;
        ZQuery.SQL.Add('update centroestocador_fisico set quantidade=:quantidade where id = (select id from produto where descricao = '''+Descricao+''') ');

        ZQuery.ParamByName('quantidade').AsFloat := StrToFloat(removeNumero(Estoque));
        ZQuery.ExecSQL;
        }
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnComercialPintoClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorAtac: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\Produto.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 607;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo      := '';
      SubSecao    := '';
      Descricao   := UpperCase(Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2));
      Estoque     := '0';

      if Descricao = 'FIM' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        CODBARRA      := '';

        Unidade       := UpperCase(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2));
        sQtde         := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        cValorAtac    := Validar.StrToCurrency(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));
        cValorVenda   := Validar.StrToCurrency(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));

        cCusto        := 0;

        NCM           := '99999999';
        sMarca        := '9';
        CFOP          := '';
        CST           := '000';
        Aliquota      := '18';

        Preco         := Validar.PontoVirgula(CurrToStr(cValorVenda));
        Custo         := Validar.PontoVirgula(CurrToStr(cCusto));
        MLucro        := '0';
        sPisCofins    := '0';
        EstoqueMinimo := '0';

        cAvista := 0;
        cAprazo := 0;

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                 := ProdutoRN.gerarCodigo;
        Produto.codigoBarra         := Validar.gerarDigitoZero(Produto.cod, 14);
        Produto.codigoBarraImport   := Produto.codigoBarra;
        Produto.descricao           := UpperCase(Descricao);
        Produto.descricaoFiscal     := Produto.descricao;
        Produto.CFOP                := CFOP;
        Produto.CST                 := CST;
        Produto.AliquotaIcms        := StrToFloat(Aliquota);
        Produto.sBalanca            := '0';

        Produto.unidade.codigo      := '2';
        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.valorAUX            := cValorAtac;
        Produto.descricaoAUX        := 'CAIXA';
        Produto.QtdeAUX             := StrToFloat(sQtde);
        if Unidade = 'F' then
           Produto.descricaoAUX     := 'FARDO';

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := getSusbSecao(SubSecao);
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.desconto              := 0;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnCRComercialPintoClick(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro, sNome: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Agen,	Conta: string;
  DtDoc,	DtVenc, DtAux: TDate;
  VlDoc, sDtVenc, sDtAux: string;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
begin
  try
  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;

  WKBK := ExcelApplication1.Workbooks.Open(ExtractFilePath(Application.ExeName) +'xls\CR7.xls',
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';

  iNParcela        := 1;
  iTamArray        := 0;

  for iPlanilha := 1 to 1 do
  begin
    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        sNome  := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

        //if sNome = 'JOBSON (MERC. FAZENDA NOVA)' then
        //   ShowMessage('JOBSON (MERC. FAZENDA NOVA)');

        if sNome = 'FIM' then
           break;

        Codigo := '';
        ZQDados.Close;
        ZQDados.ParamByName('nome').AsString := sNome;
        ZQDados.Open;

        if not ZQDados.IsEmpty then
           Codigo := ZQDados.FieldByName('id').AsString;

        if ehNumero(Codigo) then
        begin
          Doc    := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
          DtAux  := Now;
          DtVenc := Now;

          try
            if Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2) <> '' then
               DtAux := Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2;
          except
             DtAux := Now;
          end;

          try
            if Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2) <> '' then
               DtVenc := Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2;
          except
            DtVenc := Now;
          end;

          VlDoc := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);

          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := 6;

          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;

          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          Parcela.parcelas[iTamArray-1].dt_vencimento    := DtVenc;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := DtAux;
          DataVenc := DtVenc;

          Parcela.parcelas[iTamArray-1].Status.codigo := 1;

          Parcela.Titulo.Cmf.codigo           := 3;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := System.Copy(Doc, 29);;
          Parcela.Titulo.status.codigo        := 1;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DtVenc;
          Parcela.Titulo.dt_periodoinicial := DtAux;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := System.Copy(Doc, 29);

          Parcela.Titulo.dados.codigo   := StrToInt(Codigo);
          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          if Parcela.Titulo.dados.codigo <> 0 then
             Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          iNParcela := 1;
          iTamArray := 0;
          Codigo    := '';
        end;

      end;

    end;

    if iPlanilha = 1 then
       Break;

  end;
  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.btnC_NASCIMENTOClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, sMarca, sRef, sRef2: string;
  i, iPlanilha, CodigoDados, pessoaimpid: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, DataNasc, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento: string;
  sArquivo, Contato, CODBARRA: string;

  dtCadastro: TDate;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
begin
  Produto              := TProduto.Create;
  ProdutoRN            := TProdutoRN.Create;
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;

  try
    Cat := '1';
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';
    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Text := 'select * from endereco where dadosid = 1428';
    ZQUPEND.Open;

    ProgressBar.Position := 0;

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Cliente.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      Codigo    := Trim(StringGrid1.Cells[0, i]);
      Nome      := Trim(StringGrid1.Cells[1, i]);
      CpfCnpj   := removeSONumero(Trim(StringGrid1.Cells[5, i]));
      DataCadastro := Trim(StringGrid1.Cells[4, i]);
      DataNasc     := Trim(StringGrid1.Cells[3, i]);

      Descricao := '';

      if Nome = 'NOME DO CLIENTE' then
         Nome := '';

      Cat          := '1';
      sTipo        := 'F';

      if Nome = '' then
         Break;

      RI           := Trim(StringGrid1.Cells[6, i]);
      Apel         := Nome;
      Contato      := '';
      Lim          := '0';
      Email        := '';

      Obs          := '';
      Nasc         := '';

      if Lim = '' then
         Lim := '0';

      sTipo := 'F';
      if Length(CpfCnpj) = 14 then
         sTipo := 'J';

      {
      sFone    := removeNumero(Trim(StringGrid1.Cells[5, i]));
      sDDDCel  := '75';

      if Length(sFone) > 8 then
      begin
        sDDDCel  := Trim(System.Copy(sFone, 1, 2));
        sFONECel := Trim(System.Copy(sFone, 3, 20));
      end;
      }

      Logradouro   := Trim(StringGrid1.Cells[7, i]);
      Bairro       := Trim(StringGrid1.Cells[9, i]);
      Cidade       := Trim(StringGrid1.Cells[10, i]);
      Uf           := Trim(StringGrid1.Cells[12, i]);
      Cep          := removeSONumero(Trim(StringGrid1.Cells[11, i]));
      Numero       := removeSONumero(Trim(StringGrid1.Cells[14, i]));
      Complemento  := Trim(StringGrid1.Cells[8, i]);

      CodigoImportacao := Codigo;

      ZQDados.Close;
      ZQDados.Open;

      while ProdutoRN.codigoExiste(Codigo) do
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;
        Codigo      := ZQDados.FieldByName('id').AsString;
      end;

      if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;

        if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
        begin
          ZQDados.Close;
          ZQDados.SQL.Clear;
          ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;
        end;
      end
      else
        CodigoDados := StrToInt(Codigo);

      ZQPessoaImp.Close;
      ZQPessoaImp.SQL.Clear;
      ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
      ZQPessoaImp.Open;

      pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

      if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
      begin
        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
      end;

      ZQuery.Close;
      ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
      ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

      if DataCadastro = '' then
         ZQuery.ParamByName('cad').AsDate := Now
      else
         ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

      ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
      ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
      ZQuery.ExecSQL;

      ZQCli.Close;
      ZQCli.ParamByName('id').AsInteger             := CodigoDados;
      ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
      ZQCli.ExecSQL;

      ZQDV.Close;
      ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
      ZQDV.ParamByName('vinculoid').AsInteger := 4;
      ZQDV.ExecSQL;

      if Email <> '' then
      begin
        ZQEmail.Close;
        ZQEmail.ParamByName('descricao').AsString      := Email;
        ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
        ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEmail.ExecSQL;
      end;

      begin
        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := Logradouro;
        ZQEND.ParamByName('complemento').AsString     := Complemento;
        ZQEND.ParamByName('bairro').AsString          := Bairro;
        ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(Cidade, Uf);
        ZQEND.ParamByName('estado').AsString          := getCodigoUF(Uf);
        ZQEND.ParamByName('cep').AsString             := removeSONumero(Cep);
        ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := 1;
        ZQEND.ParamByName('isnotafiscal').AsString    := '0';
        ZQEND.ParamByName('numero').AsString          := Numero;
        ZQEND.ExecSQL;
      end;

      if Trim(sFONETel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      if Trim(sFONECel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      sStatus := '18';
      if Cat = '4' then
         sStatus := '19';

      if sTipo = 'F' then
      begin
        ZQPF.Close;
        ZQPF.ParamByName('id').AsInteger         := CodigoDados;
        ZQPF.ParamByName('nome').AsString        := Trim(Nome);
        ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
        ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
        ZQPF.ParamByName('obs').AsString         := Obs;
        ZQPF.ParamByName('tipocliente').AsString := '0';

        if DataNasc = '' then
           ZQPF.ParamByName('datanascimento').Clear
        else
           ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(DataNasc));

        ZQPF.ParamByName('rg').AsString := removeNumero(RI);

        ZQPF.ParamByName('sexo').Clear;
        ZQPF.ExecSQL;
      end;

      if sTipo = 'J' then
      begin
        ZQPJ.Close;
        ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
        ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
        ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
        ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
        ZQPJ.ParamByName('contato').AsString            := '';
        ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
        ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
        ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
        ZQPJ.ParamByName('obs').AsString                := Obs;
        ZQPJ.ParamByName('tipocliente').AsString        := '0';
        ZQPJ.ExecSQL;
      end;

      Obs     := '';
      sStatus := '';

      ProgressBar.Position := i;
    end;
    ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo+'-'+Nome);
    end;
  end;
end;

procedure TfrmPrincipal.btnECOLARClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorCompra: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\PRODUTOS.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 30213;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo      := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao   := removeApost(UpperCase(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2)));

      if Descricao = '' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        Unidade     := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        CODBARRA    := '';
        Estoque     := '0';
        cValorCompra:= Validar.StrToCurrency(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));
        cCusto      := Validar.StrToCurrency(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));
        cValorVenda := Validar.StrToCurrency(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        MLucro      := Validar.PontoVirgula(CurrToStr(Validar.StrToCurrency(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2))));
        SubSecao    := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
        CST         := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);

        NCM         := '99999999';
        sMarca      := '9';
        CFOP        := '';

        if CST = '000' then
           Aliquota := '18';

         if (CST = '060') or (CST = '040') then
           Aliquota := '0';

        Preco         := Validar.PontoVirgula(CurrToStr(cValorVenda));
        Custo         := Validar.PontoVirgula(CurrToStr(cCusto));

        sPisCofins    := '0';
        EstoqueMinimo := '0';

        cAvista       := 0;
        cAprazo       := 0;

        if (Unidade = 'Unid') then
        begin
          Produto.unidade.codigo := '2';
          Produto.sBalanca       := '0';
        end;

        if (Unidade = 'Kg') then
        begin
          Produto.unidade.codigo := '1';
          Produto.sBalanca       := '1';
        end;

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Validar.gerarDigitoZero(Codigo,7);
        Produto.codigoBarra        := CODBARRA;
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := StrToInt(SubSecao);
        Produto.valorCompra           := cValorCompra;
        Produto.CustoMedio            := cCusto;
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.desconto              := 0;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end
      else
      begin
        {
        ZQuery.Close;
        ZQuery.SQL.Clear;
        ZQuery.SQL.Add('update centroestocador_fisico set quantidade=:quantidade where id = (select id from produto where descricao = '''+Descricao+''') ');

        ZQuery.ParamByName('quantidade').AsFloat := StrToFloat(removeNumero(Estoque));
        ZQuery.ExecSQL;
       }
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnMarcaCASABONITAClick(Sender: TObject);
var
  iNParcela, iTamArray, iPlanilha, i: integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  ColunaA, ColunaB: string;
  bImportou: boolean;
begin
  try
    btnMarcaCASABONITA.Enabled := false;

    LCID    := GetUserDefaultLCID;
    Validar := TValidar.Create;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +'\xls\'+
    'ESTOQUE_01.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQPF.Close;
    ZQPF.SQL.Clear;
    ZQPF.SQL.Text := 'select id from marca where descricao=:descricao ';

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into marca (descricao) values (:descricao) ');

    iNParcela := 1;
    iTamArray := 0;

    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 1 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

          if ColunaA = 'FIM' then
             break;

          try
            ZQPF.Close;
            ZQPF.ParamByName('descricao').AsString := ColunaA;
            ZQPF.Open;

            if ZQPF.IsEmpty then
            begin
              ZQuery.Close;
              ZQuery.ParamByName('descricao').AsString := ColunaA;
              ZQuery.ExecSQL;
            end;
          except
            on E:Exception do
            begin
              ShowMessage(E.Message);
              break;
            end;
          end;

        end;
      end;
    end;

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('update marca set codigo=:codigo where id =:id ');

    ZQPF.Close;
    ZQPF.SQL.Clear;
    ZQPF.SQL.Text := 'select * from marca ';
    ZQPF.Open;

    while not ZQPF.Eof do
    begin
      ZQuery.Close;
      ZQuery.ParamByName('codigo').AsString := Validar.gerarDigitoZero(ZQPF.FieldByName('id').AsString, 4);
      ZQuery.ParamByName('id').AsInteger    := ZQPF.FieldByName('id').AsInteger;
      ZQuery.ExecSQL;

      ZQPF.Next;
    end;

    ShowMessage('Importou');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TfrmPrincipal.btnM_NASCIMENTOClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo, GRUPO, FAMILIA, CEST: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorCompra: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;
  try
  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutosAccess.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 27438;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := removeApost(UpperCase(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2)));

      if i >= 27440 then
         break;

      if (Codigo <> '') and (Descricao <> '')then
      begin
        if not getExisteCodigoProduto(Codigo) then
        begin
          CODBARRA := System.Copy(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2), 1, 13);
          if CODBARRA = '' then
             CODBARRA := Codigo;

          Unidade     := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);

          GRUPO       := '1006';
          FAMILIA     := '1';
          SubSecao    := '3';

          Estoque     := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
          Preco       := Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2);
          cValorCompra:= 0;
          Custo       := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);

          MLucro      := '0';
          CST         := '000';
          if Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2) = 'F' then
             CST := '060';

          NCM         := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          CEST        := '';
          sMarca      := '9';
          CFOP        := '';

          if CST = '000' then
             Aliquota := '18';

          if (CST = '060') or (CST = '040') then
             Aliquota := '0';

          sPisCofins    := '0';
          EstoqueMinimo := '0';

          cAvista       := 0;
          cAprazo       := 0;

          if Estoque = '' then
             Estoque := '0';

          if Preco = '' then
             Preco := '0';

          if custo = '' then
             custo := '0';

          cValorCompra := StrToCurr(Validar.removePonto(custo));
          cCusto       := StrToCurr(Validar.removePonto(custo));

          Produto.unidade.codigo := IntToStr(getUnidade(Unidade));
          Produto.sBalanca       := '0';

          if UpperCase(Unidade) = 'KG' then
             Produto.sBalanca := '1';

          sMsg := 'PRODUTO: C�DIGO '+Codigo;

          lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
          lbstatus.Refresh;
          lbstatus.Repaint;

          Produto.cod                := Validar.gerarDigitoZero(Codigo, 7);
          Produto.codigoBarra        := Validar.gerarDigitoZero(CODBARRA, 14);
          Produto.codigoBarraImport  := Produto.codigoBarra;
          Produto.descricao          := UpperCase(Descricao);
          Produto.descricaoFiscal    := Produto.descricao;
          Produto.CFOP               := CFOP;
          Produto.CST                := CST;
          Produto.CEST               := CEST;
          Produto.AliquotaIcms       := StrToFloat(Aliquota);

          Produto.unidadeSaida.codigo := Produto.unidade.codigo;

          Produto.PisCofins := 1;
          if sPisCofins <> '1' then
             Produto.PisCofins := 2;

          Produto.valor                 := StrToFloat(removeNumero(Preco));
          Produto.lote                  := '';
          Produto.TipoProduto.codigo    := GRUPO;
          Produto.sFamilia              := FAMILIA;
          Produto.Marca.codigo          := 9;
          Produto.garantia              := '0';
          Produto.subsecao.codigo       := StrToInt(SubSecao);
          Produto.valorCompra           := cValorCompra;
          Produto.CustoMedio            := cCusto;
          Produto.comissaoValor         := 0;
          Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));
          Produto.estoquemaximo         := 0;
          Produto.comissaoPercentual    := 0;
          Produto.descontoMaximo        := 0;
          Produto.bCalcIcms             := 0;
          Produto.bCalcIcmsSubs         := 0;
          Produto.AliquotaIpi           := 0;
          Produto.Status.codigo         := 29;
          Produto.sVendaDiferenciada    := '0';
          Produto.sConstanteCalculo     := '0';
          Produto.sReferencia           := '';
          Produto.sIPPT                 := 'T';
          Produto.NCM                   := NCM;
          Produto.DiaValidade           := 0;
          Produto.MvaSaida              := 0;
          Produto.TipoMercadoria.codigo := 0;
          Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
          Produto.MargemMinLucro        := Produto.MargemLucro;
          Produto.QtdeConversao         := 0;
          Produto.PrecoConversao        := 0;
          Produto.DeducaoICMSSaida      := 0;
          Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
          Produto.TipoMercadoria.codigo := 1;
          Produto.Fornecedor.Codigo     := 1428;
          Produto.sLocal                := '';
          Produto.sObs                  := '';
          Produto.desconto              := 0;

          if Produto.cod <> '' then
             ProdutoRN.InsertOrUpdate(Produto, '');
        end;

        ProgressBar.Position := ProgressBar.Position + 1;
        lbstatus.Caption     := Produto.Descricao;
        lbstatus.Refresh;
        lbstatus.Repaint;
      end;
    end;
  end;

  ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo);
    end;
  end;
end;

procedure TfrmPrincipal.btnPComercialBatistaClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutosCOMERCIALBATISTA.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 1404;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
      Estoque   := Validar.PontoVirgula(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));

      if sMarca = 'FIM' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        CODBARRA   := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

        NCM        := '99999999';
        sMarca     := '9';
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        Unidade    := 'UN';
        Preco      := Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));
        Custo      := Validar.PontoVirgula(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));
        MLucro     := '0';
        sPisCofins := '0';
        EstoqueMinimo := Validar.PontoVirgula(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));

        cAvista := Validar.StrToCurrency(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        cAprazo := Validar.StrToCurrency(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Codigo;
        Produto.codigoBarra        := CODBARRA;
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        Produto.sBalanca           := '0';

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        cDifAVAP := (cAprazo - cAvista);

        Produto.desconto := validar.Arredondar( ((cDifAVAP * 100) / cAprazo), 2);

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end
      else
      begin
        ZQuery.Close;
        ZQuery.SQL.Clear;
        ZQuery.SQL.Add('update centroestocador_fisico set quantidade=:quantidade where id = (select id from produto where descricao = '''+Descricao+''') ');

        ZQuery.ParamByName('quantidade').AsFloat := StrToFloat(removeNumero(Estoque));
        ZQuery.ExecSQL;
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnPJequitivaMadereiraClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutosJEQUITIBAMADEREIRA.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 607;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo      := '';
      SubSecao    := UpperCase(Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2));
      Descricao   := UpperCase(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2));
      Estoque     := Validar.PontoVirgula(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2));
      cValorVenda := Validar.StrToCurrency(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
      cCusto      := Validar.StrToCurrency(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));

      if SubSecao = 'FIM' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        CODBARRA   := '';

        NCM        := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
        sMarca     := '9';
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        Unidade    := UpperCase(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));
        Preco      := Validar.PontoVirgula(CurrToStr(cValorVenda));
        Custo      := Validar.PontoVirgula(CurrToStr(cCusto));
        MLucro     := '0';
        sPisCofins := '0';
        EstoqueMinimo := Validar.PontoVirgula(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2));

        cAvista := Validar.StrToCurrency(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));
        cAprazo := Validar.StrToCurrency(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := ProdutoRN.gerarCodigo;
        Produto.codigoBarra        := Validar.gerarDigitoZero(Produto.cod, 14);
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        Produto.sBalanca           := '0';
        Produto.unidade.codigo     := '2';

        if (Unidade = 'UNIDADE') then
            Produto.unidade.codigo := '2';

        if (Unidade = 'SACO') then
            Produto.unidade.codigo := '16';

        if (Unidade = 'ROLO') then
            Produto.unidade.codigo := '15';

        if (Unidade = 'KG') or (Unidade = 'QUILO') then
           Produto.unidade.codigo := '1';

        if (Unidade = 'PC') or (Unidade = 'P�') then
            Produto.unidade.codigo := '14';

         if (Unidade = 'PT') then
            Produto.unidade.codigo := '13';

         if (Unidade = 'METRO') then
            Produto.unidade.codigo := '5';

          if (Unidade = 'M3') then
            Produto.unidade.codigo := '9';

          if (Unidade = 'M�') then
            Produto.unidade.codigo := '8';

        if (Unidade = 'LATA') or (Unidade = 'LT') then
            Produto.unidade.codigo := '12';

          if (Unidade = 'JG') then
            Produto.unidade.codigo := '11';

          if (Unidade = 'GL') then
            Produto.unidade.codigo := '10';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := getSusbSecao(SubSecao);
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        cDifAVAP := (cAprazo - cAvista);

        Produto.desconto := validar.Arredondar( ((cDifAVAP * 100) / cAprazo), 2);

        if Produto.cod = '0000534' then
           ShowMessage('0000534');

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end
      else
      begin
        {
        ZQuery.Close;
        ZQuery.SQL.Clear;
        ZQuery.SQL.Add('update centroestocador_fisico set quantidade=:quantidade where id = (select id from produto where descricao = '''+Descricao+''') ');

        ZQuery.ParamByName('quantidade').AsFloat := StrToFloat(removeNumero(Estoque));
        ZQuery.ExecSQL;
        }
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnProdutoCASABONITAClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ESTOQUE_01.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 885;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      sMarca    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
      Estoque   := Validar.PontoVirgula(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));

      if sMarca = 'FIM' then
         break;

      if not getExisteProduto(Descricao) then
      begin
        Codigo     := ProdutoRN.gerarCodigo;
        CODBARRA   := Validar.gerarDigitoZero(Codigo, 14);

        NCM        := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        Unidade    := 'UN';
        Preco      := Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));
        Custo      := Validar.PontoVirgula(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        Estoque    := Validar.PontoVirgula(Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2));
        MLucro     := '0';
        sPisCofins := '0';
        EstoqueMinimo := Validar.PontoVirgula(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Codigo;
        Produto.codigoBarra        := CODBARRA;
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        Produto.sBalanca           := '0';

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := StrToInt(getMarcaPorDescricao(sMarca));
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end
      else
      begin
        ZQuery.Close;
        ZQuery.SQL.Clear;
        ZQuery.SQL.Add('update centroestocador_fisico set quantidade=:quantidade where id = (select id from produto where descricao = '''+Descricao+''') ');

        ZQuery.ParamByName('quantidade').AsFloat := StrToFloat(removeNumero(Estoque));
        ZQuery.ExecSQL;
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.btnProdutoSouzaClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque, SubSecao: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo, GRUPO, FAMILIA, CEST, sBalanca: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  cAvista, cAprazo, cDifAVAP, cValorVenda, cCusto, cValorCompra: currency;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;
  try
  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\Produtos.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 30490;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      Descricao := removeApost(UpperCase(Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2)));

      if Codigo = '' then
         break;

      if (Codigo <> '') and (Descricao <> '')then
      begin
        if not getExisteCodigoProduto(Codigo) then
        begin
          CODBARRA := System.Copy(Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2), 1, 13);
          if CODBARRA = '' then
             CODBARRA := Codigo;

          Unidade     := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

          GRUPO       := '1006';
          FAMILIA     := '1';
          SubSecao    := '3';

          Estoque     := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);
          Preco       := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);
          cValorCompra:= 0;
          Custo       := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
          sBalanca    := UpperCase(Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2));

          MLucro      := '0';
          CST         := '000';
          NCM         := '999999999';
          CEST        := '';
          sMarca      := '9';
          CFOP        := '';

          if CST = '000' then
             Aliquota := '18';

          if (CST = '060') or (CST = '040') then
             Aliquota := '0';

          sPisCofins    := '0';
          EstoqueMinimo := '0';

          cAvista       := 0;
          cAprazo       := 0;

          if Estoque = '' then
             Estoque := '0';

          if Preco = '' then
             Preco := '0';

          if custo = '' then
             custo := '0';

          cValorCompra := StrToCurr(Validar.removePonto(custo));
          cCusto       := StrToCurr(Validar.removePonto(custo));

          Produto.unidade.codigo := IntToStr(getUnidade(Unidade));
          Produto.sBalanca       := '0';

          if sBalanca = 'TRUE' then
             Produto.sBalanca := '1';

          sMsg := 'PRODUTO: C�DIGO '+Codigo;

          lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
          lbstatus.Refresh;
          lbstatus.Repaint;

          Produto.cod                := Validar.gerarDigitoZero(Codigo, 7);
          Produto.codigoBarra        := Validar.gerarDigitoZero(CODBARRA, 14);
          Produto.codigoBarraImport  := Produto.codigoBarra;
          Produto.descricao          := UpperCase(Descricao);
          Produto.descricaoFiscal    := Produto.descricao;
          Produto.CFOP               := CFOP;
          Produto.CST                := CST;
          Produto.CEST               := CEST;
          Produto.AliquotaIcms       := StrToFloat(Aliquota);

          Produto.unidadeSaida.codigo := Produto.unidade.codigo;

          Produto.PisCofins := 1;
          if sPisCofins <> '1' then
             Produto.PisCofins := 2;

          Produto.valor                 := StrToFloat(removeNumero(Preco));
          Produto.lote                  := '';
          Produto.TipoProduto.codigo    := GRUPO;
          Produto.sFamilia              := FAMILIA;
          Produto.Marca.codigo          := 9;
          Produto.garantia              := '0';
          Produto.subsecao.codigo       := StrToInt(SubSecao);
          Produto.valorCompra           := cValorCompra;
          Produto.CustoMedio            := cCusto;
          Produto.comissaoValor         := 0;
          Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));
          Produto.estoquemaximo         := 0;
          Produto.comissaoPercentual    := 0;
          Produto.descontoMaximo        := 0;
          Produto.bCalcIcms             := 0;
          Produto.bCalcIcmsSubs         := 0;
          Produto.AliquotaIpi           := 0;
          Produto.Status.codigo         := 29;
          Produto.sVendaDiferenciada    := '0';
          Produto.sConstanteCalculo     := '0';
          Produto.sReferencia           := '';
          Produto.sIPPT                 := 'T';
          Produto.NCM                   := NCM;
          Produto.DiaValidade           := 0;
          Produto.MvaSaida              := 0;
          Produto.TipoMercadoria.codigo := 0;
          Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
          Produto.MargemMinLucro        := Produto.MargemLucro;
          Produto.QtdeConversao         := 0;
          Produto.PrecoConversao        := 0;
          Produto.DeducaoICMSSaida      := 0;
          Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
          Produto.TipoMercadoria.codigo := 1;
          Produto.Fornecedor.Codigo     := 1428;
          Produto.sLocal                := '';
          Produto.sObs                  := '';
          Produto.desconto              := 0;

          if Produto.cod <> '' then
             ProdutoRN.InsertOrUpdate(Produto, '');
        end;

        ProgressBar.Position := ProgressBar.Position + 1;
        lbstatus.Caption     := Produto.Descricao;
        lbstatus.Refresh;
        lbstatus.Repaint;
      end;
    end;
  end;

  ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Codigo);
    end;
  end;

end;

procedure TfrmPrincipal.btnXLSBatraClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque0, Estoque1,CustoMedio: string;
  sBalanca, CST, NCM, CFOP, CODBARRA, Referencia, Descricao2, Marca, Grupo, PrecoAvista, sArquivo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  sDescricao: string;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  try
  iPlanilha := 1;

  ZQPF.Close;
  ZQPF.SQL.Clear;
  //ZQPF.SQL.Text := 'select id from tipoproduto where descricao='''+sDescricao+''' ';
  //ZQPF.Prepare;

  ZQPJ.Close;
  ZQPJ.SQL.Clear;
  ZQPJ.SQL.Add(' select id from marca where descricao=:descricao');


  ProgressBar.Position := 0;
  sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Produto.xls';

  Xls_To_StringGrid(StringGrid1, sArquivo);

  ProgressBar.Max      := StringGrid1.RowCount;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  Grupo                := '';
  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    CODBARRA   := Trim(StringGrid1.Cells[4, i]);
    Codigo     := Trim(StringGrid1.Cells[4, i]);
    Descricao  := removeApost(Trim(StringGrid1.Cells[3, i]));

    if Trim(StringGrid1.Cells[1, i]) <> '' then
         Grupo := Trim(StringGrid1.Cells[1, i]);


    if Length(Codigo) > 3 then
       Codigo := ProdutoRN.gerarCodigo;

    if Trim(StringGrid1.Cells[0, i]) = 'FIM' then
       break;

    if ((not getExisteProdutoCodDesc(Codigo, Descricao)) and (Codigo <> '')) then
    begin
      NCM        := '19053100';
      CFOP       := '';
      CST        := '000';
      Aliquota   := '18';

      Descricao  := removeApost(Trim(StringGrid1.Cells[3, i]));
      Descricao2 := removeApost(Trim(StringGrid1.Cells[3, i]));

      Referencia := '';
      Marca      := '';



      Unidade    := UpperCase(Trim(StringGrid1.Cells[5, i]));

      sBalanca   := '0';
      Preco      := Trim(StringGrid1.Cells[7, i]);
      PrecoAvista:= Trim(StringGrid1.Cells[7, i]);

      Estoque0   := Trim(StringGrid1.Cells[6, i]);
      Estoque1   := Trim(StringGrid1.Cells[6, i]);

      Custo      := '0';
      CustoMedio := '0';
      MLucro     := '0';
      sPisCofins := '0';

      if Unidade = 'KG' then
         sBalanca := '1';

      sMsg := 'PRODUTO: C�DIGO'+Codigo;

      if Preco = '' then
         Preco := '0';

      if PrecoAvista = '' then
         PrecoAvista := '0';

      lbstatus.Caption     := 'Aguarde...'+Codigo;
      lbstatus.Refresh;
      lbstatus.Repaint;

      if sBalanca = '1' then
      begin
        Unidade             := 'KG';
        Produto.sBalanca    := '1';
        Produto.cod         := Validar.gerarDigitoZero(CODBARRA, 7);
        Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
      end
      else
      begin
        Unidade             := 'UN';
        Produto.sBalanca    := '0';

        if getExisteCodigoProduto(Codigo) then
           Produto.cod := ProdutoRN.gerarCodigo
        else
           Produto.cod := Validar.gerarDigitoZero(Codigo, 7);

        Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
      end;

      Produto.codigoBarraImport  := Produto.codigoBarra;
      Produto.descricao          := UpperCase(Descricao);
      Produto.descricaoFiscal    := UpperCase(Descricao2);
      Produto.CFOP               := CFOP;
      Produto.CST                := CST;
      Produto.AliquotaIcms       := StrToFloat(Aliquota);

      {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
      }

      Produto.unidade.codigo := '2';
      if (Unidade = 'UN') then
          Produto.unidade.codigo := '2';

      if Unidade = 'KG' then
         Produto.unidade.codigo := '1';

      Produto.unidadeSaida.codigo := Produto.unidade.codigo;

      Produto.PisCofins := 1;
      if sPisCofins <> '1' then
         Produto.PisCofins := 2;


      {Tipo de Produto}
      ZQPF.Close;
      ZQPF.SQL.Text := 'select id from tipoproduto where descricao='''+Grupo+''' ';
      //ZQPF.ParamByName('descricao').AsString := Grupo;
      ZQPF.Open;

      Produto.tipoproduto.codigo := '1006';
      if not ZQPF.IsEmpty then
         Produto.tipoproduto.codigo := ZQPF.FieldByName('id').AsString;

      {Marca de Produto}
      {ZQPJ.Close;
      ZQPJ.ParamByName('descricao').AsString := Marca;
      ZQPF.ParamCheck := true;
      ZQPJ.Open;}

      Produto.Marca.codigo := 9;
      if not ZQPJ.IsEmpty then
         Produto.Marca.codigo := ZQPJ.FieldByName('id').AsInteger;

      Produto.valor                 := StrToFloat(Preco);
      Produto.lote                  := '';
      Produto.garantia              := '0';
      Produto.subsecao.codigo       := 3;
      Produto.valorCompra           := StrToFloat(Custo);
      Produto.CustoMedio            := StrToFloat(CustoMedio);
      Produto.comissaoValor         := 0;
      Produto.estoqueminimo         := 0;
      Produto.estoquemaximo         := 0;
      Produto.comissaoPercentual    := 0;
      Produto.descontoMaximo        := 0;
      Produto.bCalcIcms             := 0;
      Produto.bCalcIcmsSubs         := 0;
      Produto.AliquotaIpi           := 0;
      Produto.Status.codigo         := 29;
      Produto.sVendaDiferenciada    := '0';
      Produto.sConstanteCalculo     := '0';
      Produto.sReferencia           := Referencia;
      Produto.sIPPT                 := 'T';
      Produto.NCM                   := NCM;
      Produto.DiaValidade           := 0;
      Produto.MvaSaida              := 0;
      Produto.TipoMercadoria.codigo := 0;
      Produto.MargemLucro           := StrToFloat(MLucro);
      Produto.MargemMinLucro        := Produto.MargemLucro;
      Produto.QtdeConversao         := 0;
      Produto.PrecoConversao        := 0;
      Produto.DeducaoICMSSaida      := 0;
      Produto.Qtde                  := StrToFloat(Estoque0);
      Produto.QtdeAUX               := StrToFloat(Estoque1);
      Produto.TipoMercadoria.codigo := 1;
      Produto.Fornecedor.Codigo     := 1428;
      Produto.sLocal                := '';
      Produto.sObs                  := '';
      Produto.descricaoAUX          := '';

      if Codigo <> '' then
         ProdutoRN.InsertOrUpdate(Produto, '');
    end;

    ProgressBar.Position := ProgressBar.Position + 1;
    lbstatus.Caption     := Produto.Descricao;
    lbstatus.Refresh;
    lbstatus.Repaint;
  end;

  ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+Descricao+' - '+Produto.Descricao);
    end;
  end;

end;

procedure TfrmPrincipal.btProdutoCNovoClick(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque: string;
  sMarca, CST, NCM, CFOP, CODBARRA, EstoqueMinimo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\PRODUTOS_NOVO.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 2466;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo    := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
      CODBARRA  := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
      Descricao := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

      if Codigo = 'FIM' then
         break;

      if (Length(CODBARRA) <= 4) and (not getExisteProduto(Descricao)) then
      //if (Length(CODBARRA) > 4) then
      begin
        Codigo     := Validar.gerarDigitoZero(Codigo, 7);
        CODBARRA   := Validar.gerarDigitoZero(CODBARRA, 14);

        NCM        := '99999999';
        CFOP       := '';
        CST        := '000';
        Aliquota   := '18';
        Unidade    := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        Preco      := Validar.PontoVirgula(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2));
        Custo      := '0';
        Estoque    := '0';
        MLucro     := '0';
        sPisCofins := '0';
        EstoqueMinimo := '0';

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        Produto.cod                := Codigo;
        Produto.codigoBarra        := CODBARRA;
        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CFOP               := CFOP;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);
        Produto.sBalanca           := '0';

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
        begin
          Produto.unidade.codigo := '1';
          Produto.sBalanca       := '1';
        end;

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := StrToFloat(removeNumero(EstoqueMinimo));;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(removeNumero(Estoque));
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

procedure TfrmPrincipal.Button10Click(Sender: TObject);
const
  Pis: array [1..5] of string = ('I', 'J', 'K', 'L', 'M');
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  ipis: integer;
  Letra: string;
  //valores: array[1..5] of Integer = (3, 2, 6, 12, 9);
begin
  try
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +
    'ProdutoResumido.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('update produto set piscofinsid =:pis ');
    ZQuery.SQL.Add('where codigo = :codigo ');

    iNParcela        := 1;
    iTamArray        := 0;
    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        Letra := '';
        for i := 2 to Rows.Count do
        begin
          if Letra = '' then
           for ipis := 1 to 5 do
           begin
             ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
             ColunaF := Trim(Range[Pis[ipis] + IntToStr(I), Pis[ipis] + IntToStr(I)].Value2);
             if Trim(ColunaF) = 'Pis' then
             begin
               Letra := Pis[ipis];
               break;
             end;
           end;

          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          if Letra <> '' then
          try
             ColunaF := Trim(Range[Letra + IntToStr(I), Letra + IntToStr(I)].Value2);

             if Trim(ColunaF) <> 'Pis' then
             begin
             StrToInt(ColunaF);

             ZQuery.Close;
             ZQuery.ParamByName('codigo').AsString := Validar.gerarDigitoZero(ColunaA, 8);
             ZQuery.ParamByName('pis').AsString    := ColunaF;
             ZQuery.ExecSQL;
             end;
          except
             //on E:Exception do
             //begin
               Letra := '';
              // ShowMessage(E.Message);
             //end;

          end;
          if i > 4800 then
             break;
        end;
        if iPlanilha >= 1 then
           break;
      end;
    end;

    ShowMessage('Importou');
    Button10.Enabled := false;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.Button11Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Agen,	Conta, sArquivo, identificador, IMP: string;
  DtDoc,	DtVenc: TDate;
  VlDoc, VlPago: string;
  DtPagto: TDateTime;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa   : TRegistroBaixa;
  RegistroBaixaRN : TRegistroBaixaRN;
begin
  try
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;

  ProgressBar.Position := 0;
  sArquivo  := ExtractFilePath(Application.ExeName)+'xls\contas_receber.xls';

  limpaStg(StringGrid1);
  Xls_To_StringGrid(StringGrid1, sArquivo);

  ProgressBar.Max      := StringGrid1.RowCount;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;

  iNParcela        := 1;
  iTamArray        := 0;

  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    ColunaA       := Trim(StringGrid1.Cells[0, i]);
    identificador := Trim(StringGrid1.Cells[1, i]);

    Parcela.Titulo.dados.codigo := 0;

    //if identificador = '3556252538' then
    //   ShowMessage(identificador);

    if ehNumero(ColunaA) then
    begin
      Parcela.Titulo.dados.codigo := getIdPessoaPORIdentifier(ColunaA);

      if Parcela.Titulo.dados.codigo > 0 then
      begin
        Doc := Trim(StringGrid1.Cells[4, i]);

        if Trim(StringGrid1.Cells[5, i]) <> '' then
           DtDoc   := StrToDate(Copy(Trim(StringGrid1.Cells[5, i]), 1, 10));

        if Trim(StringGrid1.Cells[3, i]) <> '' then
           DtVenc  := StrToDate(Copy(Trim(StringGrid1.Cells[6, i]), 1, 10));

        DtPagto := 0;
        //if Trim(StringGrid1.Cells[5, i]) <> '' then
        //   DtPagto := StrToDateTime(Trim(StringGrid1.Cells[5, i]));

        //VlPago := '0';
        //if Trim(StringGrid1.Cells[12, i]) <> '' then
        //   VlPago := Validar.PontoVirgula(Trim(StringGrid1.Cells[12, i]));

        VlDoc  := Validar.PontoVirgula(Trim(StringGrid1.Cells[8, i]));

        Inc(iTamArray);
        SetLength(Parcela.parcelas, iTamArray);

        iModPgto  := 6;
        if Doc = 'NP' then
           iModPgto := 6;
        if Doc = 'DEP' then
           iModPgto  := 16;
        if Doc = 'VAL' then
           iModPgto  := 8;
        if Doc = 'DUP' then
           iModPgto  := 9;
        if Doc = 'CHP' then
           iModPgto  := 4;
        if Doc = 'CA' then
           iModPgto  := 1;
        if Doc = 'CHE' then
           iModPgto  := 11;
        if (Doc = 'DIN') or (Doc='DCC') or (Doc='DIV') or (Doc='BBB')then
           iModPgto  := 5;

        Parcela.parcelas[iTamArray-1] := TParcela.Create;

        Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;

        Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
        Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
        Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(VlDoc);
        Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;
        Parcela.parcelas[iTamArray-1].vl_Pgto              := 0;
        Parcela.parcelas[iTamArray-1].dt_Pgto              := DtPagto;

        DataVenc                                       := Now;
        Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
        Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

        Parcela.parcelas[iTamArray-1].dt_vencimento    := DtVenc;
        Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
        DataVenc                                       := DtDoc;

        Parcela.parcelas[iTamArray-1].Status.codigo := 1;
        //if StrToCurr(VlPago) > 0 then
        //   Parcela.parcelas[iTamArray-1].Status.codigo := 2;

        Parcela.Titulo.Cmf.codigo           := 3;
        Parcela.Titulo.tipodocumento.codigo := 1;
        Parcela.Titulo.Setor.codigo         := 4;
        Parcela.Titulo.prepagamento         := Doc;
        Parcela.Titulo.status.codigo        := 1;
        Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

        DecodeDate(DataVenc, wAno, wMes, wDia);

        Parcela.Titulo.no_totalParcelas  := iNParcela;
        Parcela.Titulo.no_diavencimento  := wDia;
        Parcela.Titulo.dt_vencimento     := DataVenc;
        Parcela.Titulo.dt_periodoinicial := DataVenc;
        Parcela.Titulo.dt_periodofinal   := DataVenc;
        Parcela.Titulo.dt_cadastro       := DataVenc;
        Parcela.Titulo.nm_obs            := 'importa��o-'+Doc;

        Parcela.Titulo.usuario.codigo := 1426;

        Parcela.Titulo.contrato.numeroContrato    := 1;
        Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

        if Parcela.Titulo.modalidadePagamento.codigo = 6 then
           Parcela.Titulo.numeroPromissoria := '0'
        else
           Parcela.Titulo.numeroPromissoria := '';

        if DtPagto = 0 then
           Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

        {
        if Parcela.parcelas[iTamArray-1].Status.codigo = 2 then
        begin
          RegistroBaixa.parcela.codigo              := Parcela.codigo;
          RegistroBaixa.parcela.Titulo.prepagamento := '';
          RegistroBaixa.parcela.vl_parcela          := Parcela.parcelas[iTamArray-1].vl_Pgto;
          RegistroBaixa.dt_pagamento                := Parcela.parcelas[iTamArray-1].dt_Pgto;
          RegistroBaixa.no_transacao                := Validar.gerarDigitoZero(IntToStr(Parcela.parcelas[iTamArray-1].codigo), 8);
          RegistroBaixa.historico                   := '';
          RegistroBaixa.status.codigo               := Parcela.parcelas[iTamArray-1].Status.codigo;
          RegistroBaixa.parcela.Titulo.modalidadePagamento.codigo := Parcela.Titulo.modalidadePagamento.codigo;

          RegistroBaixaRN.baixarParcela(RegistroBaixa);
        end;
        }
        iNParcela := 1;
        iTamArray := 0;

        ProgressBar.Position := ProgressBar.Position + 1;
        lbstatus.Caption     := Codigo+' - '+DateToStr(DtVenc);
        lbstatus.Refresh;
        lbstatus.Repaint;
        Codigo    := '';
      end;
    end;
  end;
  ShowMessage('A importa��o foi realizada com �xito.');

  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' CODIGO '+ColunaA);
    end;
  end;
end;

function TfrmPrincipal.getMarca(sMarca: string): string;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: string;
  Validar: TValidar;
begin
  try
    {Monta a query}
    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    Validar := TValidar.Create;

    sSQL := 'select id from marca where codigo = '''+Validar.gerarDigitoZero(sMarca, 4)+''' ';

    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := ZgetModPgto.FieldByName('id').AsString;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
    Validar.Free;
  end;
end;

function TfrmPrincipal.getMarcaPorDescricao(sDescricao: string): string;
var
  zGet: TZQuery;
  sSQL: string;
  id: string;
begin
  try
    {Monta a query}
    zGet := TZQuery.Create(ZQuery);
    zGet.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from marca where upper(descricao) = '''+UpperCase(sDescricao)+''' ';

    zGet.SQL.Text := sSQL;
    zGet.Open;

    id := '9';
    if not zGet.IsEmpty then
       id := zGet.FieldByName('id').AsString;

    result := id;
  finally
    zGet.Close;
  end;
end;

function TfrmPrincipal.getModPgto(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
begin
  try
    {Monta a query}
    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL :=
    'select id from modalidadepagamento where inicial = '''+sString+''' ';

    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := ZgetModPgto.FieldByName('id').AsInteger;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end; 
end;

function TfrmPrincipal.getIdPessoa(sString: string): integer;
var
  Zget: TZQuery;
  sSQL: string;
  iCodigo: integer;
begin
  try
    {Monta a query}
    Zget := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    //sSQL := 'select id from dados where dados.codigoimportacao = '''+sString+''' ';

    sSQL := 'select id from dados where dados.codigoimportacao = '''+sString+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    iCodigo := 0;
    if not Zget.IsEmpty then
       if not Zget.FieldByName('id').IsNull then
          iCodigo := Zget.FieldByName('id').AsInteger;

    result := iCodigo;
  finally
    Zget.Close;
    Zget.Free;
  end;

end;

function TfrmPrincipal.getIdPessoaPORIdentifier(sString: string): integer;
var
  Zget: TZQuery;
  sSQL: string;
  iCodigo: integer;
begin
  try
    Zget := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from dados where dados.identificador = '''+Trim(sString)+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    iCodigo := 0;
    if not Zget.IsEmpty then
       if not Zget.FieldByName('id').IsNull then
          iCodigo := Zget.FieldByName('id').AsInteger;

    result := iCodigo;
  finally
    Zget.Close;
    Zget.Free;
  end;
end;

procedure TfrmPrincipal.Button12Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro, Obs: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Titulos,	Agen,	Conta: string;
  DtDoc,	DtVenc, DtPagto	: TDate;
  VlDoc, VlPago: string;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  pProcessar: boolean;
begin
  try
  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) + 'xls\crbaixado.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  pProcessar       := false;
  for iPlanilha := 1 to 1 do
  begin

    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      ProgressBar.Position := 0;
      ProgressBar.Max      := 6896;

      for i := 2 to Rows.Count do
      begin
        Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

        if Trim(Codigo) = 'FIM' then
           break;

        Obs     := '';
        ColunaA := Trim(Range['A' + IntToStr(I+1), 'A' + IntToStr(I+1)].Value2);

        if ColunaA = 'Obs.:' then
           Obs := removeApost(Trim(Range['B' + IntToStr(I+1), 'B' + IntToStr(I+1)].Value2));

        if ehNumero(Codigo) then
           pProcessar := true;

        if pProcessar or (Codigo = '') then
        begin

        Codigo := removeNumero(Codigo);

        if ehNumero(Codigo) then
        begin
          Doc     := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
          Titulos := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);

          if Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2) <> '' then
             DtDoc   := Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2;

          if Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2) <> '' then
             DtVenc  := Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2;

          if Trim(Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2) <> '' then
             DtPagto  := Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2;

          VlDoc   := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
          VlPago  := Trim(Range['L' + IntToStr(I), 'L' + IntToStr(I)].Value2);

          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          //iModPgto  := getModPgto(Doc);

          iModPgto  := 5;
          if Doc = 'NP' then
             iModPgto := 6;
          if Doc = 'DEP' then
             iModPgto  := 16;
          if Doc = 'VAL' then
             iModPgto  := 8;
          if Doc = 'DUP' then
             iModPgto  := 9;
          if Doc = 'CHP' then
             iModPgto  := 4;
          if Doc = 'CA' then
             iModPgto  := 1;
          if Doc = 'CHC' then
             iModPgto  := 11;
          if (Doc = 'DIN') or (Doc='DCC') or (Doc='DIV') or (Doc='BBB')then
             iModPgto  := 5;

          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].vl_Pgto              := StrToFloat(getLim(VlPago));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          Parcela.parcelas[iTamArray-1].dt_vencimento := DtVenc;

          Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
          Parcela.parcelas[iTamArray-1].dt_Pgto          := DtPagto;
          DataVenc                                       := DtDoc;

          Parcela.parcelas[iTamArray-1].Status.codigo := 2;
          //Inc(iNParcela);
        end;

        if Trim(Codigo) <> '' then
        begin
          Parcela.Titulo.Cmf.codigo           := 3;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := Doc;
          Parcela.Titulo.status.codigo        := 2;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := Obs+#13#10+'importa��o';

          Parcela.Titulo.dados.codigo   := getIdPessoa(Codigo);
          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';


          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          for iTamArray := 0 to Length(Parcela.parcelas) - 1 do
          begin
            RegistroBaixa.parcela.codigo              := Parcela.codigo;
            RegistroBaixa.parcela.Titulo.prepagamento := '';
            RegistroBaixa.parcela.vl_parcela          := Parcela.parcelas[iTamArray].vl_Pgto;
            RegistroBaixa.dt_pagamento                := Parcela.parcelas[iTamArray].dt_Pgto;
            RegistroBaixa.no_transacao                := Validar.gerarDigitoZero(IntToStr(Parcela.parcelas[iTamArray].codigo), 8);
            RegistroBaixa.historico                   := '';
            RegistroBaixa.status.codigo               := Parcela.parcelas[iTamArray].Status.codigo;
            RegistroBaixa.parcela.Titulo.modalidadePagamento.codigo := Parcela.Titulo.modalidadePagamento.codigo;

            RegistroBaixaRN.baixarParcela(RegistroBaixa);
          end;

          iNParcela := 1;
          iTamArray := 0;
          Codigo    := '';
          pProcessar:= false;

         end;
         end;
         ProgressBar.Position := ProgressBar.Position + 1;
     end;

    end;
  end;
  ShowMessage('A importa��o foi realizada com �xito.');
  Button12.Enabled := false;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' linha: '+IntToStr(i));
    end;
  end;
end;

procedure TfrmPrincipal.Button13Click(Sender: TObject);
var
  i, CodigoDados: Integer;
  Validar: TValidar;
  pessoaimpid: integer;
  Codigo: string;
  InsEstadual, Fantasia : string;
  DataCadastro: string;
  sTipo, sFone: string;

  bImportar: boolean;
  ArquivoTXT: TextFile;
  sLinha, sConteudo, Path, sInf: string;
  iCont, iCmf: integer;

  Linhas, Colunas, Dt: TStringList;
  j:integer;
  {Primeira Linha}
  Tp,Nome,Apel, CpfCnpj: string;
  {Segunda Linha}
  Ende, No, Bairro, Cep, Cidade, Uf: string;
  {Terceira Linha}
  Cob, CobNo, CobBairro, CobCep, CobCidade, CobUf: string;
  {Quarta Linha}
  Nasc, Fone, Fax, Comp, Email, RI, Lim: string;
  {Quinta Linha}
  CFis, Cat, DescCat, RotaVen, RotaCob: string;
  {Sexta Linha}
  Obs, sStatus: string;
  bPessoa: boolean;

  Emp, Doc, Titulo, Agen, Conta: string;
  DtDoc,	DtVenc, DtPagto: string;
  VlDoc, VlMulta, VlJuros, VlDesc, VlDev, VlPago: string;
  Al, Atz, EpBx, Baixapor, DtDocDtVenc: string;

  Titulos: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  iTamArray, iNParcela, iModPgto: integer;

  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
begin
  try
  Titulos         := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
  ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)');

  ZQPF.SQL.Clear;
  ZQPF.SQL.Add('INSERT INTO public.dadospessoafisica                           ');
  ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs)  ');
  ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs) ');

  ZQPJ.SQL.Clear;
  ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (  ');
  ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,      ');
  ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal, ');
  ZQPJ.SQL.Add(' usuariasistema, statusid, obs )          ');
  ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,    ');
  ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal, ');
  ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs)                 ');

  ZQPIMP.SQL.Clear;
  ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
  ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

  ZQEND.SQL.Clear;
  ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro, ');
  ZQEND.SQL.Add('cidadeimport, estadoimport, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
  ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,   ');
  ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)   ');

  ZQTel.SQL.Clear;
  ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
  ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

  ZQCli.SQL.Clear;
  ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

  ZQDV.SQL.Clear;
  ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid ) ');
  ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid )                         ');

  ZQEmail.SQL.Clear;
  ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
  ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid) ');

  ZQCatCli.SQL.Clear;
  ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
  ZQCatCli.SQL.Add(':id, :descricao) ');

  ZQCMF.Close;
  ZQCMF.SQL.Clear;
  ZQCMF.SQL.Add('insert into cmf (descricao, grupocmfid) ');
  ZQCMF.SQL.Add(' values (:descricao, :grupocmfid)       ');

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';

  Path    := ExtractFilePath(Application.ExeName) + 'PgtoFornecedor.txt';

  Linhas  := TStringList.Create;
  Colunas := TStringList.Create;
  Dt      := TStringList.Create;

  iNParcela        := 1;
  iTamArray        := 0;
  try
    Linhas.LoadFromFile(Path);

    ProgressBar.Position := 0;
    ProgressBar.Max      := Linhas.Count;

    for i := 0 to Pred(Linhas.Count) do
    begin
      Colunas.text := Trim(StringReplace(Linhas.Strings[i], '', #13, [rfReplaceAll]));

      sTipo := Colunas.text;

      Tp    := Trim(getString(Trim(sTipo), 1));
      Delete(sTipo, 1, length(tp));
      sTipo := Trim(sTipo);

      if Copy(sTipo, 1, 1) = ':' then
         Delete(sTipo, 1, 1);

      if Tp = 'Nome' then
      begin
        bPessoa := false;
        iCmf    := 0;
        Codigo := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Codigo));
        sTipo := Trim(sTipo);

        Nome := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Nome));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, 6);
        sTipo := Trim(sTipo);

        Apel := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Apel));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, 9);

        CpfCnpj := Trim(getNome(Trim(sTipo)));

        if Codigo = '15279' then
           showmessage(codigo); 

      end;

      if Tp = 'Fone:' then
      begin
        bPessoa := true;
        if Nome = 'PAGAMENTOS DIVERSOS' then
           bPessoa := false;

        iCmf    := 80;

        Fone := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Fone));
        sTipo := Trim(sTipo);
        if Trim(Fone) = '(' then
        begin
          Fone := Fone + Trim(getNome(Trim(sTipo)));
          Delete(sTipo, 1, 1);
          sTipo := Trim(sTipo);
        end;
        Delete(sTipo, 1, 4);

        Fax := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Fax));
        sTipo := Trim(sTipo);
        if Trim(Fax) = '(' then
        begin
          Fax := Fax + Trim(getNome(Trim(sTipo)));
          Delete(sTipo, 1, 1);
          sTipo := Trim(sTipo);
        end;
        Delete(sTipo, 1, 6);

        Email := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Email));
        sTipo := Trim(sTipo);

        if Email = 'Rg/IE:' then
        begin
          Email := '';
          RI := Trim(getNome(Trim(sTipo)));
        end
        else
        begin
          Delete(sTipo, 1, 6);
          RI := Trim(getNome(Trim(sTipo)));
        end
      end;

      if Tp = 'End.:' then
      begin
        bPessoa := true;

        if Nome = 'PAGAMENTOS DIVERSOS' then
           bPessoa := false;

        iCmf    := 80;

        Ende := Trim(getNome(Trim(sTipo)));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Ende));
        sTipo := Trim(sTipo);

        if Copy(Ende, 1, 3) <> 'No:' then
        begin
        Delete(sTipo, 1, 3);
        sTipo := Trim(sTipo);

        No := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(No));
        sTipo := Trim(sTipo);

        if No <> 'Bairro:' then
        begin
          Delete(sTipo, 1, 7);
          sTipo := Trim(sTipo);
        end
        else
          No := 's/n';

        Bairro := Trim(getString(Trim(sTipo), 2));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Bairro));
        sTipo := Trim(sTipo);

        if Bairro <> 'Cep:' then
        begin
          Delete(sTipo, 1, 4);
          sTipo := Trim(sTipo);
        end
        else
          Bairro := '';

        Cep := Trim(getString(Trim(sTipo), 2));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Cep));
        sTipo := Trim(sTipo);

        if Cep <> 'Cidade:' then
        begin
          Delete(sTipo, 1, 7);
          sTipo := Trim(sTipo);
        end
        else
          Cep := '';

        Cidade := Trim(getString(Trim(sTipo), 2));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Cidade));
        sTipo := Trim(sTipo);

        if Cidade <> 'Uf:' then
        begin
          Delete(sTipo, 1, 3);
          sTipo := Trim(sTipo);
        end
        else
          Cidade := '';

        Uf := Trim(getNome(Trim(sTipo)));
        end;
      end;

      if Tp = '001' then
      begin
        {
        Emp, Doc, Titulo, Agen, Conta: string
        DtDoc,	DtVenc, DtPagto: TDate;
        VlDoc, VlMulta, VlJuros, VlDesc, VlDev, VlPago: string;
        Al, Atz, EpBx, Baixapor: string;
        Emp Doc T�tulo Ag�n  Conta Dt.Venc. Dt.Doc Vl.Doc.  Al Atz Ep.Bx Dt.Pagto Baixa por: Vl.Multa Vl.Juros Vl.Desc. Vl.Dev. Vl.Pago
        001   DP 000000256391 0 19/5/2008 22/4/2008 474,61  0 0 001 19/5/2008 TOTAL 0,00 0,00 0,00 0,00 474,61
        }
        Doc := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Doc));
        sTipo := Trim(sTipo);

        Titulo := Trim(getString(Trim(sTipo), 2));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Titulo));
        sTipo := Trim(sTipo);

        Agen := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Agen));
        sTipo := Trim(sTipo);

        if Length(Agen) = 12 then
        begin
          Conta := Copy(Agen, 2, 11);
          Agen  := Copy(Agen, 1, 1);
        end
        else
        begin
          Conta := '0';
          Agen  := '0';
        end;

        //15/10/200816/9/2008

        DtDocDtVenc := Trim(getString(Trim(sTipo), 1));

        if Length(DtDocDtVenc) > 10 then
        begin
          Dt.Text := Trim(StringReplace(DtDocDtVenc, '/', #13, [rfReplaceAll]));

          DtDoc  := Dt[0]+'/'+Dt[1]+'/'+Copy(Dt[2], 1, 4);
          DtVenc := Copy(Dt[2], 5, 2)+'/'+Dt[3]+'/'+Dt[4];

          Delete(sTipo, 1, length(DtDocDtVenc));
          sTipo := Trim(sTipo);

        end
        else
        begin
          DtVenc := Trim(getString(Trim(sTipo), 1));
          sTipo := Trim(sTipo);
          Delete(sTipo, 1, length(DtVenc));
          sTipo := Trim(sTipo);

          DtDoc := Trim(getString(Trim(sTipo), 1));
          sTipo := Trim(sTipo);
          Delete(sTipo, 1, length(DtDoc));
          sTipo := Trim(sTipo);
        end;

        VlDoc := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(VlDoc));
        sTipo := Trim(sTipo);

        Al := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Al));
        sTipo := Trim(sTipo);

        Atz := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Atz));
        sTipo := Trim(sTipo);

        EpBx := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(EpBx));
        sTipo := Trim(sTipo);

        DtPagto := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(DtPagto));
        sTipo := Trim(sTipo);

        Baixapor := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(Baixapor));
        sTipo := Trim(sTipo);

        VlMulta := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(VlMulta));
        sTipo := Trim(sTipo);

        VlJuros := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(VlJuros));
        sTipo := Trim(sTipo);

        VlDesc := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(VlDesc));
        sTipo := Trim(sTipo);

        VlDev := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(VlDev));
        sTipo := Trim(sTipo);

        VlPago := Trim(getString(Trim(sTipo), 1));
        sTipo := Trim(sTipo);
        Delete(sTipo, 1, length(VlPago));
        sTipo := Trim(sTipo);

        Tp := Trim(getString(Trim(Linhas.Strings[i+1]), 1));

        if ((Tp <> '001') and (Tp <> 'End.:') and (Tp <> 'Fone:') and (Tp <> 'Nome')) then
           obs := Trim(Linhas.Strings[i+1]);

        if Obs = 'telefone fixo 03/2010' then
           showMessage(Obs);

        bImportar := true;
      end;

      CodigoDados := 1426;
      if (bImportar) then
      begin
        bImportar := false;

        if (bPessoa) then
        begin
          bPessoa := false;

          CodigoDados := getCodigoPessoa(removeNumero(CpfCnpj));

          if CodigoDados = 0 then
          begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;

          if (CodigoDados = 1426) or (CodigoDados = 1428) then
          begin
            ZQDados.Close;
            ZQDados.SQL.Clear;
            ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
            ZQDados.Open;

            CodigoDados := ZQDados.FieldByName('id').AsInteger;
          end;

          ZQPessoaImp.Close;
          ZQPessoaImp.SQL.Clear;
          ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
          ZQPessoaImp.Open;

          pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

          if (pessoaimpid = 1428) or (pessoaimpid = 1433)then
          begin
            ZQPessoaImp.Close;
            ZQPessoaImp.SQL.Clear;
            ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
            ZQPessoaImp.Open;
          end;

          pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

          ZQuery.Close;
          ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
          ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

          if DataCadastro = '' then
             ZQuery.ParamByName('cad').AsDate := Now
          else
             ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

          ZQuery.ParamByName('codigoimportacao').AsString := Codigo;
          ZQuery.ParamByName('categoriaid').Clear;
          ZQuery.ExecSQL;

          {
          try
            ZQCatCli.Close;
            ZQCatCli.ParamByName('id').AsInteger       := StrToInt(Cat);
            ZQCatCli.ParamByName('descricao').AsString := DescCat;
            ZQCatCli.ExecSQL;
          except
          end;
          }

          Tp := 'F';
          if Length(removeNumero(CpfCnpj)) > 11 then
             Tp := 'J';

          sTipo := Tp;
          ZQPIMP.Close;
          ZQPIMP.ParamByName('id').AsInteger      := pessoaimpid;
          ZQPIMP.ParamByName('dadosid').AsInteger := CodigoDados;
          ZQPIMP.ParamByName('status').AsInteger  := 1;
          ZQPIMP.ExecSQL;

          {
          ZQCli.Close;
          ZQCli.ParamByName('id').AsInteger             := pessoaimpid;
          ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
          ZQCli.ExecSQL;
          }

          ZQDV.Close;
          ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
          ZQDV.ParamByName('vinculoid').AsInteger := 4;
          ZQDV.ExecSQL;

          if Email <> '' then
          begin
            ZQEmail.Close;
            ZQEmail.ParamByName('descricao').AsString      := Email;
            ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
            ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
            ZQEmail.ExecSQL;
          end;

          ZQEND.Close;
          ZQEND.ParamByName('logradouro').AsString      := Ende;
          ZQEND.ParamByName('complemento').AsString     := '';
          ZQEND.ParamByName('bairro').AsString          := Bairro;
          ZQEND.ParamByName('cidade').AsString          := Cidade;
          ZQEND.ParamByName('estado').AsString          := Uf;
          ZQEND.ParamByName('cep').AsString             := removeNumero(Cep);
          ZQEND.ParamByName('tipoenderecoid').AsInteger := 2;
          ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
          ZQEND.ParamByName('paisid').AsInteger         := 1;
          ZQEND.ParamByName('isnotafiscal').AsString    := '1';
          ZQEND.ParamByName('numero').AsString          := No;
          ZQEND.ExecSQL;

          {
          ZQEND.Close;
          ZQEND.ParamByName('logradouro').AsString      := Cob;
          ZQEND.ParamByName('complemento').AsString     := '';
          ZQEND.ParamByName('bairro').AsString          := CobBairro;
          ZQEND.ParamByName('cidade').AsString          := CobCidade;
          ZQEND.ParamByName('estado').AsString          := CobUf;
          ZQEND.ParamByName('cep').AsString             := removeNumero(CobCep);
          ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
          ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
          ZQEND.ParamByName('paisid').AsInteger         := 1;
          ZQEND.ParamByName('isnotafiscal').AsString    := '0';
          ZQEND.ParamByName('numero').AsString          := CobNo;
          ZQEND.ExecSQL;
          }
          sFone := '';
          if Trim(Fone) <> '' then
          begin
            sFone := removeNumero(Fone);

            ZQTel.Close;
            ZQTel.ParamByName('ddd').Clear;
            ZQTel.ParamByName('numero').Clear;
            ZQTel.ParamByName('tipoenderecoid').Clear;
            ZQTel.ParamByName('dadosid').Clear;

            if length(sFone) > 8 then
               ZQTel.ParamByName('ddd').AsInteger := StrToInt(dddTel(sFone, 2));

            if length(sFone) >=8  then
               ZQTel.ParamByName('numero').AsInteger := StrToInt(dddTel(sFone, 8));

            ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
            ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
            ZQTel.ExecSQL;
          end;

          sFone := '';
          if Trim(Fax) <> '' then
          begin
            sFone := removeNumero(Fax);

            ZQTel.Close;
            ZQTel.ParamByName('ddd').Clear;
            ZQTel.ParamByName('numero').Clear;
            ZQTel.ParamByName('tipoenderecoid').Clear;
            ZQTel.ParamByName('dadosid').Clear;

            if length(sFone) > 8 then
               ZQTel.ParamByName('ddd').AsInteger := StrToInt(dddTel(sFone, 2));

            if length(sFone) >= 8 then
               ZQTel.ParamByName('numero').AsInteger := StrToInt(dddTel(sFone, 8));

            ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
            ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
            ZQTel.ExecSQL;
          end;

          sStatus := '18';
          if Cat = '4' then
             sStatus := '19';

          if sTipo = 'F' then
          begin
            ZQPF.Close;
            ZQPF.ParamByName('id').AsInteger       := CodigoDados;
            ZQPF.ParamByName('nome').AsString      := Trim(Nome);
            ZQPF.ParamByName('apelido').AsString   := Trim(Apel);
            ZQPF.ParamByName('statusid').AsInteger := StrToInt(sStatus);
            ZQPF.ParamByName('obs').Clear;

            if Nasc = '' then
               ZQPF.ParamByName('datanascimento').Clear
            else
               ZQPF.ParamByName('datanascimento').AsDate := StrToDate(Nasc);

            ZQPF.ParamByName('rg').AsString := RI;

            ZQPF.ParamByName('sexo').Clear;
            ZQPF.ExecSQL;
          end;

          if sTipo = 'J' then
          begin
            ZQPJ.Close;
            ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
            ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
            ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
            ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
            ZQPJ.ParamByName('contato').AsString            := '';
            ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
            ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
            ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
            ZQPJ.ParamByName('obs').Clear;
            ZQPJ.ExecSQL;

            {
            ZQDV.Close;
            ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
            ZQDV.ParamByName('vinculoid').AsInteger := 1;
            ZQDV.ExecSQL;
            }

          end;
          end;
        end;

        if iCmf <> 80 then
        begin
          iCmf := getCMF(Trim(Nome));

          if iCmf = 0 then
          begin
            ZQCMF.Close;
            ZQCMF.ParamByName('descricao').AsString   := Nome;
            ZQCMF.ParamByName('grupocmfid').asInteger := 1;
            ZQCMF.ExecSQL;

            ZQSEQCMF.Close;
            ZQSEQCMF.SQL.Clear;
            ZQSEQCMF.SQL.Text := 'select currval(''public.cmf_id_seq'') as id ';
            ZQSEQCMF.Open;

            iCmf := ZQSEQCMF.FieldByName('id').AsInteger;
          end;
        end;

        if Trim(Codigo) <> '' then
        begin
          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := getModPgto(Doc);
          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].vl_Pgto              := StrToFloat(getLim(VlPago));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          Parcela.parcelas[iTamArray-1].dt_vencimento := StrToDate(DtVenc);

          Parcela.parcelas[iTamArray-1].dt_cadastramento := StrToDate(DtDoc);
          Parcela.parcelas[iTamArray-1].dt_Pgto          := StrToDate(DtPagto);
          DataVenc                                       := StrToDate(DtDoc);

          Parcela.parcelas[iTamArray-1].Status.codigo := 2;

          Parcela.Titulo.Cmf.codigo           := iCmf;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := Doc;
          Parcela.Titulo.status.codigo        := 2;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := obs+#13#10+'importa��o';

          Parcela.Titulo.dados.codigo   := CodigoDados;
          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          for iTamArray := 0 to Length(Parcela.parcelas) - 1 do
          begin
            RegistroBaixa.parcela.codigo              := Parcela.parcelas[iTamArray].codigo;
            RegistroBaixa.parcela.Titulo.prepagamento := '';
            RegistroBaixa.parcela.vl_parcela          := Parcela.parcelas[iTamArray].vl_Pgto;
            RegistroBaixa.dt_pagamento                := Parcela.parcelas[iTamArray].dt_Pgto;
            RegistroBaixa.no_transacao                := Validar.gerarDigitoZero(IntToStr(Parcela.parcelas[iTamArray].codigo), 8);
            RegistroBaixa.historico                   := '';
            RegistroBaixa.status.codigo               := Parcela.parcelas[iTamArray].Status.codigo;
            RegistroBaixa.parcela.Titulo.modalidadePagamento.codigo := Parcela.Titulo.modalidadePagamento.codigo;

            RegistroBaixaRN.baixarParcela(RegistroBaixa);
          end;

          iNParcela := 1;
          iTamArray := 0;

        end;

      end;
      ProgressBar.Position := i;

    end;
  finally
    Linhas.Free;
    Colunas.Free;
  end;

  ZConnection.Commit;
  ShowMessage('A importa��o foi realizada com �xito.');
  Button13.Enabled := false;
  except
    on E:Exception do
    begin
      ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;

end;

function TfrmPrincipal.getString(sString: string; iEsp: integer): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '   ';

  sNum := '';
  x    := 0;
  for i := 1 to Length(sString) do
  begin
    if sString[i] = ' ' then
       Inc(x)
    else
       x := 0;

    if x = iEsp then
    begin
      x := 0;
      break;
    end;

    sNum := sNum + sString[i];
  end;

  result := sNum;

end;

function TfrmPrincipal.getSusbSecao(sDescricao: string): integer;
var
  Zget: TZQuery;
  sSQL: string;
  id: integer;
begin
  try
    Zget := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    if sDescricao = '' then
       id := 3
    else
    begin
      sSQL := 'select id from subsecao where descricao = '''+sDescricao+''' ';

      Zget.SQL.Text := sSQL;
      Zget.Open;
      if not Zget.IsEmpty then
         id := Zget.FieldByName('id').AsInteger
      else
      begin
        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text :=
        'insert into subsecao(descricao, secaoid, tabelaimpostosid ) '+
        'values ('''+sDescricao+''', 2, 0)';
        Zget.ExecSQL;

        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text := 'select last_value from subsecao_id_seq';
        Zget.Open;

        id := Zget.FieldByName('last_value').AsInteger;
      end;
    end;

    result := id;
  finally
    Zget.Close;
    Zget.Free;
  end;
end;

function TfrmPrincipal.gettGRUPO(sDescricao: string): integer;
var
  Zget: TZQuery;
  sSQL: string;
  id: integer;
  Validar: TValidar;
begin
  try
    Zget := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    Validar := TValidar.Create;

    if sDescricao = '' then
       id := 1006
    else
    begin
      sSQL := 'select id from tipoproduto where descricao = '''+sDescricao+''' ';

      Zget.SQL.Text := sSQL;
      Zget.Open;
      if not Zget.IsEmpty then
         id := Zget.FieldByName('id').AsInteger
      else
      begin
        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text :=
        'insert into tipoproduto(descricao) '+
        'values ('''+sDescricao+''')';
        Zget.ExecSQL;

        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text := 'select last_value from tipoproduto_id_seq';
        Zget.Open;

        id := Zget.FieldByName('last_value').AsInteger;

        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text := 'update tipoproduto set codigo = '''+validar.gerarDigitoZero(IntToStr(id), 3)+''' where id = '''+IntToStr(id)+'''; ';
        Zget.ExecSQL;
      end;
    end;

    result := id;
  finally
    Zget.Close;
    Zget.Free;
    Validar.Free;
  end;

end;

function TfrmPrincipal.getFamilia(sDescricao: string): integer;
var
  Zget: TZQuery;
  sSQL: string;
  id: integer;
  Validar: TValidar;
begin
  try
    Zget := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    Validar := TValidar.Create;

    if sDescricao = '' then
       id := 1
    else
    begin
      sSQL := 'select id from familiaproduto where descricao = '''+sDescricao+''' ';

      Zget.SQL.Text := sSQL;
      Zget.Open;
      if not Zget.IsEmpty then
         id := Zget.FieldByName('id').AsInteger
      else
      begin
        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text :=
        'insert into familiaproduto(descricao) '+
        'values ('''+sDescricao+''')';
        Zget.ExecSQL;

        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text := 'select last_value from familiaproduto_id_seq';
        Zget.Open;

        id := Zget.FieldByName('last_value').AsInteger;

        Zget.Close;
        Zget.SQL.Clear;
        Zget.SQL.Text := 'update familiaproduto set codigo = '''+validar.gerarDigitoZero(IntToStr(id), 3)+''' where id = '''+IntToStr(id)+'''; ';
        Zget.ExecSQL;
      end;
    end;

    result := id;
  finally
    Zget.Close;
    Zget.Free;
    Validar.Free;
  end;

end;

function TfrmPrincipal.getCMF(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
begin
  try
    {Monta a query}
    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from cmf where descricao = '''+sString+''' ';

    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := 0;
    if not ZgetModPgto.IsEmpty then
       id := ZgetModPgto.FieldByName('id').AsInteger;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end;

end;

function TfrmPrincipal.getCodigoPessoa(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
begin
  try
    { Monta a query }
    ZgetModPgto            := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from dados where identificador = '''+sString+''' ';

    ZgetModPgto.Close;
    ZgetModPgto.SQL.Clear;
    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := 0;
    if not ZgetModPgto.IsEmpty then
       id := ZgetModPgto.FieldByName('id').AsInteger;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end;
end;

procedure TfrmPrincipal.Button14Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    //ZConnection.StartTransaction;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +
    'Banco.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into banco(descricao) ');
    ZQuery.SQL.Add('values (:descricao)               ');

    iNParcela        := 1;
    iTamArray        := 0;
    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 2 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          try
            StrToInt(ColunaA);
            if ColunaF <> '' then
            begin
            ZQuery.Close;
            //ZQuery.ParamByName('id').AsInteger       := StrToInt(ColunaA);
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ExecSQL;
            end;
          except

          end;

          ColunaA := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

          try
            StrToInt(ColunaA);
            if ColunaF <> '' then
            begin
            ZQuery.Close;
            //ZQuery.ParamByName('id').AsInteger       := StrToInt(ColunaA);
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ExecSQL;
            end;
          except

          end;
        if ColunaA = 'Qtde  Total  :  125' then
           break;

        end;
    end;
    if ColunaA = 'Qtde  Total  :  125' then
       break;

    end;

    ShowMessage('Importou');
  except
    on E:Exception do
    begin
      //ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmPrincipal.Button15Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF, ColunaH: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    //ZConnection.StartTransaction;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +
    'cfop.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into cfop (codigo, descricao, aplicacao) ');
    ZQuery.SQL.Add('values (:codigo, :descricao, :aplicacao)         ');


    iNParcela        := 1;
    iTamArray        := 0;
    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 2 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          ColunaH := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);

          try
            StrToInt(ColunaA);
            ZQuery.Close;
            ZQuery.ParamByName('codigo').AsString    := ColunaA;
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ParamByName('aplicacao').AsString := ColunaH;
            ZQuery.ExecSQL;
          except

          end;

         { ColunaA := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

          try
            StrToInt(ColunaA);
            if ColunaF <> '' then
            begin
            ZQuery.Close;
            //ZQuery.ParamByName('id').AsInteger       := StrToInt(ColunaA);
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ExecSQL;
            end;
          except 

          end;}
        if ColunaA = '0' then
           break;

        end;
    end;
    if ColunaA = '0' then
       break;

    end;

    ShowMessage('Importou');
  except
    on E:Exception do
    begin
      //ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;


end;

procedure TfrmPrincipal.Button16Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF: string;
  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    //ZConnection.StartTransaction;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +
    'cst.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into cst (codigo, descricao) ');
    ZQuery.SQL.Add(' VALUES (:codigo, :descricao)       ');

    iNParcela        := 1;
    iTamArray        := 0;
    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 2 to Rows.Count do
        begin
          ColunaA := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

          try
            StrToInt(ColunaA);
            if ColunaF <> '' then
            begin
            ZQuery.Close;
            ZQuery.ParamByName('codigo').AsString    := ColunaA;
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ExecSQL;
            end;
          except

          end;

          ColunaA := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          ColunaF := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);

          try
            StrToInt(ColunaA);
            if ColunaF <> '' then
            begin
            ZQuery.Close;
            ZQuery.ParamByName('codigo').AsString    := ColunaA;
            ZQuery.ParamByName('descricao').AsString := ColunaF;
            ZQuery.ExecSQL;
            end;
          except

          end;
        if ColunaA = '0' then
           break;

        end;
    end;
    if ColunaA = '0' then
       break;

    end;

    ShowMessage('Importou');
  except
    on E:Exception do
    begin
      //ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;


end;

procedure TfrmPrincipal.Button17Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  Codigo, CodigoBarra, Nome, SubGrupo, Marca, Cst, IcmsAliquota, PrecoVenda: string;
  ColunaA, ColunaF, ColunaH: string;

  EntQtde, EntVl, EntVlTotal, SaiQtde, SaiVl, SaiVlTotal: string;

  bImportou: boolean;
  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  sPedidoArqHis, sPedidoArqHis2, sStatus, sValor, sBalanca: string;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
begin
  try
    LCID     := GetUserDefaultLCID;
    Validar  := TValidar.Create;
    Produto  := TProduto.Create;
    ProdutoRN:= TProdutoRN.Create;

    //ZConnection.StartTransaction;

    WKBK := ExcelApplication1.Workbooks.Open(
    ExtractFilePath(Application.ExeName) +
    'piscofins.xls', EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, LCID);

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into importpiscofins (produtoid, qtdeentrada, valorentrada, totalentrada, ');
    ZQuery.SQL.Add('qtdesaida, valorsaida, totalsaida ) values (                        ');
    ZQuery.SQL.Add(':produtoid, :qtdeentrada, :valorentrada, :totalentrada, :qtdesaida, ');
    ZQuery.SQL.Add(':valorsaida, :totalsaida )                                          ');

    iNParcela        := 1;
    iTamArray        := 0;
    for iPlanilha := 1 to 1 do
    begin
      bImportou := true;
      { Conecta a planilha (1) que ser� a planilha a receber os dados }
      ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
      { Ativa a planilha conectada }
      ExcelWorksheet1.Activate(LCID);
      { Torna poss�vel fazer altera��es }
      ExcelApplication1.ScreenUpdating[LCID] := True;

      with ExcelWorksheet1 do
      begin
        for i := 2 to Rows.Count do
        begin
          Codigo     := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
          EntQtde    := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
          EntVl      := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          EntVlTotal := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
          SaiQtde    := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);

          if Length(EntVlTotal) > 8 then
          begin
            ColunaA := EntVlTotal;

            Cont := Pos(',', ColunaA);

            EntVlTotal := System.Copy(ColunaA, 1, (Cont+2));

            System.Delete(ColunaA, 1, Length(EntVlTotal));
            SaiQtde := ColunaA;
          end;

          //5.996,209.925,000
          //747,621.452,000

          SaiVl      := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);
          SaiVlTotal := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);

          if Codigo = '0' then
             break;
          try
            StrToInt(Codigo);
            ZQuery.Close;
            ZQuery.ParamByName('produtoid').AsInteger  := getIdProduto(Codigo);
            ZQuery.ParamByName('qtdeentrada').AsFloat  := StrToFloat(getLim(EntQtde));
            ZQuery.ParamByName('valorentrada').AsFloat := StrToFloat(getLim(EntVl));
            ZQuery.ParamByName('totalentrada').AsFloat := StrToFloat(getLim(EntVlTotal));
            ZQuery.ParamByName('qtdesaida').AsFloat    := StrToFloat(getLim(SaiQtde));
            ZQuery.ParamByName('valorsaida').AsFloat   := StrToFloat(getLim(SaiVl));
            ZQuery.ParamByName('totalsaida').AsFloat   := StrToFloat(getLim(SaiVlTotal));
            ZQuery.ExecSQL;
          except
            on E:Exception do
            begin
              //ShowMessage(E.Message);
            end;
          end;

         
        if Codigo = '0' then
           break;

        end;
    end;
    if Codigo = '0' then
       break;

    end;

    ShowMessage('Importou');
  except
    on E:Exception do
    begin
      //ZConnection.Rollback;
      ShowMessage(E.Message);
    end;
  end;

end;

function TfrmPrincipal.getIdProduto(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
  Validar: TValidar;
begin
  try
    {Monta a query}

    Validar :=  TValidar.Create;

    ZgetModPgto := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from produto where codigo = '''+Validar.gerarDigitoZero(sString, 8)+''' ';

    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := 0;
    if not ZgetModPgto.IsEmpty then
       id := ZgetModPgto.FieldByName('id').AsInteger;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
    Validar.Free;
  end;

end;

procedure TfrmPrincipal.Button18Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro, Obs: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Titulos,	Agen,	Conta, cpfcnpj, nome: string;
  DtDoc,	DtVenc, DtPagto	: TDate;
  VlDoc, VlPago: string;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  RegistroBaixa: TRegistroBaixa;
  RegistroBaixaRN: TRegistroBaixaRN;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
begin
  try
  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +
  'DebitoFornecedor.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  for iPlanilha := 1 to 1 do
  begin

    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        Codigo := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        CpfCnpj:= Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2);
        Nome   := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

        if Codigo = '15402' then
           showmessage(codigo);

        Obs     := '';
        ColunaA := System.Copy(Trim(Range['A' + IntToStr(I+1), 'A' + IntToStr(I+1)].Value2), 1, 5);

        if ColunaA = 'Obs.:' then
        begin
          Obs := Trim(Range['A' + IntToStr(I+1), 'A' + IntToStr(I+1)].Value2);
          System.Delete(Obs, 1, 5);
        end;

        Codigo := removeNumero(Codigo);

        if Trim(Codigo) <> '' then
        begin
          Doc     := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);
          Titulos := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

          if Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2) <> '' then
             DtDoc   := Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2;

          if Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2) <> '' then
             DtVenc  := Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2;


          VlDoc   := Trim(Range['L' + IntToStr(I), 'L' + IntToStr(I)].Value2);

          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := getModPgto(Doc);
          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          Parcela.parcelas[iTamArray-1].dt_vencimento := DtVenc;

          Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
          DataVenc                                       := DtDoc;

          Parcela.parcelas[iTamArray-1].Status.codigo := 1;
          //Inc(iNParcela);
        end;

        if Trim(Codigo) <> '' then
        begin
          Parcela.Titulo.Cmf.codigo := 80;

          if CpfCnpj = '' then
             Parcela.Titulo.Cmf.codigo := getCMF(Nome);

          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := Doc;
          Parcela.Titulo.status.codigo        := 1;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := Obs+#13#10+' importa��o';

          Parcela.Titulo.dados.codigo := 1426;
          
          if CpfCnpj <> '' then
             Parcela.Titulo.dados.codigo := getCodigoPessoa(removeNumero(CpfCnpj));

          Parcela.Titulo.usuario.codigo := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';


          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          iNParcela := 1;
          iTamArray := 0;
          Codigo    := '';
        end;

        if Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2) = 'M�dia/Atz:' then
           break;
     end;
    end;

    if iPlanilha = 1 then
       Break;

  end;

  ShowMessage('A importa��o foi realizada com �xito.');
  
  Button18.Enabled := false;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' codigo:'+Titulos);
    end;
  end;
end;

function TfrmPrincipal.getCodigoPessoaFornecedor(sString: string): integer;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: integer;
begin
  try
    {Monta a query}
    ZgetModPgto            := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL :=
    'select dados.id from dadosvinculo            '+
    'join dados on dados.id=dadosvinculo.dadosid  '+
    'where vinculoid=4 and dados.codigoimportacao = '''+sString+''' ';

    ZgetModPgto.Close;
    ZgetModPgto.SQL.Clear;
    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := 0;
    if not ZgetModPgto.IsEmpty then
       id := ZgetModPgto.FieldByName('id').AsInteger;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end;

end;

procedure TfrmPrincipal.Button19Click(Sender: TObject);
var
  CodigoDados, pessoaimpid: integer;
  sTipo: string;
begin
  try
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
  ZQuery1.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)');

  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add(' INSERT INTO public.dadospessoafisica                       ');
  ZQuery2.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)    ');
  ZQuery2.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

  ZQuery3.SQL.Clear;
  ZQuery3.SQL.Add('INSERT INTO public.dadospessoajuridica (               ');
  ZQuery3.SQL.Add('id, inscricaoestadual, nomefantasia,                   ');
  ZQuery3.SQL.Add('razaosocial, contato, inscricaomunicipal,              ');
  ZQuery3.SQL.Add(' usuariasistema, statusid, obs, tipocliente )          ');
  ZQuery3.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,        ');
  ZQuery3.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,     ');
  ZQuery3.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente)  ');

  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
  ZQuery4.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

  ZQuery5.SQL.Clear;
  ZQuery5.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro, ');
  ZQuery5.SQL.Add('cidadeimport, estadoimport, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
  ZQuery5.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,   ');
  ZQuery5.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)   ');

  ZQuery6.SQL.Clear;
  ZQuery6.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
  ZQuery6.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

  ZQuery7.SQL.Clear;
  ZQuery7.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro, limitedisponivel) VALUES (:id, :limitefinanceiro, :limitedisponivel) ');

  ZQuery8.SQL.Clear;
  ZQuery8.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid ) ');
  ZQuery8.SQL.Add(' VALUES (:dadosid, :vinculoid )                         ');

  ZQuery9.SQL.Clear;
  ZQuery9.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
  ZQuery9.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

  ZQuery10.SQL.Clear;
  ZQuery10.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
  ZQuery10.SQL.Add(':id, :descricao) ');

  ZQSeqDados.Close;
  ZQSeqDados.SQL.Clear;
  ZQSeqDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';

  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Text := 'select * from vw_pessoas';
  zGet.Open;

  ZQuery.Close;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Text := 'select * from vw_pessoas';
  ZQuery.Open;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 12387;

  while not zGet.Eof do
  begin
    if not ZQuery.Locate('nome, identificador', VarArrayOf([Trim(zGet.FieldByName('nome').AsString),
                                                            Trim(zGet.FieldByName('identificador').AsString)]), []) then
    begin
      ZQSeqDados.Close;
      ZQSeqDados.Open;

      CodigoDados := ZQSeqDados.FieldByName('id').AsInteger;

      ZQuery17.Close;
      ZQuery17.SQL.Clear;
      ZQuery17.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
      ZQuery17.Open;

      pessoaimpid := ZQuery17.FieldByName('id').AsInteger;

      ZQDados.Close;
      ZQDados.SQL.Clear;
      ZQDados.SQL.Text := 'select * from dados where id = '+zGet.FieldByName('id').AsString;
      ZQDados.Open;

      ZQuery1.Close;
      ZQuery1.ParamByName('id').AsString               := IntToStr(CodigoDados);
      ZQuery1.ParamByName('ident').AsString            := ZQDados.FieldByName('identificador').AsString;
      ZQuery1.ParamByName('cad').AsDate                := Now;
      ZQuery1.ParamByName('codigoimportacao').AsString := ZQDados.FieldByName('codigoimportacao').AsString;
      ZQuery1.ParamByName('categoriaid').AsInteger     := ZQDados.FieldByName('categoriaid').AsInteger;
      ZQuery1.ExecSQL;

      sTipo := zGet.FieldByName('tipo').AsString;

      ZQuery4.Close;
      ZQuery4.ParamByName('id').AsInteger      := pessoaimpid;
      ZQuery4.ParamByName('dadosid').AsInteger := CodigoDados;
      ZQuery4.ParamByName('status').AsInteger  := 1;
      ZQuery4.ExecSQL;

      ZQCli.Close;
      ZQCli.SQL.Clear;
      ZQCli.SQL.Text := 'select cliente.limitedisponivel,cliente.limitefinanceiro from  '+
                        'cliente join pessoaimpl on pessoaimpl.id=cliente.id            '+
                        'where pessoaimpl.dadosid ='+zGet.FieldByName('id').AsString;
      ZQCli.Open;

      ZQuery7.Close;
      ZQuery7.ParamByName('id').AsInteger := pessoaimpid;

      ZQuery7.ParamByName('limitefinanceiro').Clear;
      if ZQCli.FieldByName('limitefinanceiro').AsFloat <> null then
         ZQuery7.ParamByName('limitefinanceiro').AsFloat := ZQCli.FieldByName('limitefinanceiro').AsFloat;

      ZQuery7.ParamByName('limitedisponivel').Clear;
      if ZQCli.FieldByName('limitedisponivel').AsFloat <> null then
         ZQuery7.ParamByName('limitedisponivel').AsFloat := ZQCli.FieldByName('limitedisponivel').AsFloat;
      ZQuery7.ExecSQL;

      ZQuery8.Close;
      ZQuery8.ParamByName('dadosid').AsInteger   := CodigoDados;
      ZQuery8.ParamByName('vinculoid').AsInteger := 1;
      ZQuery8.ExecSQL;

      ZQEmail.Close;
      ZQEmail.SQL.Clear;
      ZQEmail.SQL.Text := 'select * from email where dadosid = '+zGet.FieldByName('id').AsString;
      ZQEmail.Open;

      if not ZQEmail.IsEmpty then
      begin
        ZQuery9.Close;
        ZQuery9.ParamByName('descricao').AsString      := ZQEmail.FieldByName('descricao').AsString;
        ZQuery9.ParamByName('tipoenderecoid').AsInteger := 1;
        ZQuery9.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQuery9.ExecSQL;
      end;

      ZQEND.Close;
      ZQEND.SQL.Clear;
      ZQEND.SQL.Text := 'select * from endereco where dadosid = '+zGet.FieldByName('id').AsString;
      ZQEND.Open;

      while not ZQEND.Eof do
      begin
        ZQuery5.Close;
        ZQuery5.ParamByName('logradouro').AsString      := ZQEND.FieldByName('logradouro').AsString;
        ZQuery5.ParamByName('complemento').AsString     := ZQEND.FieldByName('complemento').AsString;
        ZQuery5.ParamByName('bairro').AsString          := ZQEND.FieldByName('bairro').AsString;
        ZQuery5.ParamByName('cidade').AsString          := ZQEND.FieldByName('cidade').AsString;
        ZQuery5.ParamByName('estado').AsString          := ZQEND.FieldByName('estado').AsString;
        ZQuery5.ParamByName('cep').AsString             := ZQEND.FieldByName('cep').AsString;
        ZQuery5.ParamByName('tipoenderecoid').AsInteger := ZQEND.FieldByName('tipoenderecoid').AsInteger;
        ZQuery5.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQuery5.ParamByName('paisid').AsInteger         := ZQEND.FieldByName('paisid').AsInteger;
        ZQuery5.ParamByName('isnotafiscal').AsString    := ZQEND.FieldByName('isnotafiscal').AsString;
        ZQuery5.ParamByName('numero').AsString          := ZQEND.FieldByName('numero').AsString;
        ZQuery5.ExecSQL;

        ZQEND.Next;
      end;

      ZQTel.Close;
      ZQTel.SQL.Clear;
      ZQTel.SQL.Text := 'select * from telefone where numero is not null and dadosid = '+zGet.FieldByName('id').AsString;
      ZQTel.Open;

      while not ZQTel.Eof do
      begin
        ZQuery6.Close;
        ZQuery6.ParamByName('ddd').AsInteger             := ZQTel.FieldByName('ddd').AsInteger;
        ZQuery6.ParamByName('numero').AsInteger          := ZQTel.FieldByName('numero').AsInteger;
        ZQuery6.ParamByName('tipoenderecoid').AsInteger  := ZQTel.FieldByName('tipoenderecoid').AsInteger;
        ZQuery6.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQuery6.ExecSQL;

        ZQTel.Next;
      end;

      if sTipo = 'pf' then
      begin
        ZQPF.Close;
        ZQPF.SQL.Clear;
        ZQPF.SQL.Text := 'select * from dadospessoafisica where id = '+zGet.FieldByName('id').AsString;
        ZQPF.Open;

        ZQuery2.Close;
        ZQuery2.ParamByName('id').AsInteger          := CodigoDados;
        ZQuery2.ParamByName('nome').AsString         := ZQPF.FieldByName('nome').AsString;
        ZQuery2.ParamByName('apelido').AsString      := ZQPF.FieldByName('apelido').AsString;
        ZQuery2.ParamByName('statusid').AsInteger    := ZQPF.FieldByName('statusid').AsInteger;
        ZQuery2.ParamByName('obs').AsString          := ZQPF.FieldByName('obs').AsString;
        ZQuery2.ParamByName('tipocliente').AsString  := ZQPF.FieldByName('tipocliente').AsString;
        ZQuery2.ParamByName('datanascimento').AsDate := ZQPF.FieldByName('datanascimento').AsDateTime;
        ZQuery2.ParamByName('rg').AsString           := ZQPF.FieldByName('rg').AsString;
        ZQuery2.ParamByName('sexo').AsInteger        := ZQPF.FieldByName('sexo').AsInteger;
        ZQuery2.ExecSQL;
      end;

      if sTipo = 'pj' then
      begin
        ZQPJ.Close;
        ZQPJ.SQL.Clear;
        ZQPJ.SQL.Text := 'select * from dadospessoajuridica where id = '+zGet.FieldByName('id').AsString;
        ZQPJ.Open;

        ZQuery3.Close;
        ZQuery3.ParamByName('id').AsInteger                := CodigoDados;
        ZQuery3.ParamByName('inscricaoestadual').AsString  := ZQPJ.FieldByName('inscricaoestadual').AsString;
        ZQuery3.ParamByName('razaosocial').AsString        := ZQPJ.FieldByName('razaosocial').AsString;
        ZQuery3.ParamByName('nomefantasia').AsString       := ZQPJ.FieldByName('nomefantasia').AsString;
        ZQuery3.ParamByName('contato').AsString            := ZQPJ.FieldByName('contato').AsString;
        ZQuery3.ParamByName('inscricaomunicipal').AsString := ZQPJ.FieldByName('inscricaomunicipal').AsString;
        ZQuery3.ParamByName('usuariasistema').AsInteger    := ZQPJ.FieldByName('usuariasistema').AsInteger;
        ZQuery3.ParamByName('statusid').AsInteger          := ZQPJ.FieldByName('statusid').AsInteger;
        ZQuery3.ParamByName('obs').AsString                := ZQPJ.FieldByName('obs').AsString;;
        ZQuery3.ParamByName('tipocliente').AsString        := ZQPJ.FieldByName('tipocliente').AsString;
        ZQuery3.ExecSQL;
      end;

    end;
    ProgressBar.Position := ProgressBar.Position + 1;
    zGet.Next;
  end;

  ShowMessage('TERMINOU');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' codigo:'+zGet.FieldByName('id').AsString);
    end;
  end;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Agen,	Conta, sArquivo, identificador, IMP: string;
  DtDoc,	DtVenc: TDate;
  VlDoc, VlPago: string;
  DtPagto: TDateTime;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  RegistroBaixa   : TRegistroBaixa;
  RegistroBaixaRN : TRegistroBaixaRN;
begin
  try
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;
  RegistroBaixa   := TRegistroBaixa.Create;
  RegistroBaixaRN := TRegistroBaixaRN.Create;

  ProgressBar.Position := 0;
  sArquivo             := ExtractFilePath(Application.ExeName)+'xls\contas_pagar.xls';

  limpaStg(StringGrid1);
  Xls_To_StringGrid(StringGrid1, sArquivo);

  ProgressBar.Max      := StringGrid1.RowCount;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;

  iNParcela        := 1;
  iTamArray        := 0;

  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    ColunaA       := Trim(StringGrid1.Cells[0, i]);
    identificador := Trim(StringGrid1.Cells[1, i]);

    Parcela.Titulo.dados.codigo := 0;

    if ColunaA = '' then
       break;

    if ehNumero(ColunaA) then
    begin
      Parcela.Titulo.dados.codigo := getIdPessoaPORIdentifier(ColunaA);

      if Parcela.Titulo.dados.codigo > 0 then
      begin
      Doc := Trim(StringGrid1.Cells[4, i]);

      if Trim(StringGrid1.Cells[5, i]) <> '' then
         DtDoc   := StrToDate(Copy(Trim(StringGrid1.Cells[5, i]), 1, 10));

      if Trim(StringGrid1.Cells[6, i]) <> '' then
         DtVenc  := StrToDate(Copy(Trim(StringGrid1.Cells[6, i]), 1, 10));

      DtPagto := 0;
      //if Trim(StringGrid1.Cells[8, i]) <> '' then
      //   DtPagto := StrToDateTime(Trim(StringGrid1.Cells[8, i]));

      //VlPago := '0';
      //if Trim(StringGrid1.Cells[12, i]) <> '' then
      //   VlPago := Validar.PontoVirgula(Trim(StringGrid1.Cells[12, i]));

      VlDoc  := Validar.PontoVirgula(Trim(StringGrid1.Cells[8, i]));

      Inc(iTamArray);
      SetLength(Parcela.parcelas, iTamArray);

      iModPgto  := 6;
      if Doc = 'NP' then
         iModPgto := 6;
      if Doc = 'DEP' then
         iModPgto  := 16;
      if Doc = 'VAL' then
         iModPgto  := 8;
      if Doc = 'DUP' then
         iModPgto  := 9;
      if Doc = 'CHP' then
         iModPgto  := 4;
      if Doc = 'CA' then
         iModPgto  := 1;
      if Doc = 'CHE' then
         iModPgto  := 11;
      if (Doc = 'DIN') or (Doc='DCC') or (Doc='DIV') or (Doc='BBB')then
         iModPgto  := 5;

      Parcela.parcelas[iTamArray-1] := TParcela.Create;

      Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;

      Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
      Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
      Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(VlDoc);
      Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;
      Parcela.parcelas[iTamArray-1].vl_Pgto              := 0;
      Parcela.parcelas[iTamArray-1].dt_Pgto              := DtPagto;

      DataVenc                                       := Now;
      Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
      Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

      Parcela.parcelas[iTamArray-1].dt_vencimento    := DtVenc;
      Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
      DataVenc                                       := DtDoc;

      Parcela.parcelas[iTamArray-1].Status.codigo := 1;
      //if StrToCurr(VlPago) > 0 then
      //   Parcela.parcelas[iTamArray-1].Status.codigo := 2;

      Parcela.Titulo.Cmf.codigo           := 80;
      Parcela.Titulo.tipodocumento.codigo := 1;
      Parcela.Titulo.Setor.codigo         := 4;
      Parcela.Titulo.prepagamento         := Doc;
      Parcela.Titulo.status.codigo        := 1;
      Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

      DecodeDate(DataVenc, wAno, wMes, wDia);

      Parcela.Titulo.no_totalParcelas  := iNParcela;
      Parcela.Titulo.no_diavencimento  := wDia;
      Parcela.Titulo.dt_vencimento     := DataVenc;
      Parcela.Titulo.dt_periodoinicial := DataVenc;
      Parcela.Titulo.dt_periodofinal   := DataVenc;
      Parcela.Titulo.dt_cadastro       := DataVenc;
      Parcela.Titulo.nm_obs            := 'importa��o-'+Doc;

      Parcela.Titulo.usuario.codigo := 1426;

      Parcela.Titulo.contrato.numeroContrato    := 1;
      Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

      if Parcela.Titulo.modalidadePagamento.codigo = 6 then
         Parcela.Titulo.numeroPromissoria := '0'
      else
         Parcela.Titulo.numeroPromissoria := '';

      if DtPagto = 0 then
         Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

      {
      if Parcela.parcelas[iTamArray-1].Status.codigo = 2 then
      begin
        RegistroBaixa.parcela.codigo              := Parcela.codigo;
        RegistroBaixa.parcela.Titulo.prepagamento := '';
        RegistroBaixa.parcela.vl_parcela          := Parcela.parcelas[iTamArray-1].vl_Pgto;
        RegistroBaixa.dt_pagamento                := Parcela.parcelas[iTamArray-1].dt_Pgto;
        RegistroBaixa.no_transacao                := Validar.gerarDigitoZero(IntToStr(Parcela.parcelas[iTamArray-1].codigo), 8);
        RegistroBaixa.historico                   := '';
        RegistroBaixa.status.codigo               := Parcela.parcelas[iTamArray-1].Status.codigo;
        RegistroBaixa.parcela.Titulo.modalidadePagamento.codigo := Parcela.Titulo.modalidadePagamento.codigo;

        RegistroBaixaRN.baixarParcela(RegistroBaixa);
      end;
      }
      iNParcela := 1;
      iTamArray := 0;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Codigo+' - '+DateToStr(DtVenc);
      lbstatus.Refresh;
      lbstatus.Repaint;
      Codigo    := '';
      end;
    end;
  end;
  ShowMessage('A importa��o foi realizada com �xito.');

  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' CODIGO '+ColunaA);
    end;
  end;
end;

procedure TfrmPrincipal.Button20Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, Estoque0, Estoque1,CustoMedio: string;
  sBalanca, CST, NCM, CFOP, CODBARRA, Referencia, Descricao2, Marca, Grupo, PrecoAvista, sArquivo: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;
  try
  iPlanilha := 1;

  ZQPF.Close;
  ZQPF.SQL.Clear;
  ZQPF.SQL.Add(' select id from tipoproduto where descricao=:descricao');

  ZQPJ.Close;
  ZQPJ.SQL.Clear;
  ZQPJ.SQL.Add(' select id from marca where descricao=:descricao');

  ProgressBar.Position := 0;
  sArquivo  := ExtractFilePath(Application.ExeName)+'xls\Produto.xls';

  Xls_To_StringGrid(StringGrid1, sArquivo);

  ProgressBar.Max      := StringGrid1.RowCount;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    CODBARRA := Trim(StringGrid1.Cells[0, i]);

    if CODBARRA = '7896058504316' then
       ShowMessage('7896058504316');

    if CODBARRA = 'FIM' then
       break;

    if ehNumero(CODBARRA) then
    begin
      Descricao := removeApost(Trim(StringGrid1.Cells[1, i]));

      if not getExisteProdutoCodDesc(Codigo, Descricao) then
      begin
        NCM        := '99999999';
        CFOP       := '5402';
        CST        := '000';
        Aliquota   := '18';
        Descricao2 := Descricao;
        Referencia := '';
        Marca      := '9';
        Grupo      := '1006';
        Unidade    := removeLetra(Trim(StringGrid1.Cells[4, i]));
        sBalanca   := '0';
        Preco      := Trim(StringGrid1.Cells[3, i]);
        PrecoAvista:= Trim(StringGrid1.Cells[3, i]);
        Estoque0   := removeSONumero(Trim(StringGrid1.Cells[4, i]));
        Estoque1   := removeSONumero(Trim(StringGrid1.Cells[4, i]));
        Custo      := removeSONumero(Trim(StringGrid1.Cells[2, i]));
        CustoMedio := removeSONumero(Trim(StringGrid1.Cells[2, i]));
        MLucro     := '0';
        sPisCofins := '0';

        if Unidade = 'KG' then
           sBalanca := '1';

        sMsg := 'PRODUTO: C�DIGO'+CODBARRA;

        lbstatus.Caption     := 'Aguarde...'+CODBARRA;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if sBalanca = '1' then
        begin
          Unidade             := 'KG';
          Produto.sBalanca    := '1';
          Produto.cod         := Validar.gerarDigitoZero(CODBARRA, 7);
          Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end
        else
        begin
          Unidade             := 'UN';
          Produto.sBalanca    := '0';
          Produto.cod         := ProdutoRN.gerarCodigo;
          Produto.codigoBarra := Validar.gerarDigitoZero(CODBARRA, 14);
        end;

        Produto.codigoBarraImport := Produto.codigoBarra;
        Produto.descricao         := UpperCase(Descricao);
        Produto.descricaoFiscal   := UpperCase(Descricao2);
        Produto.CFOP              := CFOP;
        Produto.CST               := CST;
        Produto.AliquotaIcms      := StrToFloat(Aliquota);

        {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
        }

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') then
            Produto.unidade.codigo := '2';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        {Tipo de Produto}
        ZQPF.Close;
        ZQPF.ParamByName('descricao').AsString := Grupo;
        ZQPF.Open;

        Produto.tipoproduto.codigo := '1006';
        if not ZQPF.IsEmpty then
           Produto.tipoproduto.codigo := ZQPF.FieldByName('id').AsString;

        {Marca de Produto}
        ZQPJ.Close;
        ZQPJ.ParamByName('descricao').AsString := Marca;
        ZQPJ.Open;

        Produto.Marca.codigo := 9;
        if not ZQPJ.IsEmpty then
           Produto.Marca.codigo := ZQPJ.FieldByName('id').AsInteger;

        Produto.valor                 := StrToFloat(Preco);
        Produto.lote                  := '';
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := (StrToFloat(Custo)/10000);
        Produto.CustoMedio            := (StrToFloat(CustoMedio)/10000);
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := Referencia;
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := (StrToFloat(MLucro)/10000);
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := (StrToFloat(Estoque0)/10000);
        Produto.QtdeAUX               := (StrToFloat(Estoque1)/10000);
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;
        Produto.sLocal                := '';
        Produto.sObs                  := '';
        Produto.descricaoAUX          := '';

        if CODBARRA <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');
      end;

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;

      TrimAppMemorySize;
    end;
  end;

  ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' Codigo:'+CODBARRA+' - '+Produto.Descricao);
    end;
  end;
end;

function TfrmPrincipal.removeData(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '0123456789/';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;
end;

function TfrmPrincipal.removeLetra(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := 'UNKGunkg';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;
end;

function TfrmPrincipal.getCEP(sString: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
begin
  aNum := '0123456789,.-';

  sNum := '';
  for i := 1 to Length(sString) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sString[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sString[i]);
    end;
  end;

  result := sNum;

end;

procedure TfrmPrincipal.Button22Click(Sender: TObject);
var
  I, CodigoDados: Integer;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  iPlanilha, iColuna, iLinha, pessoaimpid, iNParcela: integer;
  DataCadastro: string;
  ColunaA, ColunaF: string;

  tituloid, clienteid, modpagmentoid, cont, vendedorid, iCountParcela: integer;
  Codigo,	Doc,	Titulos,	Agen,	Conta, sNome, sCod, sCodForCMF, sPC: string;
  DtDoc,	DtVenc: TDate;
  VlDoc, sObs: string;

  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  iTamArray, iModPgto: integer;
  cValor: currency;
  wAno, wMes, wDia: word;
  DataVenc, DataVenc2: TDate;
  bImportar: boolean;
begin
  try
  Button22.Enabled := false;

  LCID    := GetUserDefaultLCID;
  Validar := TValidar.Create;
  Titulo          := TTitulo.Create;
  TituloRN        := TTituloRN.Create;
  Parcela         := TParcela.Create;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\'+
  'cpaberto.xls', EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  ZQDados.Close;
  ZQDados.SQL.Clear;
  ZQDados.SQL.Text := 'select vw_pessoas.id from vw_pessoas where vw_pessoas.nome = :nome ';
  iNParcela        := 1;
  iTamArray        := 0;
  for iPlanilha := 1 to 1 do
  begin

    { Conecta a planilha (1) que ser� a planilha a receber os dados }
    ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
    { Ativa a planilha conectada }
    ExcelWorksheet1.Activate(LCID);
    { Torna poss�vel fazer altera��es }
    ExcelApplication1.ScreenUpdating[LCID] := True;

    with ExcelWorksheet1 do
    begin
      ProgressBar.Position := 0;
      ProgressBar.Max      := 493;

      for i := 2 to Rows.Count do
      begin
        Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        VlDoc  := Trim(Range['N' + IntToStr(I), 'N' + IntToStr(I)].Value2);


        //if i=16 then
        //   ShowMessage(Codigo);

        if ehNumero(VlDoc) then
        begin
          Codigo := removeNumero(Codigo);

          if ehNumero(VlDoc) then
             sObs := '';//Trim(Range['A' + IntToStr(I+1), 'A' + IntToStr(I+1)].Value2) +
                     //Trim(Range['B' + IntToStr(I+1), 'B' + IntToStr(I+1)].Value2) +
                     //Trim(Range['C' + IntToStr(I+1), 'C' + IntToStr(I+1)].Value2) +
                     //Trim(Range['D' + IntToStr(I+1), 'D' + IntToStr(I+1)].Value2) +
                     //Trim(Range['E' + IntToStr(I+1), 'E' + IntToStr(I+1)].Value2);

          Agen    := '';//Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
          Conta   := '';//Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

          sCod       := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
          sCodForCMF := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);

          if Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2) <> '' then
             DtDoc   := Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2;

          if Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2) <> '' then
             DtVenc  := Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2;

          Doc   := Trim(Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2);
          VlDoc := Trim(Range['N' + IntToStr(I), 'N' + IntToStr(I)].Value2);

          Inc(iTamArray);
          SetLength(Parcela.parcelas, iTamArray);

          iModPgto  := 6;
          if Doc = 'DEP' then
             iModPgto  := 16;
          if Doc = 'VAL' then
             iModPgto  := 8;
          if Doc = 'DUP' then
             iModPgto  := 9;
          if Doc = 'CHP' then
             iModPgto  := 4;
          if Doc = 'CA' then
             iModPgto  := 1;
          if Doc = 'CHC' then
             iModPgto  := 11;
          if (Doc = 'DIN') or (Doc='DCC') or (Doc='DIV') or (Doc='BBB')then
             iModPgto  := 5;

          Parcela.parcelas[iTamArray-1] := TParcela.Create;

          Parcela.Titulo.modalidadePagamento.codigo          := iModPgto;
          Parcela.parcelas[iTamArray-1].Usuario.codigo       := 1426;
          Parcela.parcelas[iTamArray-1].Tipodocumento.codigo := 1;
          Parcela.parcelas[iTamArray-1].vl_parcela           := StrToFloat(getLim(VlDoc));
          Parcela.parcelas[iTamArray-1].no_parcela           := iNParcela;

          DataVenc                                       := Now;
          Parcela.parcelas[iTamArray-1].dt_vencimento    := Now;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := Now;

          Parcela.parcelas[iTamArray-1].dt_vencimento    := DtVenc;
          Parcela.parcelas[iTamArray-1].dt_cadastramento := DtDoc;
          DataVenc                                       := DtDoc;

          Parcela.parcelas[iTamArray-1].Status.codigo := 1;

          sPC := getFornecedorOuCmf(sCod, sCodForCMF);

          if System.Copy(sPC, 1, 1)='C' then
          begin
            System.Delete(sPC,1,1);
            Parcela.Titulo.Cmf.codigo   := StrToInt(sPC);
            Parcela.Titulo.dados.codigo := 1428;
          end;

          if System.Copy(sPC, 1, 1)='P' then
          begin
            System.Delete(sPC,1,1);
            Parcela.Titulo.Cmf.codigo   := 80;
            Parcela.Titulo.dados.codigo := StrToInt(sPC)
          end;

          Parcela.Titulo.sCodidgoImport       := Codigo;
          Parcela.Titulo.tipodocumento.codigo := 1;
          Parcela.Titulo.Setor.codigo         := 4;
          Parcela.Titulo.prepagamento         := Doc;
          Parcela.Titulo.status.codigo        := 1;
          Parcela.Titulo.vl_titulo            := StrToFloat(getLim(VlDoc));

          DecodeDate(DataVenc, wAno, wMes, wDia);

          Parcela.Titulo.no_totalParcelas  := iNParcela;
          Parcela.Titulo.no_diavencimento  := wDia;
          Parcela.Titulo.dt_vencimento     := DataVenc;
          Parcela.Titulo.dt_periodoinicial := DataVenc;
          Parcela.Titulo.dt_periodofinal   := DataVenc;
          Parcela.Titulo.dt_cadastro       := DataVenc;
          Parcela.Titulo.nm_obs            := sObs;
          Parcela.Titulo.usuario.codigo    := 1426;

          Parcela.Titulo.contrato.numeroContrato    := 1;
          Parcela.Titulo.modalidadePagamento.codigo := iModPgto;

          if Parcela.Titulo.modalidadePagamento.codigo = 6 then
             Parcela.Titulo.numeroPromissoria := '0'
          else
             Parcela.Titulo.numeroPromissoria := '';

          Parcela := TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

          iNParcela := 1;
          iTamArray := 0;
          Codigo    := '';
          bImportar := false;

        end;

        ProgressBar.Position := i;
        if i = 493 then
           break;

      end;

    end;

    if iPlanilha = 1 then
       Break;

  end;
  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' - '+IntToStr(i)+' - '+Codigo);
    end;
  end;

end;

function TfrmPrincipal.ehNumero(sString: string): boolean;
var
  aNum: string;
  i, x: integer;
  sNum: string;
  bSair: boolean;
begin
  bSair := false;
  if sString <> '' then
  begin
    bSair := true;
    for i:=1 to Length(sString) do
    begin
      if not (sString[i] in ['0','1','2','3','4','5','6','7','8','9','.','-','*',' ', ',']) then
      begin
        bSair := false;
        break;
      end;
    end;
  end;

  result := bSair;
end;

function TfrmPrincipal.getFornecedorOuCmf(sCod, sDescricao: string): string;
var
  ZgetModPgto: TZQuery;
  sSQL: string;
  id: string;
begin
  try
    { Monta a query }
    ZgetModPgto            := TZQuery.Create(ZQuery);
    ZgetModPgto.Connection := frmPrincipal.ZConnection;

    sSQL :=
    'select vw_pessoas.id, vw_pessoas.nome, vw_pessoas.nomefantasia from dados '+
    'join vw_pessoas on vw_pessoas.id=dados.id                                 '+
    'where clifor ='''+sCod+''' and vw_pessoas.nome ILIKE''%'+sDescricao+'%''';

    ZgetModPgto.Close;
    ZgetModPgto.SQL.Clear;
    ZgetModPgto.SQL.Text := sSQL;
    ZgetModPgto.Open;

    id := '0';
    if not ZgetModPgto.IsEmpty then
    begin
      //if (Trim(ZgetModPgto.FieldByName('nome').AsString) = sDescricao) or
      //   (Trim(ZgetModPgto.FieldByName('nomefantasia').AsString)=sDescricao) then
      id := 'P'+ZgetModPgto.FieldByName('id').AsString;
    end;

    if id='0' then
    begin
      sSQL :=
      'select * from cmf where descricao='''+sDescricao+''' ';
      ZgetModPgto.Close;
      ZgetModPgto.SQL.Clear;
      ZgetModPgto.SQL.Text := sSQL;
      ZgetModPgto.Open;

      if not ZgetModPgto.IsEmpty then
         id := 'C'+ZgetModPgto.FieldByName('id').AsString
      else
      begin
        sSQL :=
        'insert into cmf(grupocmfid, descricao, jurosid) '+
        'VALUES(:grupocmfid, :descricao, :jurosid)       ';
        ZgetModPgto.Close;
        ZgetModPgto.SQL.Clear;
        ZgetModPgto.SQL.Text := sSQL;
        ZgetModPgto.ParamByName('grupocmfid').AsInteger := 13;
        ZgetModPgto.ParamByName('descricao').AsString := sDescricao;
        ZgetModPgto.ParamByName('jurosid').AsInteger := 0;
        ZgetModPgto.ExecSQL;

        ZgetModPgto.Close;
        ZgetModPgto.SQL.Clear;
        ZgetModPgto.SQL.Text := 'select last_value from cmf_id_seq';
        ZgetModPgto.Open;

        id := 'C'+ZgetModPgto.FieldByName('last_value').AsString;
      end;
    end;

    result := id;
  finally
    ZgetModPgto.Close;
    ZgetModPgto.Free;
  end;

end;

function TfrmPrincipal.getCodigoBarras(sCod: string): string;
var
  aNum: string;
  i, x: integer;
  sNum: string;
  bSair: boolean;
begin
  aNum := '0123456789';

  sNum := '';
  bSair := false;
  for i := 1 to Length(sCod) do
  begin
    for x := 1 to Length(aNum) do
    begin
      if (Trim(sCod[i]) = '') then
      begin
        bSair := true;
        break;
      end;

      if (Trim(sCod[i]) = Trim(aNum[x])) then
          sNum := Trim(sNum) + Trim(sCod[i]);
    end;

    if bSair then
       break;
  end;

  result := sNum;

end;

function TfrmPrincipal.getCodigoCidade(sCidade, sUf: string): string;
var
  Codigo :string;
begin
  try
    ZgetEnd.Close;
    ZgetEnd.SQL.Clear;
    ZgetEnd.SQL.Add('select id from cidade where upper(cidade.cidade)=:cidade');
    ZgetEnd.SQL.Add('and  upper(estadoid)=:uf                                   ');

    ZgetEnd.ParamByName('cidade').AsString := Trim(sCidade);
    ZgetEnd.ParamByName('uf').AsString     := Trim(sUf);
    ZgetEnd.Open;

    Codigo := '2928703';
    if not ZgetEnd.IsEmpty then
       Codigo := ZgetEnd.FieldByName('id').AsString;

    result := Codigo;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

function TfrmPrincipal.getCodigoUF(sUf: string): string;
var
  Codigo :string;
begin
  try
    ZgetEnd.Close;
    ZgetEnd.SQL.Clear;
    ZgetEnd.SQL.Add('select id from estado where  upper(descricao)=:uf');
    ZgetEnd.ParamByName('uf').AsString := sUf;
    ZgetEnd.Open;

    Codigo := '5';
    if not ZgetEnd.IsEmpty then
       Codigo := ZgetEnd.FieldByName('id').AsString;

    result := Codigo;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

end;

function TfrmPrincipal.getDescProduto(str: string): string;
var
  sProduto: string;
  Valida: TValidar;
begin
  Valida := TValidar.Create;
  sProduto := Valida.InverteString(str);

  delete(sProduto, 1, 7);

  sProduto := valida.InverteString(sProduto);

  result := sProduto;
  Valida.Free;
end;

function TfrmPrincipal.getExisteCodigoProduto(sCodigo: string): boolean;
var
  zGet: TZQuery;
  sSQL: string;
  bExiste: boolean;
  Validar: TValidar;
begin
  try
    {Monta a query}
    zGet := TZQuery.Create(ZQuery);
    zGet.Connection := frmPrincipal.ZConnection;

    Validar := TValidar.Create;

    sSQL := 'select id from produto where codigo = '''+Validar.gerarDigitoZero(sCodigo, 7)+''' ';

    zGet.SQL.Text := sSQL;
    zGet.Open;

    bExiste := false;
    if not zGet.IsEmpty then
       bExiste := true;

    result := bExiste;
  finally
    zGet.Close;
    zGet.Free;

    Validar.Free;
  end;
end;

function TfrmPrincipal.getExisteProduto(sDescricao: string): boolean;
var
  zGet: TZQuery;
  sSQL: string;
  bExiste: boolean;
begin
  try
    {Monta a query}
    zGet := TZQuery.Create(ZQuery);
    zGet.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from produto where upper(descricao) = '''+UpperCase(sDescricao)+''' ';

    zGet.SQL.Text := sSQL;
    zGet.Open;

    bExiste := false;
    if not zGet.IsEmpty then
       bExiste := true;

    result := bExiste;
  finally
    zGet.Close;
    zGet.Free;
  end;
end;

function TfrmPrincipal.getExisteProdutoCodDesc(sCodigo, sDescricao: string): boolean;
var
  zGet: TZQuery;
  sSQL: string;
  bExiste: boolean;
  Validar: TValidar;
begin
  try
    {Monta a query}
    zGet := TZQuery.Create(ZQuery);
    zGet.Connection := frmPrincipal.ZConnection;

    Validar := TValidar.Create;

    sSQL := 'select id from produto where codigo = '''+Validar.gerarDigitoZero(sCodigo, 7)+''' and upper(descricao) = '''+UpperCase(sDescricao)+''' ';

    zGet.SQL.Text := sSQL;
    zGet.Open;

    bExiste := false;
    if not zGet.IsEmpty then
       bExiste := true;

    result := bExiste;
  finally
    zGet.Close;
    zGet.Free;

    Validar.Free;
  end;
end;

procedure TfrmPrincipal.Button23Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins, sMarca, sRef, sRef2: string;
  i, iPlanilha, CodigoDados, pessoaimpid: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc: string;
  Logradouro, Bairro, Cidade, Uf, Cep, Numero, Complemento: string;
  sArquivo, Contato, CODBARRA: string;
  bImportar: boolean;

  dtCadastro: TDate;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
begin
  Produto              := TProduto.Create;
  ProdutoRN            := TProdutoRN.Create;
  Validar              := TValidar.Create;
  ProgressBar.Position := 0;

  sArquivo        := ExtractFilePath(Application.ExeName)+'xls\ProdutosCodigoBarra.xls';
  ProgressBar.Max := 59522;
  if ckbCliente.Checked then
  begin
    sArquivo        := ExtractFilePath(Application.ExeName)+'xls\CLIENTES.xls';
    ProgressBar.Max := 295;
  end;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(sArquivo, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  try
  if ckbCliente.Checked  then
  begin
    Cat := '1';
    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';
    ZQUPEND.Close;
    ZQUPEND.SQL.Clear;
    ZQUPEND.SQL.Text := 'select * from endereco where dadosid = 1428';
    ZQUPEND.Open;

    ProgressBar.Max := 60;
    ProgressBar.Position := 0;

    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        Nome      := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        CpfCnpj   := '';
        Descricao := '';

        if Nome = 'NOME DO CLIENTE' then
           Nome := '';

        DataCadastro := '';
        Cat          := '1';
        sTipo        := 'F';

        if Nome = '' then
           Break;

       {
       if ((Nome <> '') and not (ProdutoRN.pessoaExisteNome(Nome))) then
       begin
         ZQDados.Close;
         ZQDados.Open;

         CodigoDados := ZQDados.FieldByName('id').AsInteger;
         Codigo      := ZQDados.FieldByName('id').AsString;

         CodigoImportacao := Codigo;

        if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
        begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;

          if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
          begin
            ZQDados.Close;
            ZQDados.SQL.Clear;
            ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
            ZQDados.Open;

            CodigoDados := ZQDados.FieldByName('id').AsInteger;
          end;
        end;

        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

        if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
        begin
          ZQPessoaImp.Close;
          ZQPessoaImp.SQL.Clear;
          ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
          ZQPessoaImp.Open;

          pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
        end;

        ZQuery.Close;
        ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
        ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

        if DataCadastro = '' then
           ZQuery.ParamByName('cad').AsDate := Now
        else
           ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

        ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
        ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
        ZQuery.ExecSQL;

        ZQCli.Close;
        ZQCli.ParamByName('id').AsInteger             := CodigoDados;
        ZQCli.ParamByName('limitefinanceiro').AsFloat := 0;
        ZQCli.ExecSQL;

        ZQDV.Close;
        ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
        ZQDV.ParamByName('vinculoid').AsInteger := 1;
        ZQDV.ExecSQL;

        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := ZQUPEND.FieldByName('logradouro').AsString;
        ZQEND.ParamByName('complemento').AsString     := ZQUPEND.FieldByName('complemento').AsString;
        ZQEND.ParamByName('bairro').AsString          := ZQUPEND.FieldByName('bairro').AsString;;
        ZQEND.ParamByName('cidade').AsString          := ZQUPEND.FieldByName('cidade').AsString;
        ZQEND.ParamByName('estado').AsString          := ZQUPEND.FieldByName('estado').AsString;
        ZQEND.ParamByName('cep').AsString             := ZQUPEND.FieldByName('cep').AsString;
        ZQEND.ParamByName('tipoenderecoid').AsInteger := ZQUPEND.FieldByName('tipoenderecoid').AsInteger;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := ZQUPEND.FieldByName('paisid').AsInteger;
        ZQEND.ParamByName('isnotafiscal').AsString    := ZQUPEND.FieldByName('isnotafiscal').AsString;
        ZQEND.ParamByName('numero').AsString          := ZQUPEND.FieldByName('numero').AsString;
        ZQEND.ExecSQL;

        sStatus := '18';
        if Cat = '4' then
           sStatus := '19';

        Apel := '';
        Nasc := '';

        if sTipo = 'F' then
        begin
          ZQPF.Close;
          ZQPF.ParamByName('id').AsInteger         := CodigoDados;
          ZQPF.ParamByName('nome').AsString        := Trim(Nome);
          ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
          ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
          ZQPF.ParamByName('obs').AsString         := Obs;
          ZQPF.ParamByName('tipocliente').AsString := '0';

          if Nasc = '' then
             ZQPF.ParamByName('datanascimento').Clear
          else
             ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

          ZQPF.ParamByName('rg').AsString := removeNumero(RI);

          ZQPF.ParamByName('sexo').Clear;
          ZQPF.ExecSQL;
        end;

        if sTipo = 'J' then
        begin
          ZQPJ.Close;
          ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
          ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
          ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
          ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
          ZQPJ.ParamByName('contato').AsString            := '';
          ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
          ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
          ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
          ZQPJ.ParamByName('obs').AsString                := Obs;
          ZQPJ.ParamByName('tipocliente').AsString        := '0';
          ZQPJ.ExecSQL;
        end;

        ProgressBar.Position := i;
       end;
       }
        Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

        if Codigo = 'FIM' then
           break;

        Nome         := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        Apel         := Trim(Range['C' + IntToStr(I), 'U' + IntToStr(I)].Value2);
        Contato      := '';
        CpfCnpj      := removeNumero(Trim(Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2));
        DataCadastro := DateToStr(Now);
        Lim          := Validar.PontoVirgula(Trim(Range['W' + IntToStr(I), 'W' + IntToStr(I)].Value2));
        Email        := Trim(Range['T' + IntToStr(I), 'T' + IntToStr(I)].Value2);
        RI           := Trim(Range['R' + IntToStr(I), 'R' + IntToStr(I)].Value2);
        Obs          := '';
        Nasc         := '';

        sTipo := 'F';
        if Length(CpfCnpj) = 14 then
           sTipo := 'J';

        sFone    := removeNumero(Trim(Range['O' + IntToStr(I), 'O' + IntToStr(I)].Value2));
        sDDDCel  := '75';

        if Length(sFone) > 8 then
        begin
          sDDDCel  := Trim(System.Copy(sFone, 1, 2));
          sFONECel := Trim(System.Copy(sFone, 3, 20));
        end;

        sFone    := removeNumero(Trim(Range['M' + IntToStr(I), 'M' + IntToStr(I)].Value2));
        sDDDTel  := '75';

        if Length(sFone) > 8 then
        begin
          sDDDTel  := Trim(System.Copy(sFone, 1, 2));
          sFONETel := Trim(System.Copy(sFone, 3, 20));
        end;

        Logradouro   := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        Bairro       := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        Cidade       := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);
        Uf           := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);
        Cep          := removeNumero(Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2));
        Numero       := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);
        Complemento  := Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2);

        CodigoImportacao := Codigo;

        ZQDados.Close;
        ZQDados.Open;

        while ProdutoRN.codigoExiste(Codigo) do
        begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;
          Codigo      := ZQDados.FieldByName('id').AsString;
        end;

        if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
        begin
          ZQDados.Close;
          ZQDados.Open;

          CodigoDados := ZQDados.FieldByName('id').AsInteger;

          if (CodigoDados = 1426) or (CodigoDados = 1428) or (CodigoDados = 3) then
          begin
            ZQDados.Close;
            ZQDados.SQL.Clear;
            ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id';
            ZQDados.Open;

            CodigoDados := ZQDados.FieldByName('id').AsInteger;
          end;
        end
        else
          CodigoDados := StrToInt(Codigo);

        ZQPessoaImp.Close;
        ZQPessoaImp.SQL.Clear;
        ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
        ZQPessoaImp.Open;

        pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;

        if (pessoaimpid = 1426) or (pessoaimpid = 1428) or (pessoaimpid = 3) then
        begin
          ZQPessoaImp.Close;
          ZQPessoaImp.SQL.Clear;
          ZQPessoaImp.SQL.Text := 'select nextval(''pessoaimpl_id_seq'') as id';
          ZQPessoaImp.Open;

          pessoaimpid := ZQPessoaImp.FieldByName('id').AsInteger;
        end;

        ZQuery.Close;
        ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
        ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

        if DataCadastro = '' then
           ZQuery.ParamByName('cad').AsDate := Now
        else
           ZQuery.ParamByName('cad').AsDate := StrToFloat(DataCadastro);

        ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
        ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
        ZQuery.ExecSQL;

        Lim := '9999.99';

        ZQCli.Close;
        ZQCli.ParamByName('id').AsInteger             := CodigoDados;
        ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
        ZQCli.ExecSQL;

        ZQDV.Close;
        ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
        ZQDV.ParamByName('vinculoid').AsInteger := 1;
        ZQDV.ExecSQL;

        if Email <> '' then
        begin
          ZQEmail.Close;
          ZQEmail.ParamByName('descricao').AsString      := Email;
          ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
          ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
          ZQEmail.ExecSQL;
        end;

        begin
          ZQEND.Close;
          ZQEND.ParamByName('logradouro').AsString      := Logradouro;
          ZQEND.ParamByName('complemento').AsString     := Complemento;
          ZQEND.ParamByName('bairro').AsString          := Bairro;
          ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(Cidade, Uf);
          ZQEND.ParamByName('estado').AsString          := getCodigoUF(Uf);
          ZQEND.ParamByName('cep').AsString             := removeSONumero(Cep);
          ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
          ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
          ZQEND.ParamByName('paisid').AsInteger         := 1;
          ZQEND.ParamByName('isnotafiscal').AsString    := '0';
          ZQEND.ParamByName('numero').AsString          := Numero;
          ZQEND.ExecSQL;
        end;

        if Trim(sFONETel) <> '' then
        begin
          ZQTel.Close;
          ZQTel.ParamByName('ddd').Clear;
          ZQTel.ParamByName('numero').Clear;
          ZQTel.ParamByName('tipoenderecoid').Clear;
          ZQTel.ParamByName('dadosid').Clear;

          ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
          ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

          ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
          ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
          ZQTel.ExecSQL;
        end;

        if Trim(sFONECel) <> '' then
        begin
          ZQTel.Close;
          ZQTel.ParamByName('ddd').Clear;
          ZQTel.ParamByName('numero').Clear;
          ZQTel.ParamByName('tipoenderecoid').Clear;
          ZQTel.ParamByName('dadosid').Clear;

          ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
          ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

          ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
          ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
          ZQTel.ExecSQL;
        end;

        sStatus := '18';
        if Cat = '4' then
           sStatus := '19';

        if sTipo = 'F' then
        begin
          ZQPF.Close;
          ZQPF.ParamByName('id').AsInteger         := CodigoDados;
          ZQPF.ParamByName('nome').AsString        := Trim(Nome);
          ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
          ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
          ZQPF.ParamByName('obs').AsString         := Obs;
          ZQPF.ParamByName('tipocliente').AsString := '0';
          if Nasc = '' then
             ZQPF.ParamByName('datanascimento').Clear
          else
             ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

          ZQPF.ParamByName('rg').AsString := removeNumero(RI);

          ZQPF.ParamByName('sexo').Clear;
          ZQPF.ExecSQL;
        end;

        if sTipo = 'J' then
        begin
          ZQPJ.Close;
          ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
          ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
          ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
          ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
          ZQPJ.ParamByName('contato').AsString            := '';
          ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
          ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
          ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
          ZQPJ.ParamByName('obs').AsString                := Obs;
          ZQPJ.ParamByName('tipocliente').AsString        := '0';
          ZQPJ.ExecSQL;
        end;

        Obs     := '';
        sStatus := '';

        ProgressBar.Position := i;

    end;
  end;
  ShowMessage('OK!...OK!');
  end;

  if not ckbCliente.Checked then
  begin
    with ExcelWorksheet1 do
    begin
      for i := 2 to Rows.Count do
      begin
        Codigo   := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);
        CODBARRA := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);

        if Codigo = '' then
           break;

        if Codigo <> CODBARRA then
           ProdutoRN.setEditarCodigo_ECO_LAR(Codigo, CODBARRA);
        {
        bImportar := false;
        Codigo    := removeNumero(Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2));

        if Codigo = '' then
           bImportar := true;

        if Codigo = Trim('FIM') then
           break;

        if bImportar then
        begin
        Descricao  := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        Unidade    := 'UN';
        Custo      := '0';
        MLucro     := '0';
        Preco      := Validar.PontoVirgula(Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2));
        sPisCofins := '0';
        sGrupo     := Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2);
        sMarca     := Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2);
        sRef       := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        sRef2      := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if Codigo <> '' then
        begin
          if Length(Codigo) <= 7 then
          begin
            Unidade             := 'KG';
            Produto.sBalanca    := '1';
            Produto.cod         := Validar.gerarDigitoZero(System.Copy(Codigo,1,7),7);
            Produto.codigoBarra := Validar.gerarDigitoZero(Codigo, 14);
          end
          else
          begin
            Unidade             := 'UN';
            Produto.sBalanca    := '0';
            Produto.cod         := ProdutoRN.gerarCodigo;
            Produto.codigoBarra := Validar.gerarDigitoZero(Codigo, 14);
          end;
        end
        else
        begin
          Unidade             := 'UN';
          Produto.sBalanca    := '0';
          Produto.cod         := ProdutoRN.gerarCodigo;
          Produto.codigoBarra := Validar.gerarDigitoZero(Produto.cod, 14);
        end;

        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;

        Produto.CST                := '000';
        Produto.AliquotaIcms       := 18;

        if sGrupo = '' then
           sGrupo := '1006'
        else
           sGrupo := ProdutoRN.getGrupoPorCodigo(sGrupo);

        if sMarca = '' then
           sMarca := '9'
        else
           sMarca := ProdutoRN.getGrupoPorMarca(sMarca);

        Produto.unidade.codigo := '2';
        if (Unidade = 'UN') or (Unidade = 'UNI') or (Unidade = 'UND') or (Unidade = 'UNID') then
           Produto.unidade.codigo := '2';

        if Unidade = 'CX' then
           Produto.unidade.codigo := '4';

        if Unidade = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.unidadeSaida.codigo   := Produto.unidade.codigo;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := sGrupo;
        Produto.Marca.codigo          := StrToInt(sMarca);
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.comissaoValor         := 0;
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := sRef;
        Produto.sReferencia2          := sRef2;
        Produto.sObs                  := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := '40169100';
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := 0;
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;

        if Produto.cod <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');

        end;
        }
        ProgressBar.Position := ProgressBar.Position + 1;
      end;
    end;
  end;

  ShowMessage('OK!...OK!');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+'-'+IntToStr(i));
    end;
  end;
end;

procedure TfrmPrincipal.Button24Click(Sender: TObject);
var
  Codigo, Descricao, Aliquota, Preco, Custo, sMsg, sQtde, Unidade, MLucro, sPisCofins: string;
  i, iPlanilha, CodigoDados, pessoaimpid,i3142628: integer;
  sGrupo, Nome, CpfCnpj, sTipo, sFone: string;
  sDDDCel, sFONECel, sDDDTel, sFONETel, CobBairro: string;
  CodigoImportacao, DataCadastro, Cat, Lim, Email, Cob: string;
  CobCidade, CobUf, CobCep, CobNo, sStatus, Apel, RI, Obs, Nasc, sArquivo: string;
  Validar   : TValidar;
  Produto   : TProduto;
  ProdutoRN : TProdutoRN;
  Fornecedor: TDados;
  LCID      : Cardinal;
  WKBK      :_Workbook;
begin
  try
   try
    Produto   := TProduto.Create;
    ProdutoRN := TProdutoRN.Create;
    Validar   := TValidar.Create;

    iPlanilha := 1;

    ZQuery.Close;
    ZQuery.SQL.Clear;
    ZQuery.SQL.Add('insert into dados(id, datacadastro, identificador, codigoimportacao, categoriaid) ');
    ZQuery.SQL.Add('values (:id, :cad, :ident, :codigoimportacao, :categoriaid)                       ');

    ZQPF.SQL.Clear;
    ZQPF.SQL.Add(' INSERT INTO public.dadospessoafisica                                                      ');
    ZQPF.SQL.Add('( id, nome, apelido, datanascimento, sexo, rg, statusid, obs, tipocliente)                 ');
    ZQPF.SQL.Add('VALUES ( :id, :nome, :apelido, :datanascimento, :sexo, :rg, :statusid, :obs, :tipocliente) ');

    ZQPJ.SQL.Clear;
    ZQPJ.SQL.Add('INSERT INTO public.dadospessoajuridica (              ');
    ZQPJ.SQL.Add('id, inscricaoestadual, nomefantasia,                  ');
    ZQPJ.SQL.Add('razaosocial, contato, inscricaomunicipal,             ');
    ZQPJ.SQL.Add(' usuariasistema, statusid, obs, tipocliente )         ');
    ZQPJ.SQL.Add('VALUES (:id, :inscricaoestadual, :nomefantasia,       ');
    ZQPJ.SQL.Add('      :razaosocial, :contato, :inscricaomunicipal,    ');
    ZQPJ.SQL.Add('      :usuariasistema, :statusid, :obs, :tipocliente) ');

    ZQPIMP.SQL.Clear;
    ZQPIMP.SQL.Add('INSERT INTO public.pessoaimpl (id, dadosid, status ) ');
    ZQPIMP.SQL.Add(' VALUES (:id, :dadosid, :status )                    ');

    ZQEND.SQL.Clear;
    ZQEND.SQL.Add('INSERT INTO public.endereco (logradouro, complemento, bairro,                         ');
    ZQEND.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero ) VALUES ( ');
    ZQEND.SQL.Add(':logradouro, :complemento, :bairro, :cidade, :estado, :cep,                           ');
    ZQEND.SQL.Add(':tipoenderecoid, :dadosid, :paisid, :isnotafiscal, :numero)                           ');

    ZQTel.SQL.Clear;
    ZQTel.SQL.Add(' INSERT INTO public.telefone ( ddd, numero, tipoenderecoid, dadosid ');
    ZQTel.SQL.Add(' ) VALUES ( :ddd, :numero, :tipoenderecoid, :dadosid )              ');

    ZQCli.SQL.Clear;
    ZQCli.SQL.Add('INSERT INTO public.cliente (id, limitefinanceiro) VALUES (:id, :limitefinanceiro) ');

    ZQDV.SQL.Clear;
    ZQDV.SQL.Add('INSERT INTO  public.dadosvinculo ( dadosid, vinculoid) ');
    ZQDV.SQL.Add(' VALUES (:dadosid, :vinculoid)                         ');

    ZQEmail.SQL.Clear;
    ZQEmail.SQL.Add('INSERT INTO public.email (descricao, tipoenderecoid, dadosid ) VALUES ( ');
    ZQEmail.SQL.Add(':descricao, :tipoenderecoid, :dadosid)                                  ');

    ZQCatCli.SQL.Clear;
    ZQCatCli.SQL.Add('insert into categoriacliente(id, descricao) values ( ');
    ZQCatCli.SQL.Add(':id, :descricao)                                     ');

    ZQDados.Close;
    ZQDados.SQL.Clear;
    ZQDados.SQL.Text := 'select nextval(''dados_id_seq'') as id ';

    sArquivo  := ExtractFilePath(Application.ExeName)+'xls\CLIENTES.xls';

    Xls_To_StringGrid(StringGrid1, sArquivo);

    ProgressBar.Max      := StringGrid1.RowCount;
    i3142628             := StringGrid1.RowCount;;
    lbstatus.Caption     := '';
    lbstatus.Visible     := true;
    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      Codigo := Trim(StringGrid1.Cells[0, i]);

      if Codigo = 'FIM' then
         break;

      if ehNumero(Codigo) then
      begin
      Nome   := Trim(StringGrid1.Cells[10, i]);
      Apel   := Trim(StringGrid1.Cells[14, i]);
      Lim    := Validar.PontoVirgula(Trim(StringGrid1.Cells[22, i]));
      RI     := Trim(StringGrid1.Cells[13, i]);
      Cat    := '0';
      DataCadastro := Copy(Trim(StringGrid1.Cells[3, i]), 1, 2)+'/'+Copy(Trim(StringGrid1.Cells[3, i]), 4, 2)+'/'+Copy(Trim(StringGrid1.Cells[3, i]), 7, 4);

      if Lim = '' then
         Lim := '0';

      if Apel = '' then
         Apel := Nome;

      CpfCnpj := removeNumero(StringGrid1.Cells[17, i]);
      sTipo   := Trim(StringGrid1.Cells[2, i]);

      sFone    := removeNumero(Trim(StringGrid1.Cells[8, i]));
      sDDDTel  := Trim(System.Copy(sFone, 1, 2));
      sFONETel := Trim(System.Copy(sFone, 3, 20));

      CodigoImportacao := Codigo;

      ZQDados.Close;
      ZQDados.Open;

      while ProdutoRN.codigoExiste(Codigo) do
      begin
        ZQDados.Close;
        ZQDados.Open;

        CodigoDados := ZQDados.FieldByName('id').AsInteger;
        Codigo      := ZQDados.FieldByName('id').AsString;
      end;

      if (Codigo = '1426') or (Codigo = '1428') or (Codigo = '3') then
      begin
        i3142628    := i3142628 + 1;
        CodigoDados := i3142628;
        pessoaimpid := i3142628;
      end
      else
        CodigoDados := StrToInt(Codigo);

      ZQuery.Close;
      ZQuery.ParamByName('id').AsString    := IntToStr(CodigoDados);
      ZQuery.ParamByName('ident').AsString := removeNumero(CpfCnpj);

      if DataCadastro = '' then
         ZQuery.ParamByName('cad').AsDate := Now
      else
         ZQuery.ParamByName('cad').AsDate := StrToDate(DataCadastro);

      ZQuery.ParamByName('codigoimportacao').AsString := CodigoImportacao;
      ZQuery.ParamByName('categoriaid').AsInteger     := StrToInt(Cat);
      ZQuery.ExecSQL;

      ZQCli.Close;
      ZQCli.ParamByName('id').AsInteger             := CodigoDados;
      ZQCli.ParamByName('limitefinanceiro').AsFloat := StrToFloat(getLim(Lim));
      ZQCli.ExecSQL;

      ZQDV.Close;
      ZQDV.ParamByName('dadosid').AsInteger   := CodigoDados;
      ZQDV.ParamByName('vinculoid').AsInteger := 1;
      ZQDV.ExecSQL;

      Email := '';
      if Email <> '' then
      begin
        ZQEmail.Close;
        ZQEmail.ParamByName('descricao').AsString       := Email;
        ZQEmail.ParamByName('tipoenderecoid').AsInteger := 1;
        ZQEmail.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEmail.ExecSQL;
      end;

      CobBairro := Trim(StringGrid1.Cells[5, i]);
      Cob       := Trim(StringGrid1.Cells[4, i]);
      CobCidade := Trim(StringGrid1.Cells[7, i]);
      CobUf     := Trim(StringGrid1.Cells[6, i]);
      CobCep    := Trim(StringGrid1.Cells[11, i]);
      CobNo     := Trim(StringGrid1.Cells[16, i]);

      if CobNo = '' then
         CobNo := 'S/N';

      if (CobBairro <> '') then
      begin
        ZQEND.Close;
        ZQEND.ParamByName('logradouro').AsString      := Cob;
        ZQEND.ParamByName('complemento').AsString     := Trim(StringGrid1.Cells[9, i]);;
        ZQEND.ParamByName('bairro').AsString          := CobBairro;
        ZQEND.ParamByName('cidade').AsString          := getCodigoCidade(CobCidade, CobUf);
        ZQEND.ParamByName('estado').AsString          := getCodigoUF(CobUf);
        ZQEND.ParamByName('cep').AsString             := removeSONumero(CobCep);
        ZQEND.ParamByName('tipoenderecoid').AsInteger := 4;
        ZQEND.ParamByName('dadosid').AsInteger        := CodigoDados;
        ZQEND.ParamByName('paisid').AsInteger         := 1;
        ZQEND.ParamByName('isnotafiscal').AsString    := '0';
        ZQEND.ParamByName('numero').AsString          := CobNo;
        ZQEND.ExecSQL;
      end;

      if Trim(sFONETel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDTel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONETel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 2;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      if Trim(sFONECel) <> '' then
      begin
        ZQTel.Close;
        ZQTel.ParamByName('ddd').Clear;
        ZQTel.ParamByName('numero').Clear;
        ZQTel.ParamByName('tipoenderecoid').Clear;
        ZQTel.ParamByName('dadosid').Clear;

        ZQTel.ParamByName('ddd').AsInteger    := StrToInt(sDDDCel);
        ZQTel.ParamByName('numero').AsInteger := StrToInt(sFONECel);

        ZQTel.ParamByName('tipoenderecoid').AsInteger  := 3;
        ZQTel.ParamByName('dadosid').AsInteger         := CodigoDados;
        ZQTel.ExecSQL;
      end;

      sStatus := '18';
      Apel    := '';
      if sTipo = 'F' then
      begin
        ZQPF.Close;
        ZQPF.ParamByName('id').AsInteger         := CodigoDados;
        ZQPF.ParamByName('nome').AsString        := Trim(Nome);
        ZQPF.ParamByName('apelido').AsString     := Trim(Apel);
        ZQPF.ParamByName('statusid').AsInteger   := StrToInt(sStatus);
        ZQPF.ParamByName('obs').AsString         := Obs;
        ZQPF.ParamByName('tipocliente').AsString := '0';
        if Nasc = '' then
           ZQPF.ParamByName('datanascimento').Clear
        else
           ZQPF.ParamByName('datanascimento').AsDate := StrToDate(removeData(Nasc));

        ZQPF.ParamByName('rg').AsString := removeNumero(RI);

        ZQPF.ParamByName('sexo').Clear;
        ZQPF.ExecSQL;
      end;

      if sTipo = 'J' then
      begin
        ZQPJ.Close;
        ZQPJ.ParamByName('id').AsInteger                := CodigoDados;
        ZQPJ.ParamByName('inscricaoestadual').AsString  := RI;
        ZQPJ.ParamByName('razaosocial').AsString        := Trim(Nome);
        ZQPJ.ParamByName('nomefantasia').AsString       := Trim(Apel);
        ZQPJ.ParamByName('contato').AsString            := '';
        ZQPJ.ParamByName('inscricaomunicipal').AsString := '';
        ZQPJ.ParamByName('usuariasistema').AsInteger    := 0;
        ZQPJ.ParamByName('statusid').AsInteger          := StrToInt(sStatus);
        ZQPJ.ParamByName('obs').AsString                := Obs;
        ZQPJ.ParamByName('tipocliente').AsString        := '0';
        ZQPJ.ExecSQL;
      end;
      end;

      Obs:= '';
      sStatus:= '';

      ProgressBar.Position := ProgressBar.Position + 1;
    end;
  finally
    ProdutoRN.Free;
    {
    zqSeq.Close;
    zqSeq.SQL.Clear;
    zqSeq.SQL.Add('select (max(id)+1) as id from dados where id not in(1428,1426,3) ');
    zqSeq.Open;

    CodigoDados  := zqSeq.FieldByName('id').AsInteger;

    zqSeq.Close;
    zqSeq.SQL.Clear;
    zqSeq.SQL.Add('ALTER SEQUENCE "public"."dados_id_seq"  ');
    zqSeq.SQL.Add('INCREMENT 1  MINVALUE 1                 ');
    zqSeq.SQL.Add('MAXVALUE 9223372036854775807  RESTART '+IntToStr(CodigoDados)+' ');
    zqSeq.SQL.Add('CACHE 1  NO CYCLE;                      ');
    zqSeq.ExecSQL;
    }
  end;

  ZConnection.Commit;
  ShowMessage('A importa��o foi realizada com �xito.');

  except
    on E:Exception do
    begin
      ZConnection.Rollback;
      ShowMessage(E.Message+' Codigo:'+Codigo+'-'+Nome+'-'+' Codigo Dados:'+IntToStr(CodigoDados));
    end;
  end;
end;

procedure TfrmPrincipal.Button25Click(Sender: TObject);
var
  sIdentifier: string;
begin
  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Text := 'select id, datacadastro, identificador, categoriaid from dados where identificador = '''+Edit1.Text+''' ';
  zGet.Open;

  if not zGet.IsEmpty then
  begin
    zSet.Close;
    zSet.SQL.Clear;
    zSet.SQL.Text := 'update dados set datacadastro =:dtcad, identificador=:ident, categoriaid =:categoria where id = 1428 ';
    zSet.ParamByName('dtcad').AsDateTime    := zGet.FieldByName('datacadastro').AsDateTime;
    zSet.ParamByName('ident').AsString      := zGet.FieldByName('identificador').AsString;
    zSet.ParamByName('categoria').AsInteger := zGet.FieldByName('categoriaid').AsInteger;
    zSet.ExecSQL;
  end;

  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Add('select                                    ');
  zGet.SQL.Add('inscricaoestadual, nomefantasia,      ');
  zGet.SQL.Add('razaosocial, contato, inscricaomunicipal, ');
  zGet.SQL.Add('usuariasistema,statusid, tipocliente from dadospessoajuridica join dados on    ');
  zGet.SQL.Add('dados.id=dadospessoajuridica.id where dados.identificador = '''+Edit1.Text+''' ');
  zGet.Open;

  if not zGet.IsEmpty then
  begin
    zSet.Close;
    zSet.SQL.Clear;
    zSet.SQL.Text := 'update dadospessoajuridica set inscricaoestadual=:inscricaoestadual, nomefantasia=:nomefantasia, '+
    'razaosocial=:razaosocial, contato=:contato, inscricaomunicipal=:inscricaomunicipal,                               '+
    'usuariasistema=:usuariasistema,statusid=:statusid, tipocliente=:tipocliente                                       '+
    'where id = 1428 ';
    zSet.ParamByName('inscricaoestadual').AsString    := zGet.FieldByName('inscricaoestadual').AsString;
    zSet.ParamByName('nomefantasia').AsString      := zGet.FieldByName('nomefantasia').AsString;
    zSet.ParamByName('razaosocial').AsString   := zGet.FieldByName('razaosocial').AsString;
    zSet.ParamByName('contato').AsString    := zGet.FieldByName('contato').AsString;
    zSet.ParamByName('inscricaomunicipal').AsString      := zGet.FieldByName('inscricaomunicipal').AsString;
    zSet.ParamByName('usuariasistema').AsString   := zGet.FieldByName('usuariasistema').AsString;
    zSet.ParamByName('inscricaoestadual').AsString    := zGet.FieldByName('inscricaoestadual').AsString;
    zSet.ParamByName('statusid').AsInteger      := zGet.FieldByName('statusid').AsInteger;
    zSet.ParamByName('tipocliente').AsInteger   := zGet.FieldByName('tipocliente').AsInteger;
    zSet.ExecSQL;
  end;

  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Add('select                           ');
  zGet.SQL.Add('logradouro, complemento, bairro, ');
  zGet.SQL.Add('cidade, estado, cep, tipoenderecoid, dadosid, paisid, isnotafiscal, numero from endereco');
  zGet.SQL.Add('join dados on ');
  zGet.SQL.Add('dados.id=endereco.dadosid where dados.identificador = '''+Edit1.Text+''' ');
  zGet.Open;

  if not zGet.IsEmpty then
  begin
    zSet.Close;
    zSet.SQL.Clear;
    zSet.SQL.Text := 'update endereco set logradouro=:logradouro, complemento=:complemento, bairro=:bairro, '+
    'cidade=:cidade, estado=:estado, cep=:cep, tipoenderecoid=:tipoenderecoid, dadosid=:dadosid, '+
    'paisid=:paisid, isnotafiscal=:isnotafiscal, numero=:numero '+
    'where id = 1428 ';
    zSet.ParamByName('logradouro').AsString    := zGet.FieldByName('logradouro').AsString;
    zSet.ParamByName('complemento').AsString      := zGet.FieldByName('complemento').AsString;
    zSet.ParamByName('bairro').AsString   := zGet.FieldByName('bairro').AsString;
    zSet.ParamByName('cidade').AsString    := zGet.FieldByName('cidade').AsString;
    zSet.ParamByName('estado').AsString      := zGet.FieldByName('estado').AsString;
    zSet.ParamByName('cep').AsString   := zGet.FieldByName('cep').AsString;
    zSet.ParamByName('tipoenderecoid').AsInteger    := zGet.FieldByName('tipoenderecoid').AsInteger;
    zSet.ParamByName('dadosid').AsInteger      := zGet.FieldByName('dadosid').AsInteger;
    zSet.ParamByName('paisid').AsInteger   := zGet.FieldByName('paisid').AsInteger;
    zSet.ParamByName('numero').AsString   := zGet.FieldByName('numero').AsString;
    zSet.ExecSQL;
  end;

  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Add('select ddd, numero, tipoenderecoid, dadosid from telefone ');
  zGet.SQL.Add('join dados on ');
  zGet.SQL.Add('dados.id=telefone.dadosid where dados.identificador = '''+Edit1.Text+''' ');
  zGet.Open;

  if not zGet.IsEmpty then
  begin
    zSet.Close;
    zSet.SQL.Clear;
    zSet.SQL.Text := 'update telefone set ddd=:ddd, numero=:numero, tipoenderecoid=:tipoenderecoid where id = 1428 ';
    zSet.ParamByName('ddd').AsInteger    := zGet.FieldByName('ddd').AsInteger;
    zSet.ParamByName('numero').AsInteger      := zGet.FieldByName('numero').AsInteger;
    zSet.ParamByName('tipoenderecoid').AsInteger := zGet.FieldByName('tipoenderecoid').AsInteger;
    zSet.ExecSQL;
  end;

  zGet.Close;
  zGet.SQL.Clear;
  zGet.SQL.Add('select descricao, tipoenderecoid, dadosid from email ');
  zGet.SQL.Add('join dados on ');
  zGet.SQL.Add('dados.id=email.dadosid where dados.identificador = '''+Edit1.Text+''' ');
  zGet.Open;

  if not zGet.IsEmpty then
  begin
    zSet.Close;
    zSet.SQL.Clear;
    zSet.SQL.Text := 'update email set descricao=:descricao, tipoenderecoid=:tipoenderecoid where id = 1428 ';
    zSet.ParamByName('descricao').AsString    := zGet.FieldByName('descricao').AsString;
    zSet.ParamByName('tipoenderecoid').AsInteger := zGet.FieldByName('tipoenderecoid').AsInteger;
    zSet.ExecSQL;
  end;

  Zget.Close;
  Zget.SQL.Clear;
  Zget.SQL.Text := 'SELECT identificador from DADOS WHERE id = 1428';
  Zget.Open;

  sIdentifier := Zget.FieldByName('identificador').AsString;

  Zget.Close;
  Zget.SQL.Clear;
  Zget.SQL.Text := 'SELECT upper(tablename) as table FROM pg_tables where schemaname = ''public'' ';
  Zget.Open;

  while not Zget.Eof do
  begin
    Zset.Close;
    Zset.SQL.Clear;
    Zset.SQL.Text :=
    'UPDATE '+Zget.FieldByName('table').AsString+' SET identifier = '''+sIdentifier+''' ';
    Zset.ExecSQL;

    Zget.Next;
  end;

  ShowMessage('OK...OK...OK');
end;

procedure TfrmPrincipal.Button27Click(Sender: TObject);
var
  i, iPos1, iPos2: Integer;
  Validar: TValidar;
  Codigo, Ex, Tabela, Descricao, AliqNac, AliqImp: string;

  bImportar: boolean;
  ArquivoTXT: TextFile;
  sLinha, sConteudo, Path, sInf: string;
  iCont: integer;

  Linhas, Colunas: TStringList;
  j:integer;

  bLeLinha: boolean;
begin
  try
  Validar := TValidar.Create;
  Path    := ExtractFilePath(Application.ExeName) + '\xls\IBPTax.0.0.2.csv';
  Linhas  := TStringList.Create;
  Colunas := TStringList.Create;

  zSet.Close;
  zSet.SQL.Clear;
  zSet.SQL.Text := 'INSERT INTO fonteibpt (codigo,ex,tabela,descricao,aliqnac,aliqimp) '+
  'VALUES (:codigo,:ex,:tabela,:descricao,:aliqnac,:aliqimp) ';

  try
    Linhas.LoadFromFile(Path);
    
    ProgressBar.Position := 0;
    ProgressBar.Max      := Linhas.Count;

    for i := 1 to Pred(Linhas.Count) do
    begin
      Colunas.text := Trim(StringReplace(Linhas.Strings[i], ';', #13, [rfReplaceAll]));
      bImportar    := false;
      for j := 0 to Colunas.Count-1 do
      begin
        case j of
          0: Codigo  := Trim(Colunas.Strings[j]);
          1: Ex      := Trim(Colunas.Strings[j]);
          2: Tabela  := Trim(Colunas.Strings[j]);
          3: begin
              Descricao := Trim(Colunas.Strings[j]);

              if Copy(Descricao,1,2) = '--'then
                 Delete(Descricao,1,2);

              if Copy(Descricao,1,1) = '-'then
                 Delete(Descricao,1,1);
              
          end;
          4: AliqNac := Trim(Colunas.Strings[j]);
          5: begin
               AliqImp   := Trim(Colunas.Strings[j]);
               bImportar := true;
          end;
        end;
      end;

      if bImportar then
      begin
        bImportar := false;

        zSet.Close;
        zSet.ParamByName('codigo').AsString    := Codigo;
        zSet.ParamByName('ex').AsString        := Ex;
        zSet.ParamByName('tabela').AsString    := Tabela;
        zSet.ParamByName('descricao').AsString := Descricao;
        zSet.ParamByName('aliqnac').AsFloat    := StrToFloat(Validar.PontoVirgula(AliqNac));
        zSet.ParamByName('aliqimp').AsFloat    := StrToFloat(Validar.PontoVirgula(AliqImp));
        zSet.ExecSQL;

        ProgressBar.Position := i;
      end;
    end;
  finally
    Linhas.Free;
    Colunas.Free;
  end;


  ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message+' codigo: '+Codigo);
    end;
  end;
end;

procedure TfrmPrincipal.Button28Click(Sender: TObject);
var
  Titulo: TTitulo;
  TituloRN: TTituloRN;
  Parcela: TParcela;
  DataVenc: TDateTime;
  aPessoa: Array[0..3] of integer;
  iPessoa, iMes, iTamArray: integer;
begin
  try
    aPessoa[0] := 37;
    aPessoa[1] := 38;
    aPessoa[2] := 39;
    aPessoa[3] := 95;

    iTamArray  := 0;

    Titulo          := TTitulo.Create;
    TituloRN        := TTituloRN.Create;
    Parcela         := TParcela.Create;

    for iPessoa := 0 to Length(aPessoa) - 1 do
    begin

      DataVenc := StrToDate('05/01/2014');

      for iMes := 1 to 12 do
      begin
        Inc(iTamArray);
        SetLength(Parcela.parcelas, iTamArray);

        Parcela.parcelas[0] := TParcela.Create;

        Parcela.Titulo.modalidadePagamento.codigo := 2;
        Parcela.parcelas[0].Usuario.codigo        := 38;
        Parcela.parcelas[0].Tipodocumento.codigo  := 1;
        Parcela.parcelas[0].vl_parcela            := 4500;
        Parcela.parcelas[0].no_parcela            := 1;

        Parcela.parcelas[0].dt_vencimento    := DataVenc;
        Parcela.parcelas[0].dt_cadastramento := Now;
        Parcela.parcelas[0].Status.codigo    := 1;

        Parcela.Titulo.Cmf.codigo            := 140;
        Parcela.Titulo.tipodocumento.codigo  := 1;
        Parcela.Titulo.Setor.codigo          := 4;
        Parcela.Titulo.prepagamento          := '';
        Parcela.Titulo.status.codigo         := 1;
        Parcela.Titulo.vl_titulo             := 4500;

        Parcela.Titulo.no_totalParcelas  := 1;
        Parcela.Titulo.no_diavencimento  := 5;
        Parcela.Titulo.dt_vencimento     := DataVenc;
        Parcela.Titulo.dt_periodoinicial := DataVenc;
        Parcela.Titulo.dt_periodofinal   := DataVenc;
        Parcela.Titulo.dt_cadastro       := DataVenc;
        Parcela.Titulo.nm_obs            := '';

        Parcela.Titulo.dados.codigo   := aPessoa[iPessoa];
        Parcela.Titulo.usuario.codigo := 38;

        Parcela.Titulo.contrato.numeroContrato    := 1;
        Parcela.Titulo.modalidadePagamento.codigo := 2;

        Parcela.Titulo.numeroPromissoria := '';

        TituloRN.InsertOrUpdate(Parcela.Titulo, Parcela, 'insertado');

        DataVenc := IncMonth(DataVenc, 1);
      end;
    end;

    ShowMessage('A importa��o foi realizada com �xito.');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TfrmPrincipal.Button29Click(Sender: TObject);
var
  Codigo, Descricao, Preco, Custo, sMsg, sQtde, MLucro, sPisCofins, Estoque: string;
  i, iPlanilha, iId: integer;
  Produto: TProduto;
  ProdutoRN: TProdutoRN;
  Fornecedor: TDados;
  Validar: TValidar;
  LCID: Cardinal;
  WKBK :_Workbook;
  CodigoBARRAS, NCM, CFOP, CST, ALIQUOTA, UNIDADE, BALANCA: string;
begin
  Produto   := TProduto.Create;
  Validar   := TValidar.Create;
  ProdutoRN := TProdutoRN.Create;

  iPlanilha := 1;

  WKBK := ExcelApplication1.Workbooks.Open(
  ExtractFilePath(Application.ExeName) +'xls\ProdutoBATRA.xls', EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, LCID);

  { Conecta a planilha (1) que ser� a planilha a receber os dados }
  ExcelWorksheet1.ConnectTo(WKBK.Worksheets[iPlanilha] as _Worksheet);
  { Ativa a planilha conectada }
  ExcelWorksheet1.Activate(LCID);
  { Torna poss�vel fazer altera��es }
  ExcelApplication1.ScreenUpdating[LCID] := True;

  ProgressBar.Position := 0;
  ProgressBar.Max      := 11781;
  iId                  := 1;
  lbstatus.Caption     := '';
  lbstatus.Visible     := true;
  with ExcelWorksheet1 do
  begin
    for i := 2 to Rows.Count do
    begin
      Codigo := Trim(Range['A' + IntToStr(I), 'A' + IntToStr(I)].Value2);

      //if Codigo = '201480000' then
      //   ShowMessage(Codigo);

      if Codigo = 'FIM' then
         break;

        CodigoBARRAS := Trim(Range['B' + IntToStr(I), 'B' + IntToStr(I)].Value2);
        NCM          := Trim(Range['C' + IntToStr(I), 'C' + IntToStr(I)].Value2);
        CFOP         := Trim(Range['D' + IntToStr(I), 'D' + IntToStr(I)].Value2);
        CST          := Validar.gerarDigitoZero(Trim(Range['E' + IntToStr(I), 'E' + IntToStr(I)].Value2), 3);
        ALIQUOTA     := Validar.PontoVirgula(Trim(Range['F' + IntToStr(I), 'F' + IntToStr(I)].Value2));
        Descricao    := Trim(Range['G' + IntToStr(I), 'G' + IntToStr(I)].Value2);
        UNIDADE      := Trim(Range['H' + IntToStr(I), 'H' + IntToStr(I)].Value2);
        BALANCA      := Trim(Range['I' + IntToStr(I), 'I' + IntToStr(I)].Value2);
        Preco        := Validar.PontoVirgula(Trim(Range['J' + IntToStr(I), 'J' + IntToStr(I)].Value2));
        Custo        := Validar.PontoVirgula(Trim(Range['K' + IntToStr(I), 'K' + IntToStr(I)].Value2));
        MLucro       := '0';
        sPisCofins   := '0';
        Estoque      := '0';

        sMsg := 'PRODUTO: C�DIGO'+Codigo;

        lbstatus.Caption     := 'Importando Produtos, Aguarde...'+Codigo;
        lbstatus.Refresh;
        lbstatus.Repaint;

        if BALANCA = '1' then
        begin
          UNIDADE          := 'KG';
          Produto.sBalanca := '1';

          if (System.Copy(CodigoBARRAS, 1, 1) = '2') then
              System.Delete(CodigoBARRAS, 1, 1);

          Produto.cod         := Validar.gerarDigitoZero(CodigoBARRAS, 7);
          Produto.codigoBarra := Validar.gerarDigitoZero(CodigoBARRAS, 14);
        end
        else
        begin
          UNIDADE             := 'UN';
          Produto.sBalanca    := '0';

          Produto.cod         := Validar.gerarDigitoZero(Codigo, 7);//ProdutoRN.gerarCodigo;
          Produto.codigoBarra := Validar.gerarDigitoZero(CodigoBARRAS, 14);
        end;

        Produto.codigoBarraImport  := Produto.codigoBarra;
        Produto.descricao          := UpperCase(Descricao);
        Produto.descricaoFiscal    := Produto.descricao;
        Produto.CST                := CST;
        Produto.AliquotaIcms       := StrToFloat(Aliquota);

        {
        C - CAIXA    CX  4
        U - UNIDADE  UN  2
        G - GRAMA    G   7
        M - METRO    m   5
        P - PAR      P   8
        L - LITRO    L   9
        S - SACO     S   10
        V - VARA     V   11
        K - KILO     KG  1
        }

        Produto.unidade.codigo := '2';
        if (UNIDADE = 'UN') then
            Produto.unidade.codigo := '2';

        if UNIDADE = 'KG' then
           Produto.unidade.codigo := '1';

        Produto.unidadeSaida.codigo := Produto.unidade.codigo;

        Produto.PisCofins := 1;
        if sPisCofins <> '1' then
           Produto.PisCofins := 2;

        Produto.valor                 := StrToFloat(removeNumero(Preco));
        Produto.lote                  := '';
        Produto.TipoProduto.codigo    := '1006';
        Produto.Marca.codigo          := 9;
        Produto.garantia              := '0';
        Produto.subsecao.codigo       := 3;
        Produto.valorCompra           := StrToFloat(removeNumero(Custo));
        Produto.CustoMedio            := StrToFloat(removeNumero(Custo));
        Produto.estoqueminimo         := 0;
        Produto.estoquemaximo         := 0;
        Produto.comissaoPercentual    := 0;
        Produto.descontoMaximo        := 0;
        Produto.bCalcIcms             := 0;
        Produto.bCalcIcmsSubs         := 0;
        Produto.AliquotaIpi           := 0;
        Produto.Status.codigo         := 29;
        Produto.sVendaDiferenciada    := '0';
        Produto.sConstanteCalculo     := '0';
        Produto.sReferencia           := '';
        Produto.sIPPT                 := 'T';
        Produto.NCM                   := NCM;
        Produto.DiaValidade           := 0;
        Produto.MvaSaida              := 0;
        Produto.TipoMercadoria.codigo := 0;
        Produto.MargemLucro           := StrToFloat(removeNumero(MLucro));
        Produto.MargemMinLucro        := Produto.MargemLucro;
        Produto.QtdeConversao         := 0;
        Produto.PrecoConversao        := 0;
        Produto.DeducaoICMSSaida      := 0;
        Produto.Qtde                  := StrToFloat(Estoque);
        Produto.TipoMercadoria.codigo := 1;
        Produto.Fornecedor.Codigo     := 1428;

        if Codigo <> '' then
           ProdutoRN.InsertOrUpdate(Produto, '');

      ProgressBar.Position := ProgressBar.Position + 1;
      lbstatus.Caption     := Produto.Descricao;
      lbstatus.Refresh;
      lbstatus.Repaint;
    end;
  end;

  ShowMessage('OK!...OK!');
end;

end.
