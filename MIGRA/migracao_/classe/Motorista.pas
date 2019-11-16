unit Motorista;

interface

uses
   Dados;

type
  TMotorista = class
  private
    { Private Declarations }
  public
    codigo         : integer;
    cnh            : String;
    categoria      : String;
    Identifier : TDados;
    constructor Create;
  end;

implementation

constructor TMotorista.Create;
begin
 Identifier := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
