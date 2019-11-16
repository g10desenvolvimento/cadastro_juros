unit Unidade;

interface

type
  TUnidade = class
  private
    { Private Declarations }
  public
    codigo   : string;
    descricao: string;
    constructor Create;
  end;

implementation

constructor TUnidade.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.

