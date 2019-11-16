unit DadosPessoaJuridica;

interface


type
  TDadosPessoaJuridica = class
  private
    { Private Declarations }
  public
    inscricaoEstadual    : string;
    inscricaoMunicipal   : string;
    nomeFantasia         : string;
    contato              : string;
    razaoSocial          : string;
    empresaUsuario       : string;
    contribuinteIpi      : string;
    substitutoTributario : string;
    sStatus              : string;
    sFoto                : string;
    sObs                 : string;
    sMsg                 : string;
    sTipoEmpresa         : string;
    sTipoCliente         : string;
    SPEDPerfil           : string;
    SPEDIndAtividade     : string;
    constructor Create;
  end;

implementation

constructor TDadosPessoaJuridica.Create;
begin
  inherited Create;
end;

end.
