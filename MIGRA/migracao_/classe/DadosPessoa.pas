unit DadosPessoa;

interface

uses
   Dados, Endereco, Telefone, Email;

type
  TDadosPessoa = class
  private
    { Private Declarations }
  public
    Dados   : TDados;
    Endereco: TEndereco;
    Telefone: TTelefone;
    Email   : TEmail;
    constructor Create;
  end;

implementation

constructor TDadosPessoa.Create;
begin
  Dados    := TDados.Create;
  Endereco := TEndereco.Create;
  Telefone := TTelefone.Create;
  Email    := TEmail.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
