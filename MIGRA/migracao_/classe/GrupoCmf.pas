unit GrupoCmf;

interface
type
  TGrupoCmf = class
  private
    { Private Declarations }
  public
    codigo       : integer;
    descricao    : String;
    tipoMovimento: String;  
    constructor Create;
  end;

implementation

constructor TGrupoCmf.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
