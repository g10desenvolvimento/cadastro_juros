unit CalculosFiscais;

interface

uses
   Validar,SysUtils;

type
  TCalculosFiscais = class
  private
    { Private Declarations }
  public
    function baseCalculoIcms(valorTotalProdutos, valorTotalIpi, percentReducao: extended): extended;
    function valorTotalIpi(valorProduto, aliqIpi: extended): extended;
    function valorIcms(baseCalculoIcms, aliqIcms: extended): extended;
    function baseCalculoIcmsSubstuicao(baseCalculoIcms, percentReducao: extended): extended;
    function valorIcmsSubstituicao(valorIcms, percentual: extended): extended;
    function valorTotalNota(totalprodutos, totalIpi, valorIcmsSubstituicao,
             valorFrete, valorSeguro, outrasDespensas: extended): extended;
    function Arredondar(Valor: Double; Dec: Integer): Double;
    constructor Create;
  end;

implementation

constructor TCalculosFiscais.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

function TCalculosFiscais.baseCalculoIcms(valorTotalProdutos, valorTotalIpi,
  percentReducao: extended): extended;
begin
  result := Arredondar(((valorTotalProdutos + valorTotalIpi) - ((valorTotalProdutos*percentReducao)/100)), 2);
end;

function TCalculosFiscais.baseCalculoIcmsSubstuicao(baseCalculoIcms,
  percentReducao: extended): extended;
begin
  result := Arredondar((baseCalculoIcms + ((baseCalculoIcms*percentReducao)/100)), 2);
end;

function TCalculosFiscais.valorIcms(baseCalculoIcms,
  aliqIcms: extended): extended;
begin
  result := Arredondar(((baseCalculoIcms*aliqIcms)/100), 2);
end;

function TCalculosFiscais.valorIcmsSubstituicao(valorIcms,
  percentual: extended): extended;
begin
  result := Arredondar(((valorIcms*percentual)/100), 2);
end;

function TCalculosFiscais.valorTotalIpi(valorProduto,
  aliqIpi: extended): extended;
begin
  result := Arredondar(((valorProduto*aliqIpi)/100), 2);
end;

function TCalculosFiscais.valorTotalNota(totalprodutos, totalIpi,
  valorIcmsSubstituicao, valorFrete, valorSeguro,
  outrasDespensas: extended): extended;
begin
  result := (totalProdutos+totalIpi+valorIcmsSubstituicao+
             valorFrete+valorSeguro+outrasDespensas);
end;

function TCalculosFiscais.Arredondar(Valor: Double; Dec: Integer): Double;
var
  Valor1,
  Numero1,
  Numero2,
  Numero3: Double;
begin
  Valor1  := Exp(Ln(10) * (Dec + 1));
  Numero1 := Int(Valor * Valor1);
  Numero2 := (Numero1 / 10);
  Numero3 := Round(Numero2);
  Result  := (Numero3 / (Exp(Ln(10) * Dec)));
end;

end.
