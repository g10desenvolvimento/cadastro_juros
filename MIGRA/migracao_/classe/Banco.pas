unit Banco;

interface

Uses
   Agencia, Dados;

type
  TBanco = class
  private
    { Private Declarations }
  public
    Codigo     : integer;
    Descricao  : string;
    CodigoBanco: string;
    Digito     : string;
    Agencia    : TAgencia;
    Identifier : TDados;
    constructor Create;
  end;

implementation

constructor TBanco.Create;
begin
  inherited Create;
  Agencia  := TAgencia.Create;
  Identifier := TDados.Create;
end;

end.
