unit StatusGrupo;

interface

uses
   GrupoStatus;

type
  TStatusGrupo = class
  private
    { Private Declarations }
  public
    grupostatus :TGrupoStatus;
    codigo      :integer;
    descricao   :string;

    constructor Create;
  end;

implementation

constructor TStatusGrupo.Create;
begin
  grupostatus := TGrupoStatus.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
