unit TipoRme;

interface

type
  TTipoRme = class
  private
    { Private Declarations }
  public
    codigo    : integer;
    descricao : String;
    tipoMovimentacao : String;
    escopo : String;

    constructor Create;
  end;

implementation

constructor TTipoRme.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
