unit NotaFiscalContribIpi;

interface

uses
   NotaFiscal, Cfop,Produto;

type
  TNotaFiscalContribIpi = class
  private
    { Private Declarations }
  public
    Codigo      : integer;
    NotaFiscal  : TNotaFiscal;
    Cfop        : TCfop;
    valor       : extended;
    valoripi    : extended;
    isentantrib : extended;
    outras      : extended;
    produto     : TProduto;

    constructor Create;
  end;

implementation

constructor TNotaFiscalContribIpi.Create;
begin
  NotaFiscal := TNotaFiscal.Create;
  Cfop       := TCfop.Create;
  produto    := TProduto.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
