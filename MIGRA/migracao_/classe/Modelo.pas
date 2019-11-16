unit Modelo;

interface
uses
  Marca;

type
  TModelo = class
  private
    { Private Declarations }
  public
    codigo: integer;
    descricao: String;
    marca: TMarca;
    constructor Create;
  end;

implementation

constructor TModelo.Create;
begin
  marca := TMarca.Create;
  inherited Create;
end;

end.
