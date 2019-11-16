unit Parcela;

interface

uses Titulo,Usuario,TipoDocumento,SysUtils, StatusGrupo;

type
  TParcela = class
  private
    { Private Declarations }
  public
  codigo                  : integer;
  Titulo                  : TTitulo;
  Usuario                 : TUsuario;
  no_documento            : integer;
  Tipodocumento           : TTipoDocumento;
  vl_parcela              : Currency;
  vl_Pgto                 : currency;
  tx_juro                 : Currency;
  tx_mora                 : Currency;
  cd_tipocarteiracobranca : integer;
  no_parcela              : integer;
  dt_vencimento           : TDateTime;
  dt_Pgto                 : TDateTime;
  dt_cadastramento        : TDateTime;
  Status                  : TStatusGrupo;
  fl_tipobaixa            : integer;
  no_transacao            : integer;
  modPagamento            : String;
  modPagamentoEdit        : integer;
  parcelas : array of TParcela; //Vetor para guardar as parcelas geradas

    constructor Create;
    procedure gerarParcela(Titulo : TTitulo);
  end;

implementation

constructor TParcela.Create;
begin
  Titulo        := TTitulo.Create;
  Usuario       := TUsuario.Create;
  TipoDocumento := TTipoDocumento.Create;
  Status        := TStatusGrupo.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

procedure TParcela.gerarParcela(Titulo: TTitulo);
var
  no_parcela   : integer; // Numero de parcelas geradas
  valorParcela : array of Currency; //Valor de cada parcela
  contValor    : Currency;
  //Data : TData;
begin
  //Data := TData.Create;
  SetLength(parcelas,Titulo.no_totalParcelas+1);
  SetLength(valorParcela,Titulo.no_totalParcelas+1);
  //valorParcela := Titulo.vl_titulo/Titulo.no_totalParcelas;
  contValor := 0;

  for no_parcela := 1 to titulo.no_totalParcelas - 1 do
  begin
    if ((titulo.adiantamento <> -1) and (no_parcela = 1) and (titulo.flagNParlela = true)) then
    begin
      valorParcela[no_parcela] := titulo.adiantamento;
//      Titulo.vl_titulo := Titulo.vl_titulo - titulo.adiantamento;
    end
    else
    begin
      if ((titulo.adiantamento <> -1) and (no_parcela = 1) and (titulo.flagNParlela = false)) then
        valorParcela[no_parcela] := strtofloat(formatfloat('#0.00', (Titulo.vl_titulo/Titulo.no_totalParcelas) - titulo.adiantamento))
      else
        valorParcela[no_parcela] := strtofloat(formatfloat('#0.00', Titulo.vl_titulo/Titulo.no_totalParcelas))
    end;

    contValor := contValor + valorParcela[no_parcela];
  end;

  if ((titulo.adiantamento <> -1) and (titulo.flagNParlela = false)) then
    valorParcela[Titulo.no_totalParcelas] := (Titulo.vl_titulo - titulo.adiantamento)  - contValor
  else
    valorParcela[Titulo.no_totalParcelas] := Titulo.vl_titulo  - contValor;

  //Gera os vencimentos
  if ((titulo.adiantamento <> -1) and (Titulo.no_totalParcelas <=2) and (titulo.flagNParlela = True)) then
  begin
    for no_parcela := 1 to Titulo.no_totalParcelas do
    begin
      parcelas[no_parcela] := TParcela.Create;
      parcelas[no_parcela].Titulo.codigo                  := Titulo.codigo;
      parcelas[no_parcela].Usuario.codigo                 := Titulo.usuario.codigo;
      parcelas[no_parcela].Tipodocumento.codigo           := Titulo.tipodocumento.codigo;
      parcelas[no_parcela].vl_parcela                     := valorParcela[no_parcela];
      if no_parcela = 1 then
        //parcelas[no_parcela].dt_vencimento                := data.DateServer
      else
        parcelas[no_parcela].dt_vencimento                :=  titulo.dt_vencimento;
      parcelas[no_parcela].no_parcela                     := no_parcela;
      parcelas[no_parcela].dt_cadastramento               := Titulo.dt_cadastro;
      parcelas[no_parcela].Status.codigo                  := titulo.status.codigo;
    end;
  end
  else
  begin
    for no_parcela := 1 to Titulo.no_totalParcelas do
    begin
      parcelas[no_parcela] := TParcela.Create;
      parcelas[no_parcela].Titulo.codigo                  := Titulo.codigo;
      parcelas[no_parcela].Usuario.codigo                 := Titulo.usuario.codigo;
      parcelas[no_parcela].Tipodocumento.codigo           := Titulo.tipodocumento.codigo;
      parcelas[no_parcela].vl_parcela                     := valorParcela[no_parcela];
        //parcelas[no_parcela].dt_vencimento                := Data.gerarVencimentos(Titulo.dt_vencimento,
        //Titulo.no_totalParcelas,no_parcela,Titulo.no_diavencimento);
      parcelas[no_parcela].no_parcela                     := no_parcela;
      parcelas[no_parcela].dt_cadastramento               := Titulo.dt_cadastro;
      parcelas[no_parcela].Status.codigo                  := titulo.status.codigo;
    end;
  end;

end;

end.
