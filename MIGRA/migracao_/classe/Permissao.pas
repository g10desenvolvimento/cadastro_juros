unit Permissao;

interface

type
  TPermissao = class
  private
    { Private Declarations }
  public
    codigo: integer;
    url: String;
    descricao: String;
    constructor Create;
  end;

implementation

constructor TPermissao.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
