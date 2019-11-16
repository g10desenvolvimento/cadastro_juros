unit Fabricante;

interface

uses
    Dados;

type
  TFabricante = class
  private
    FCodigoFabricante: string;
    FCodigo: integer;
    FsNome: string;
    { Private Declarations }
  public
     Identifier : TDados;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFabricante(const Value: string);
    procedure SetsNome(const Value: string);
    property Codigo: integer read FCodigo write SetCodigo;
    property CodigoFabricante: string read FCodigoFabricante write SetCodigoFabricante;
    property sNome: string read FsNome write SetsNome;
    constructor Create;
  end;

implementation

constructor TFabricante.Create;
begin
   Identifier := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

procedure TFabricante.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TFabricante.SetCodigoFabricante(const Value: string);
begin
  FCodigoFabricante := Value;
end;

procedure TFabricante.SetsNome(const Value: string);
begin
  FsNome := Value;
end;

end.
