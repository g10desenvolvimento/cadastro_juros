unit Cliente;

interface

uses
   Dados;

type
  TCliente = class
  private
    { Private Declarations }
  public
    id : integer;
    limiteFinanceiro: currency;
    limiteDisponivel: currency;
    compraRelizada  : currency;
     Identifier : TDados;
    constructor Create;
  end;

implementation

constructor TCliente.Create;
begin
 Identifier := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
