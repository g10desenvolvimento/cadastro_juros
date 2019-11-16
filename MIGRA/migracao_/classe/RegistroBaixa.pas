unit RegistroBaixa;

interface

uses Parcela, ModalidadePagamento,StatusGrupo;

type
  TRegistroBaixa = class
  private
    { Private Declarations }
  public
    codigo            : integer;
    parcela           : TParcela;
    modpagamento      : TModalidadePagamento;
    vl_pago           : Currency;
    dt_pagamento      : TDateTime;
    no_documentopago  : integer;
    dt_emissaodocpago : TDateTime;
    no_pgto           : integer;
    fl_renegociacao   : string;
    no_transacao      : string;
    historico         : string;
    status            : TStatusGrupo;
    numeropedido      : String;
    //variaves de adiantamento de baixa
    qtdeParcela       : integer;
    nPedido           : String;
    valorAdiantamento : Real;
    modPagamentoB     : integer;
    prePagamento      : String;
    flagNParcela      : Boolean;
    constructor Create;
  end;

implementation

constructor TRegistroBaixa.Create;
begin
   parcela      := TParcela.Create;
   modpagamento := TModalidadePagamento.Create;
   status       := TStatusGrupo.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.

