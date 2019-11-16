unit Endereco;

interface
uses
  TipoEndereco;

type
  TEndereco = class
  private
    { Private Declarations }
  public
    iCodigo      : integer;
    sLogradouro  : string;
    sNumero      : string;
    sComplemento : string;
    sBairro      : string;
    sCidade      : string;
    sUf          : string;
    sUfa         : string;
    sCep         : string;
    TipoEndereco: TTipoEndereco;
    constructor Create;
  end;

implementation

constructor TEndereco.Create;
begin
  TipoEndereco := TTipoEndereco.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
