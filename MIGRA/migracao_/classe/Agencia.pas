unit Agencia;

interface

uses
    Dados;
type
  TAgencia = class
  private
    { Private Declarations }
  public
    Codigo    : integer;
    Descricao : String;
    Numero    : String;
    Digito    : String;
    Identifier: TDados;
    constructor Create;
  end;

implementation

constructor TAgencia.Create;
begin
  inherited Create;
  Identifier := TDados.Create;
end;

end.
