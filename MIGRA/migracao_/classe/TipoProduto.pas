unit TipoProduto;

interface

type
  TTipoProduto = class
  private
    { Private Declarations }
  public
    codigo   : string;
    descricao: string;
    constructor Create;
  end;

implementation

constructor TTipoProduto.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
