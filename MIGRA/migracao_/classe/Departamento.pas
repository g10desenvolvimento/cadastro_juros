unit Departamento;

interface

type
  TDepartamento = class
  private
    { Private Declarations }
  public
    codigo    : integer;
    descricao : String;
    constructor Create;
  end;

implementation

constructor TDepartamento.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
