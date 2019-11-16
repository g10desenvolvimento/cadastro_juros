unit TipoJuros;

interface

type
  TTipoJuros = class
  private
    { Private Declarations }
  public
    Codigo   : integer;
    Descricao: String;
    constructor Create;
  end;

implementation

constructor TTipoJuros.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
