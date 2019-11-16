unit CaixaMovimento;

interface

uses
  SysUtils, Variants, Caixa, DadosPessoaFisica;

type
  TCaixaMovimento = class
  private
    { Private Declarations }
  public
    sNumeroPedido: string;
    cTotalVenda  : currency;
    cValorPago   : currency;
    cTroco       : currency;
    cAcrescimo   : currency;
    cDesconto    : currency;
    Data         : TDateTime;
    Operador     : TDadosPessoaFisica;
    Caixa        : TCaixa;
    sFechado     : string;
    constructor Create;
  end;

implementation

constructor TCaixaMovimento.Create;
begin
  Caixa        := TCaixa.Create;
  Operador     := TDadosPessoaFisica.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.



 