unit Caixa;

interface

uses
   DadosPessoaFisica;

type
  TCaixa = class
  private
    { Private Declarations }
  public
    { Public Declarations }
    iCodigo        : integer;
    sNumero        : string;
    Operador       : TDadosPessoaFisica;
    iCodigoAbertura: integer;
    DataAbertura   : TDateTime;
    constructor Create;
  end;

implementation

constructor TCaixa.Create;
begin
  Operador      := TDadosPessoaFisica.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
