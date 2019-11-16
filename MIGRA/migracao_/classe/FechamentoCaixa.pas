unit FechamentoCaixa;

interface

uses
  SysUtils, Variants, Caixa;

type
  TFechamentoCaixa = class
  private
    { Private Declarations }
  public
    iPedidos       : integer;
    cSaldoAbertura : currency;
    cSaldoCaixa    : currency;
    cTroco         : currency;
    cTotalPago     : currency;
    cVendaBruta    : currency;
    cInformado     : currency;
    Data           : TDateTime;
    Caixa          : TCaixa;
    constructor Create;
  end;

implementation

constructor TFechamentoCaixa.Create;
begin
  Caixa     := TCaixa.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
