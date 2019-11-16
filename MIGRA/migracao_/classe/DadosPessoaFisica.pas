unit DadosPessoaFisica;

interface

type
  TDadosPessoaFisica = class
  private
    { Private Declarations }
  public
    nome           : string;
    rg             : string;
    apelido        : string;
    sexo           : integer;
    dataNascimento : string;
    obs            : string;
    sStatus         : string;
    sFoto          : string;
    conjuge        : string;
    nomepai        : string;
    nomemae        : string;
    estadocivil    : string;
    InscricaoEstadual: string;
    sTipoCliente: string;
    constructor Create;
  end;

implementation

constructor TDadosPessoaFisica.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
