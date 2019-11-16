unit Funcionario;

interface

uses
  PessoaImpl, Dados;

type
  TFuncionario = class (TPessoaImpl)
  private
    FCodigo: integer;
    FSalario: currency;
    FNome: string;
    FPis: string;
    FCtps: string;
    { Private Declarations }
  public
     Identifier :TDados;
    constructor Create;
    procedure SetCodigo(const Value: integer);
    procedure SetNome(const Value: string);
    procedure SetPis(const Value: string);
    procedure SetSalario(const Value: currency);
    procedure SetCtps(const Value: string);
    property Codigo: integer read FCodigo write SetCodigo;
    property Salario: currency read FSalario write SetSalario;
    property Pis: string read FPis write SetPis;
    property Ctps: string read FCtps write SetCtps;
    {Propriedade criada para atender a produção}
    property Nome: string read FNome write SetNome;
  end;

implementation

constructor TFuncionario.Create;
begin
 Identifier := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

procedure TFuncionario.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TFuncionario.SetCtps(const Value: string);
begin
  FCtps := Value;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TFuncionario.SetPis(const Value: string);
begin
  FPis := Value;
end;

procedure TFuncionario.SetSalario(const Value: currency);
begin
  FSalario := Value;
end;

end.
