unit Contrato;

interface

uses
  StatusGrupo,Dados;

type
  TContrato = class

  private
    { Private Declarations }
  public
    codigo              : integer;
    numeroContrato      : integer;
    novoContrato        : String;
    status              : TStatusGrupo;
    dataAdesao          : TDateTime;
    dataCancelamento    : TDateTime;
    dataVigenciaInicial : TDateTime;
    dataVigenciaFinal   : TDateTime;
    qtdeMesesVigencia   : integer;
    empresaContratante  : String;
    obs                 : String;
    vendedor            : TDados;

    constructor Create;
  end;

implementation

constructor TContrato.Create;
begin
  status              := TStatusGrupo.Create;
  vendedor            := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
