unit Setor;

interface


type
  TSetor = class
  private
    { Private Declarations }
  public
    codigo: integer;
    stocador: integer;
    descricao: String;

    qtdefuncionario : integer;
    metroquadrado   : extended;
    fator           : extended;    
    constructor Create;
  end;

implementation

constructor TSetor.Create;
begin

  inherited Create;
end;

end.
