unit NotaFiscalSubstTrib;

interface

uses
   NotaFiscal, Cfop,Produto;

type
  TNotaFiscalSubstTrib = class
  private
    { Private Declarations }
  public
    Codigo         : integer;
    NotaFiscal     : TNotaFiscal;
    Cfop           : TCfop;
    BaseCalcIcmsSt : extended;
    IcmsRetido     : extended;
    Outras         : extended;
    produto        : TProduto;
    constructor Create;
  end;

implementation

constructor TNotaFiscalSubstTrib.Create;
begin
  NotaFiscal := TNotaFiscal.Create;
  Cfop       := TCfop.Create;
  produto    := TProduto.Create; 
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
