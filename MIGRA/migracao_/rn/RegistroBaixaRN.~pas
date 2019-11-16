unit RegistroBaixaRN;

interface

uses
  RegistroBaixa,RegistroBaixaDAO, Variants, SysUtils, Parcela,
  TituloRN, Juros, Validar;

type
  TRegistroBaixaRN = class

  private
    { Private Declarations }
  public
    registroBaixaDao : TRegistroBaixaDAO;
    constructor Create;
    function modpagamento(RegistroBaixa : TRegistroBaixa) : String;
    function numeroDocumento(RegistroBaixa : TRegistroBaixa) : String;
    function BaixarParcela(registroBaixa : TRegistroBaixa) : Boolean;
    procedure alterarStatusParcela(RegistroBaixa : TRegistroBaixa; status : integer);
    function verificaStatusParcela(RegistroBaixa: TRegistroBaixa): Boolean;
    function statusParcelaTitulo(RegistroBaixa : TRegistroBaixa):Boolean;
    procedure atualizarStatusTitulo(RegistroBaixa : TRegistroBaixa);
    function verificaExiteJuros(RegistroBaixa : TRegistroBaixa):Boolean;
    function pegaJurosCMF(RegistroBaixa : TRegistroBaixa): TJuros;
    function calcularJuros(RegistroBaixa : TRegistroBaixa) : Real;
    procedure atualizaValorComJuros(parcela : integer; valor : Real);
    function getParcela(iCodigoTitulo: integer): TParcela;
  end;

implementation

type
  visto=record
    setor   : String;
    idSetor : Integer;
  end;

constructor TRegistroBaixaRN.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

function TRegistroBaixaRN.modpagamento(
  RegistroBaixa: TRegistroBaixa): String;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    result := registroBaixaDao.modpagamento(RegistroBaixa);
  finally
    registroBaixaDao.Free;
  end;

end;

function TRegistroBaixaRN.numeroDocumento(
  RegistroBaixa: TRegistroBaixa): String;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    result := registroBaixaDao.numeroDocumento(RegistroBaixa);
  finally
    registroBaixaDao.Free;
  end;
end;

function TRegistroBaixaRN.pegaJurosCMF(RegistroBaixa: TRegistroBaixa): TJuros;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    result := registroBaixaDao.pegaJurosCMF(registroBaixa);
  finally
    registroBaixaDao.Free;
  end;
end;

function TRegistroBaixaRN.statusParcelaTitulo(
  RegistroBaixa: TRegistroBaixa): Boolean;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    result := registroBaixaDao.statusParcelaTitulo(registroBaixa);
  finally
    registroBaixaDao.Free;
  end;
end;

function TRegistroBaixaRN.verificaExiteJuros(
  RegistroBaixa: TRegistroBaixa): Boolean;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    result := registroBaixaDao.verificaExiteJuros(registroBaixa);
  finally
    registroBaixaDao.Free;
  end;
end;

function TRegistroBaixaRN.verificaStatusParcela(
  RegistroBaixa: TRegistroBaixa): Boolean;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    result := registroBaixaDao.verificaStatusParcela(registroBaixa);
  finally
    registroBaixaDao.Free;
  end;
end;

procedure TRegistroBaixaRN.alterarStatusParcela(RegistroBaixa: TRegistroBaixa; status : integer);
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    registroBaixaDao.alterarStatusParcela(registrobaixa,status);
  finally
    registroBaixaDao.Free;
  end;
end;

procedure TRegistroBaixaRN.atualizarStatusTitulo(RegistroBaixa: TRegistroBaixa);
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    registroBaixaDao.atualizarStatusTitulo(registroBaixa);
  finally
    registroBaixaDao.Free;
  end;

end;

procedure TRegistroBaixaRN.atualizaValorComJuros(parcela: integer; valor: Real);
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    registroBaixaDao := TRegistroBaixaDAO.Create;

    registroBaixaDao.atualizaValorComJuros(parcela,valor);
  finally
    registroBaixaDao.Free;
  end;
end;

function TRegistroBaixaRN.BaixarParcela(registroBaixa : TRegistroBaixa) : Boolean;
var
  RegistroBaixaDao : TRegistroBaixaDAO;
begin
  try
    RegistroBaixaDao := TRegistroBaixaDAO.Create;

    if registroBaixa.no_transacao = '' then
    begin
      raise Exception.Create('Não é possivel gravar o número de transação.');
    end;
    if not verificaStatusParcela(registroBaixa) then
    begin
      registroBaixaDao.BaixarParcela(registrobaixa);

      alterarStatusParcela(registroBaixa, registroBaixa.status.codigo);

      if not statusParcelaTitulo(registroBaixa) then
      begin
        atualizarStatusTitulo(registroBaixa);
      end;
      Result := true;
    end
    else
      Result := false;
  finally
    RegistroBaixaDao.Free;
  end;
end;

function TRegistroBaixaRN.calcularJuros(RegistroBaixa: TRegistroBaixa): Real;
var
  juros    : TJuros;
  calc     : real;
  jurosDia : real;
  valorParcela : Real;
  qtdDias,i  : integer;
  validar  : TValidar;
  tituloRn : TTituloRN;
begin
  try
    juros    := TJuros.Create;
    calc     := 0;
    jurosDia := 0;
    validar  := TValidar.Create;
    tituloRn := TTituloRN.Create;
    valorParcela := RegistroBaixa.parcela.vl_parcela;

    //Dias de Atrazo
    qtdDias := validar.DifDias(RegistroBaixa.parcela.dt_vencimento,tituloRn.DataServer);

    if not verificaExiteJuros(RegistroBaixa) then
      Result := 0
    else
    if qtdDias <> 0 then
      begin
        juros := pegaJurosCMF(RegistroBaixa);
        //calculo para juros
        if ((juros.juros<=0) or (juros.juros = null)) then
          calc := calc + 0
        else
        begin
          jurosDia := (juros.juros/30)*qtdDias;
          calc     := (valorParcela*jurosDia)/100;
          jurosDia := 0;
        end;
        //calculo juros de mora
        if ((juros.jurosMora<=0) or (juros.jurosMora = null)) then
          calc := calc + 0
        else
        begin
          jurosDia := juros.jurosMora/30;
          calc     := (calc + (valorParcela*jurosDia)/100);
          jurosDia := 0;
        end;
        //calculo acrescimo
        if ((juros.acrescimo<=0) or (juros.acrescimo = null)) then
          calc := calc + 0
        else
        begin
          calc := calc + juros.acrescimo;
        end;
        valorParcela := valorParcela + calc;

        Result := calc;
      end
    else
      Result := 0;  
  finally
    juros.Free;
    validar.Free;
    tituloRn.Free;
  end;
end;

function TRegistroBaixaRN.getParcela(iCodigoTitulo: integer): TParcela;
var
  registroBaixaDao : TRegistroBaixaDAO;
begin
  try
    RegistroBaixaDao := TRegistroBaixaDAO.Create;

    Result := RegistroBaixaDao.getParcela(iCodigoTitulo);
  finally
    RegistroBaixaDao.Free;
  end;
end;

end.
