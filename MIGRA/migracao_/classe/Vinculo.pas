unit Vinculo;

interface

uses
   Motorista, Fabricante, Agencia, Cliente, Funcionario, Banco, Dados;

type
  TVinculo = class
  private
    FMotorista: TMotorista;
    FFuncionario: TFuncionario;
    FDescricao: string;
    FCliente: TCliente;
    FCodigo: integer;
    FFabricante: TFabricante;
    FBanco: TBanco;
    FRegimeTributacao: integer;
    FContador: TDados;
    { Private Declarations }
  public
    Identifier : TDados;
    bAlterou: boolean;
    procedure SetBanco(const Value: TBanco);
    procedure SetCliente(const Value: TCliente);
    procedure SetCodigo(const Value: integer);
    procedure SetDescricao(const Value: string);
    procedure SetFabricante(const Value: TFabricante);
    procedure SetFuncionario(const Value: TFuncionario);
    procedure SetMotorista(const Value: TMotorista);
    procedure SetRegimeTributacao(const Value: integer);
    procedure SetContador(const Value: TDados);
    property Codigo: integer read FCodigo write SetCodigo;
    property Descricao: string read FDescricao write SetDescricao;
    property Banco: TBanco read FBanco write SetBanco;
    property Fabricante: TFabricante read FFabricante write SetFabricante;
    property Funcionario: TFuncionario read FFuncionario write SetFuncionario;
    property Motorista: TMotorista read FMotorista write SetMotorista;
    property Cliente: TCliente read FCliente write SetCliente;
    property Contador: TDados read FContador write SetContador;
    property RegimeTributacao: integer read FRegimeTributacao write SetRegimeTributacao;

    constructor Create;
  end;

implementation

constructor TVinculo.Create;
begin
  FBanco       := TBanco.Create;
  FFabricante  := TFabricante.Create;
  FFuncionario := TFuncionario.Create;
  FMotorista   := TMotorista.Create;
  FCliente     := TCliente.Create;
  bAlterou     := false;
  Identifier   := TDados.Create;
  FContador    := TDados.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

procedure TVinculo.SetBanco(const Value: TBanco);
begin
  FBanco := Value;
end;

procedure TVinculo.SetCliente(const Value: TCliente);
begin
  FCliente := Value;
end;

procedure TVinculo.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TVinculo.SetContador(const Value: TDados);
begin
  FContador := Value;
end;

procedure TVinculo.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TVinculo.SetFabricante(const Value: TFabricante);
begin
  FFabricante := Value;
end;

procedure TVinculo.SetFuncionario(const Value: TFuncionario);
begin
  FFuncionario := Value;
end;

procedure TVinculo.SetMotorista(const Value: TMotorista);
begin
  FMotorista := Value;
end;

procedure TVinculo.SetRegimeTributacao(const Value: integer);
begin
  FRegimeTributacao := Value;
end;

end.
