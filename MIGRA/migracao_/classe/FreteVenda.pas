unit FreteVenda;

interface

type
  TFreteVenda = class
  private
    { Private Declarations }
  public
    codigo         : Integer;
    numeroPedido   : String;
    statusid       : Integer;
    dataCompra     : TDateTime;
    dataEntrega    : TDateTime;
    valorFrete     : Double;
    obs            : String;
    nome           : String;
    endEntrega     : String;
    statusPesquisar: String;
    constructor Create;
  end;

implementation

constructor TFreteVenda.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
