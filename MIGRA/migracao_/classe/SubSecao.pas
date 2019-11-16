unit SubSecao;

interface
uses
  Secao;

type
  TSubSecao = class
  private
    { Private Declarations }
  public
    codigo: integer;
    descricao: String;
    secao: TSecao;
    constructor Create;
  end;

implementation

constructor TSubSecao.Create;
begin
  secao := TSecao.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
