unit Nivel;

interface



type
  TNivel = class
  private
    { Private Declarations }
  public

    codigo        : integer;
    descricao     : string;
    constructor Create;
  end;

implementation

constructor TNivel.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
