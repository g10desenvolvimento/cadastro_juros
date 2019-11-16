unit Juros;

interface

uses
   TipoJuros;

type
  TJuros = class
  private
    { Private Declarations }
  public
    codigo   : integer;
    juros    : double;
    jurosMora: double;
    acrescimo: Real;
    TipoJuros: TTipoJuros;
    constructor Create;
  end;

implementation

constructor TJuros.Create;
begin
  TipoJuros := TTipoJuros.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
