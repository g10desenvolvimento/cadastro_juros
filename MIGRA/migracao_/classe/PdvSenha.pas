unit PdvSenha;

interface

uses
  SysUtils, Variants;

type
  TPdvSenha = class
  private
    { Private Declarations }
  public
    iCodigo: integer;
    sFuncao: string;
    sSenha : string;
    function cripitografaSenha(sSenha: string): string;
    function decripitografaSenha(sSenha: string): string;
    constructor Create;
  end;

implementation

constructor TPdvSenha.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

function TPdvSenha.cripitografaSenha(sSenha: string): string;
var
  iCont,  iSenhaCrip     : integer;
  sSenhaDecrip, sSenhaAux: string;
begin
  sSenhaDecrip := '';
  for iCont := 1 to Length(sSenha) do
  begin
    iSenhaCrip   := Ord(sSenha[iCont]);
    iSenhaCrip   := iSenhaCrip + 2;
    sSenhaAux    := Chr(iSenhaCrip);
    sSenhaDecrip := sSenhaDecrip + sSenhaAux;
  end;
  
  cripitografaSenha := sSenhaDecrip;
end;

function TPdvSenha.decripitografaSenha(sSenha: string): string;
var
  iCont,  iSenhaCrip     : integer;
  sSenhaDecrip, sSenhaAux: string;
begin
  sSenhaDecrip := '';
  for iCont := 1 to Length(sSenha) do
  begin
    iSenhaCrip   := Ord(sSenha[iCont]);
    iSenhaCrip   := iSenhaCrip - 2;
    sSenhaAux    := Chr(iSenhaCrip);
    sSenhaDecrip := sSenhaDecrip + sSenhaAux;
  end;

  decripitografaSenha := sSenhaDecrip;
end;

end.
