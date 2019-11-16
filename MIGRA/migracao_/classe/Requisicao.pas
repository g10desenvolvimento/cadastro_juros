unit Requisicao;

interface
uses
  Usuario, TipoRME,Controls;
type
  TRequisicao = class
  private
    { Private Declarations }
  public
    codigo               : integer;
    numero               : string;
    usuario              : TUsuario;
    requisitante         : TUsuario;
    tipoRME              : TTipoRME;
    //numero: String;
    dataRequisicao       : TDateTime;
    dataAtendimento      : TDateTime;
    quantidadeRequerida  : Real;
    status: String;
    notaFiscal           : Integer;
    constructor Create;    
  end;

implementation

constructor TRequisicao.Create;
begin
    usuario      := TUsuario.Create;
    requisitante := TUsuario.Create;
    tipoRME      := TTipoRME.Create;
  inherited Create;
end;

end.
