unit ListaRequisicaoProduto;

interface
uses
  RequisicaoProduto;

type
  TListaRequisicaoProduto = class
  private
    { Private Declarations }
  public
    requisicaoProduto : array of TRequisicaoProduto;
    constructor Create;
  end;

implementation

constructor TListaRequisicaoProduto.Create;
begin
  inherited Create;

  // TODO: Add any constructor code here
end;

end.
