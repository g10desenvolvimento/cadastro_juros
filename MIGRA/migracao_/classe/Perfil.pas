unit Perfil;

interface

uses
  Permissao;

type
  TPerfil = class
  private
    { Private Declarations }
  public
    codigo: integer;
    descricao: String;
    permissao: TPermissao;
    constructor Create;
  end;

implementation

constructor TPerfil.Create;
begin
  permissao := TPermissao.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
