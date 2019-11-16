unit Dados;

interface

uses
  DadosPessoaFisica, DadosPessoaJuridica, Telefone, Endereco,
  Email, Classes;

type
  TDados = class
  private
    { Private Declarations }
  public
    Codigo             : integer;
    CodigoImport       : string;
    Identificador      : string;
    sTipo              : string;
    DataCadastro       : TDateTime;
    DadosPessoaFisica  : TDadosPessoaFisica;
    DadosPessoaJuridica: TDadosPessoaJuridica;
    Telefone           : TTelefone;
    Endereco           : TEndereco;
    Email              : TEmail;
    sVinculo           : string;
    bVinculo           : boolean;
    sInadinplente      : string;
    CRC                : string;
    sIdentifier        : string;
    aTelefone          : TList;
    aEndereco          : TList;
    aEmail             : TList;
    aVinculo           : TList;

    cLimiteFinanceiro: currency;
    cLimiteDisponivel: currency;
    constructor Create;
  end;

implementation

constructor TDados.Create;
begin
  DadosPessoaFisica   := TDadosPessoaFisica.Create;
  DadosPessoaJuridica := TDadosPessoaJuridica.Create;
  Telefone            := TTelefone.Create;
  Endereco            := TEndereco.Create;
  Email               := TEmail.Create;

  aTelefone           := TList.Create;
  aEndereco           := TList.Create;
  aEmail              := TList.Create;
  aVinculo            := TList.Create;
  inherited Create;
end;

end.
