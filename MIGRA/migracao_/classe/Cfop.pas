unit Cfop;

interface

type
  TCfop = class
  private
    { Private Declarations }
  public
    codigo: integer;
    codigoCfop :String;
    descricao: String;
    aplicacao: String;
    constructor Create;
  end;

implementation

constructor TCfop.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
