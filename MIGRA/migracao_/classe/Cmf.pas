unit Cmf;

interface
uses
  GrupoCmf, Juros, Setor;

type
  TCmf = class
  private
    { Private Declarations }
  public
    codigo     : integer;
    descricao  : String;
    grupoCmf   : TGrupoCmf;
    juros      : TJuros;
    VistoSetor : array of TSetor;  
    constructor Create;
  end;

implementation

constructor TCmf.Create;
begin
  grupoCmf   := TGrupoCmf.Create;
  juros      := TJuros.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
