unit Produto;

interface

uses
  TipoProduto, Unidade, Graphics, jpeg, SysUtils, Variants, Classes,  Controls,
  Dialogs, StdCtrls, ExtCtrls, SubSecao, PessoaImpl, StatusGrupo, Marca,
  TipoMercadoria, Dados;

type
  TProduto = class
   FCodigo: integer;
    FDescricao: string;
    FQtde: double;
    FQtdeAtendida: double;
    FRequisicao: integer;
    FIPPT: string;
    FCFOP: string;
    FAliquotaIpi: extended;
    FPercentBaseCalcIcms: extended;
    FPercBaseIcmsCalcSubs: extended;
    FAliquotaIcms: extended;
    FcValor: currency;
    FCST: string;
    FNCM: string;
  private
    FBalanca: string;
    FMvaSaida: double;
    FQtdeEmbalagem: double;
    FDiaValidade: integer;
    FMargemLucro: double;
    FMargemMniLucro: double;
    FDeducaoICMSSaida: double;
    FQtdeConversao: double;
    FPisCofins: integer;
    FMovimento: string;
    FPrecoConversao: double;
    procedure SetsBalanca(const Value: string);
    procedure SetDiaValidade(const Value: integer);
    procedure SetMvaSaida(const Value: double);
    procedure SetQtdeEmbalagem(const Value: double);
    procedure SetDeducaoICMSSaida(const Value: double);
    procedure SetMargemLucro(const Value: double);
    procedure SetMargemMniLucro(const Value: double);
    procedure SetMovimento(const Value: string);
    procedure SetPisCofins(const Value: integer);
    procedure SetPrecoConversao(const Value: double);
    procedure SetQtdeConversao(const Value: double);
    { Private Declarations }
  public
    cod               : string;
    lote              : string;
    Tipoproduto       : TTipoProduto;
    TipoMercadoria    : TTipoMercadoria;
    unidade           : TUnidade;
    unidadeSaida      : TUnidade;
    garantia          : string;
    subsecao          : TSubSecao;
    valor             : currency;
    garantiainicio    : TDate;
    garantiafim       : TDate;
    acresextra1       : double;
    acresextra2       : double;
    acresextra3       : double;
    acresreal1        : double;
    acresreal2        : double;
    acresreal3        : double;
    extra1            : double;
    extra2            : double;
    extra3            : double;
    extrareal1        : double;
    extrareal2        : double;
    extrareal3        : double;
    comissaoValor     : double;
    comissaoPercentual: double;
    valorCompra       : double;
    descontoMaximo    : double;
    desconto          : double;
    bCalcIcms         : double;
    bCalcIcmsSubs     : double;
    descricaoFiscal   : string;
    codigoBarra       : string;
    codigoBarraImport : string;
    estoqueminimo     : double;
    estoquemaximo     : double;
    sVendaDiferenciada: string;
    sConstanteCalculo : string;
    Status            : TStatusGrupo;
    Marca             : TMarca;
    sReferencia       : string;
    sReferencia2      : string;
    sObs              : string;
    aFornecedor       : TList;
    sGenero           : string;
    PisCofins         : integer;
    ifiscal           : integer;
    Fornecedor        : TDados;
    QtdeAtacado       : double;
    precodiferenciado : string;
    precoatado        : string;
    CustoMedio        : double;
    sLocal            : string;
    valorAUX          : currency;
    descricaoAUX      : string;
    QtdeAUX           : double;
    sFamilia          : string;
    CEST              : string;
    constructor Create;
    procedure SetDescricao(const Value: string);
    procedure SetCodigo(const Value: integer);
    procedure SetQtde(const Value: double);
    procedure SetQtdeAtendida(const Value: double);
    procedure SetRequisicao(const Value: integer);
    procedure SetIPPT(const Value: string);
    procedure SetAliquotaIcms(const Value: extended);
    procedure SetAliquotaIpi(const Value: extended);
    procedure SetCFOP(const Value: string);
    procedure SetPercBaseIcmsCalcSubs(const Value: extended);
    procedure SetPercentBaseCalcIcms(const Value: extended);
    procedure SetcValor(const Value: currency);
    procedure SetCST(const Value: string);
    procedure SetNCM(const Value: string);
    property Codigo: integer read FCodigo write SetCodigo;
    property Descricao: string read FDescricao write SetDescricao;
    property CST: string read FCST write SetCST;
    property NCM: string read FNCM write SetNCM;
    property MargemLucro: double read FMargemLucro write SetMargemLucro;
    property MargemMinLucro: double read FMargemMniLucro write SetMargemMniLucro;
    property QtdeEmbalagem: double read FQtdeEmbalagem write SetQtdeEmbalagem;
    property DiaValidade: integer read FDiaValidade write SetDiaValidade;
    property MvaSaida: double read FMvaSaida write SetMvaSaida;
    property DeducaoICMSSaida: double read FDeducaoICMSSaida write SetDeducaoICMSSaida;

    {Propriedade criada para atender requsição com mais de um produto}
    property Qtde: double read FQtde write SetQtde;
    property QtdeAtendida: double read FQtdeAtendida write SetQtdeAtendida;
    property Requisicao: integer read FRequisicao write SetRequisicao;
    property sIPPT: string read FIPPT write SetIPPT;
    property CFOP: string read FCFOP write SetCFOP;
    property AliquotaIcms: extended read FAliquotaIcms write SetAliquotaIcms;
    property AliquotaIpi: extended read FAliquotaIpi write SetAliquotaIpi;
    property PercBaseIcmsCalcSubs: extended read FPercBaseIcmsCalcSubs write SetPercBaseIcmsCalcSubs;
    property PercentBaseCalcIcms: extended read FPercentBaseCalcIcms write SetPercentBaseCalcIcms;
    property cValor: currency read  FcValor write SetcValor;
    property sBalanca: string read FBalanca write SetsBalanca;
    property iPisCofins: integer read FPisCofins write SetPisCofins;
    property sMovimento: string read FMovimento write SetMovimento;
    property QtdeConversao: double read FQtdeConversao write SetQtdeConversao;
    property PrecoConversao: double read FPrecoConversao write SetPrecoConversao;
  end;

implementation

constructor TProduto.Create;
begin
  TipoMercadoria := TTipoMercadoria.Create;
  Tipoproduto    := TTipoProduto.Create;
  unidade        := TUnidade.Create;
  unidadeSaida   := TUnidade.Create;
  subsecao       := TSubSecao.Create;
  Status         := TStatusGrupo.Create;
  Marca          := TMarca.Create;
  aFornecedor    := TList.Create;
  Fornecedor     := TDados.Create;
  sFamilia       := '1';
  inherited Create;
  // TODO: Add any constructor code here
end;

procedure TProduto.SetAliquotaIcms(const Value: extended);
begin
  FAliquotaIcms := Value;
end;

procedure TProduto.SetAliquotaIpi(const Value: extended);
begin
  FAliquotaIpi := Value;
end;

procedure TProduto.SetsBalanca(const Value: string);
begin
  FBalanca := Value;
end;

procedure TProduto.SetCFOP(const Value: string);
begin
  FCFOP := Value;
end;

procedure TProduto.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TProduto.SetCST(const Value: string);
begin
  FCST := Value;
end;

procedure TProduto.SetcValor(const Value: currency);
begin
  FcValor := Value;
end;

procedure TProduto.SetDeducaoICMSSaida(const Value: double);
begin
  FDeducaoICMSSaida := Value;
end;

procedure TProduto.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TProduto.SetDiaValidade(const Value: integer);
begin
  FDiaValidade := Value;
end;

procedure TProduto.SetIPPT(const Value: string);
begin
  FIPPT := Value;
end;

procedure TProduto.SetMargemLucro(const Value: double);
begin
  FMargemLucro := Value;
end;

procedure TProduto.SetMargemMniLucro(const Value: double);
begin
  FMargemMniLucro := Value;
end;

procedure TProduto.SetMovimento(const Value: string);
begin
  FMovimento := Value;
end;

procedure TProduto.SetMvaSaida(const Value: double);
begin
  FMvaSaida := Value;
end;

procedure TProduto.SetNCM(const Value: string);
begin
  FNCM := Value;
end;

procedure TProduto.SetPercBaseIcmsCalcSubs(const Value: extended);
begin
  FPercBaseIcmsCalcSubs := Value;
end;

procedure TProduto.SetPercentBaseCalcIcms(const Value: extended);
begin
  FPercentBaseCalcIcms := Value;
end;

procedure TProduto.SetPisCofins(const Value: integer);
begin
  FPisCofins := Value;
end;

procedure TProduto.SetPrecoConversao(const Value: double);
begin
  FPrecoConversao := Value;
end;

procedure TProduto.SetQtde(const Value: double);
begin
  FQtde := Value;
end;

procedure TProduto.SetQtdeAtendida(const Value: double);
begin
  FQtdeAtendida := Value;
end;

procedure TProduto.SetQtdeConversao(const Value: double);
begin
  FQtdeConversao := Value;
end;

procedure TProduto.SetQtdeEmbalagem(const Value: double);
begin
  FQtdeEmbalagem := Value;
end;

procedure TProduto.SetRequisicao(const Value: integer);
begin
  FRequisicao := Value;
end;

end.
