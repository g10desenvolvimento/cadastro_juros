unit RequisicaoProduto;

interface
uses
  Produto, Requisicao;

type
  TRequisicaoProduto = class (TRequisicao)
  private
    { Private Declarations }
  public
    produto: TProduto;
    requisicao : TRequisicao;
    constructor Create;    
  end;

implementation

constructor TRequisicaoProduto.Create;
begin
  inherited Create;
  produto    := TProduto.Create;
  requisicao := TRequisicao.Create;
  // TODO: Add any constructor code here
end;

end.
