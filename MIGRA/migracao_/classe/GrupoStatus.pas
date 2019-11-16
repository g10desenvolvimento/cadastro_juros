unit GrupoStatus;

interface


type
  TGrupoStatus = class
  private
    { Private Declarations }
  public
    codigo    :integer;
    descricao :string;

    constructor Create;

  end;

implementation

constructor TGrupoStatus.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
