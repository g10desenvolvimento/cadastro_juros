unit TipoEndereco;

interface

type
  TTipoEndereco = class
  private
    { Private Declarations }
  public
    iCodigo   : integer;
    sDescricao: string;
    constructor Create;
  end;

implementation

constructor TTipoEndereco.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
