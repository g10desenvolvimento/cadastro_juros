unit Rme;

interface
uses
  Usuario, TipoRME, Requisicao, Setor;
type
  TRme = class
  private
    { Private Declarations }
  public
    codigo             : integer;
    numero             : integer;
    usuario            : TUsuario;
    requisicao         : TRequisicao;
    tipoRME            : TTipoRME;
    dataMovimentacao   : TDateTime;
    quantidadeAtendida : Real;
    centroEstocador    : TSetor;
    para               : TSetor;
    constructor Create;
  end;

implementation

constructor TRme.Create;
begin
  inherited Create;
    usuario         := TUsuario.Create;
    requisicao      := TRequisicao.Create;
    tipoRME         := TTipoRME.Create;
    centroEstocador := TSetor.Create;
    para            := TSetor.Create;
end;

end.
