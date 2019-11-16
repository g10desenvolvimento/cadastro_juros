unit PreVenda;

interface

uses
   Produto, Dados;

type
  TPreVenda = class
  private
    { Private Declarations }
  public
    codigo      : integer;
    numeropedido: String;
    Produto     : TProduto;
    qtde        : Real;
    modPgto     : string;
    Dados       : TDados;
    sItemCancel : string;
    constructor Create;
  end;

implementation

constructor TPreVenda.Create;
begin
  Produto := TProduto.Create;
  Dados   := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
