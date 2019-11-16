unit Cst;

interface

type
  TCst = class
  private
    { Private Declarations }
  public
    codigo: integer;
    codigoCst :String;
    descricao: String;
    tipo: String;
    constructor Create;
  end;

implementation

constructor TCst.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
