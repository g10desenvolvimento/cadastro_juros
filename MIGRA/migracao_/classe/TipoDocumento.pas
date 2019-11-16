unit TipoDocumento;

interface

type
  TTipoDocumento = class
  private
    { Private Declarations }
  public
    codigo    :integer;
    descricao :string;

    constructor Create;

  end;

implementation

constructor TTipoDocumento.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
