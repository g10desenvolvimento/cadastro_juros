unit AberturaCaixa;

interface

uses
  SysUtils, Variants, Caixa, DadosPessoaFisica;

type
  TAberturaCaixa = class
  private
    { Private Declarations }
  public
    iCodigo : integer;
    Caixa   : TCaixa;
    cValor  : currency;
    Data    : TDateTime;
    Operador: TDadosPessoaFisica;
    sFiscal : string;
    constructor Create;
  end;

implementation

constructor TAberturaCaixa.Create;
begin
  Caixa    := TCaixa.Create;
  Operador := TDadosPessoaFisica.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
