unit Email;

interface
uses
  TipoEndereco;

type
  TEmail = class
  private
    FDescricao: string;
    FCodigo: integer;
    FTipoEmail: TTipoEndereco;
    FsTipoEmail: string;
    FCodigoTE: integer;
    procedure SetTipoEmail(const Value: TTipoEndereco);
    { Private Declarations }
  public
    bAlterou: boolean;
    DiasAntes: integer;
    Smtp: string;
    Password: string;
    Porta: string;
    Assunto: string;
    procedure SetCodigo(const Value: integer);
    procedure SetDescricao(const Value: string);
    procedure SetTipoEndereco(const Value: TTipoEndereco);
    procedure SetsTipoEmail(const Value: string);
    procedure SetCodigoTE(const Value: integer);
    property Codigo: integer read FCodigo write SetCodigo;
    property Descricao: string read FDescricao write SetDescricao;
    property sTipoEmail: string read FsTipoEmail write SetsTipoEmail;
    property TipoEmail: TTipoEndereco read FTipoEmail write SetTipoEmail;
    property CodigoTE: integer read FCodigoTE write SetCodigoTE;
    constructor Create;
  end;

implementation

constructor TEmail.Create;
begin
  FTipoEmail := TTipoEndereco.Create;
  bAlterou   := false;
  inherited Create;
  // TODO: Add any constructor code here
end;

procedure TEmail.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TEmail.SetCodigoTE(const Value: integer);
begin
  FCodigoTE := Value;
end;

procedure TEmail.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TEmail.SetsTipoEmail(const Value: string);
begin
  FsTipoEmail := Value;
end;

procedure TEmail.SetTipoEmail(const Value: TTipoEndereco);
begin
  FTipoEmail := Value;
end;

procedure TEmail.SetTipoEndereco(const Value: TTipoEndereco);
begin

end;

end.
