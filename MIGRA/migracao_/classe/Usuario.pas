unit Usuario;

interface

uses
   Nivel, PessoaImpl;

type
  TUsuario = class (TPessoaImpl)
  private
    { Private Declarations }
  public
    codigo          : integer;
    bloqueio        : integer;
    login           : string;
    senha           : string;
    nome            : string; 
    dataValidaSenha : TDateTime;

    codigoEmpresa   : integer;
    constructor Create;
   end;

implementation

constructor TUsuario.Create;
begin

  inherited Create;
  // TODO: Add any constructor code here
end;

end.
