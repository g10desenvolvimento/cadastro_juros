unit Telefone;

interface
uses
  TipoEndereco;

type
  TTelefone = class
  private
    { Private Declarations }
  public
    iCodigo     : integer;
    iDdd        : integer;
    iNumero     : integer;
    iRamal      : integer;
    TipoEndereco: TTipoEndereco;
    constructor Create;
  end;

implementation

constructor TTelefone.Create;
begin
  TipoEndereco := TTipoEndereco.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
