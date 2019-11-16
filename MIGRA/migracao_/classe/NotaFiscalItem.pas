unit NotaFiscalItem;

interface
uses
   Cfop, Cst, Item, NotaFiscal,Produto;
type
  TNotaFiscalItem = class
  private
    { Private Declarations }
  public
    codigo        : integer;
    NotaFiscal    : TNotaFiscal;
    numitem       : integer;
    Item          : TItem;
    Cst           : TCst;
    Cfop          : TCfop;
    qtde          : double;
    unidade       : string[10];
    descontos     : extended;
    valorunitario : extended;
    valortotal    : extended;
    aliquota      : extended;
    baseicms      : extended;
    baseicmsst    : extended;
    valoripi      : extended;
    produto       : TProduto;
    constructor Create;
  end;

implementation

constructor TNotaFiscalItem.Create;
begin
  Cst        := TCst.Create;
  Cfop       := TCfop.Create;
  Item       := TItem.Create;
  NotaFiscal := TNotaFiscal.Create;
  produto    := TProduto.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
