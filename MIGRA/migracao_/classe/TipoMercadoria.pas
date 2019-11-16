unit TipoMercadoria;

interface

uses
   Dados;

type
  TTipoMercadoria = class
  private
    { Private Declarations }
  public
    codigo    : integer;
    descricao : string;
    Identifier: TDados;
    constructor Create;
  end;

implementation

constructor TTipoMercadoria.Create;
begin
  Identifier := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
