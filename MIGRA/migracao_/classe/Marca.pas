unit Marca;

interface

type
  TMarca = class
  private
    { Private Declarations }
  public
    codigo    : integer;
    descricao : String;
    constructor Create;
  end;

implementation

constructor TMarca.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
