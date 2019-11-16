unit NotaFiscalAliq;

interface

uses
   NotaFiscal, Cfop;

type
  TNotaFiscalAliq = class
  private
    { Private Declarations }
  public
    codigo      : integer;
    NotaFiscal  : TNotaFiscal;
    aliquota    : extended;
    Cfop        : TCfop;
    valortotal  : extended;
    baseicms    : extended;
    valoricms   : extended;
    isentantrib : extended;
    outras      : extended;
    produtoid   : integer;
    constructor Create;
  end;

implementation

constructor TNotaFiscalAliq.Create;
begin
  NotaFiscal := TNotaFiscal.Create;
  Cfop       := TCfop.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
