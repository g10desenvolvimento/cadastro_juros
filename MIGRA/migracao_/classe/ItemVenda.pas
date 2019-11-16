unit ItemVenda;

interface

uses
  SysUtils, Variants, Produto, Caixa, Dados;

type
  TItemVenda = class
  private
    { Private Declarations }
  public
    sNumeroCupom   : string;
    data           : TDateTime;
    iNumItem       : integer;
    Produto        : TProduto;
    dQtde          : double;
    //cValor         : currency;
    //eAliquotaIcms  : extended;
    sNumeroPedido  : string;
    sVendaFechada  : string;
    Caixa          : TCaixa;
    Dados          : TDados;
    constructor Create;
  end;

implementation

constructor TItemVenda.Create;
begin
  Produto := TProduto.Create;
  Caixa   := TCaixa.Create;
  Dados   := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
 