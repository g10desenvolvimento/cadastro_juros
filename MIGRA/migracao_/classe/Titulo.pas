unit Titulo;

interface

 uses
  Cmf,TipoDocumento, Setor, Usuario,StatusGrupo,Dados,Contrato,ModalidadePagamento;

type
  TTitulo = class
  private
    {Private Declarations}
  public
    {Public Declarations}
  codigo            : integer;
  Cmf               : TCmf;
  tipodocumento     : TTipoDocumento;
  Setor             : TSetor;
  prepagamento      : String;
  status            : TStatusGrupo;
  usuario           : TUsuario;
  vl_titulo         : real;
  no_totalParcelas  : integer;
  no_diavencimento  : integer;
  dt_vencimento     : Tdatetime;
  dt_periodoinicial : TdateTime;
  dt_periodofinal   : TdateTime;
  dt_cadastro       : TdateTime;
  nm_obs            : String;
  Dados             : TDados;
  contrato          : TContrato;
  modalidadePagamento : TModalidadePagamento;
  numeroPromissoria : String;
  valorExtenso      : String;
  adiantamento      : Real;
  flagNParlela      : boolean;
  sCodidgoImport: string;

    constructor Create;
  end;


implementation


constructor TTitulo.Create;
begin
  Setor            := TSetor.Create;
  Cmf              := TCmf.Create;
  contrato         := TContrato.Create;
  Usuario          := TUsuario.Create;
  TipoDocumento    := TTipoDocumento.Create;
  status           := TStatusGrupo.Create;
  Dados            := TDados.Create;
  modalidadePagamento := TModalidadePagamento.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;



end.
