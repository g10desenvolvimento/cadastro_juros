unit Item;

interface
uses
  Modelo, Unidade, SubSecao;

type
  TItem = class
  private
    { Private Declarations }
  public
    codigo            : integer;
    cod               : String;
    descricao         : String;
    garantia          : String;
    garantiainicio    : TDateTime;
    garantiafim       : TDateTime;
    modelo            : TModelo;
    unidade           : TUnidade;
    subsecao          : TSubSecao;
    //quantidadeentrada : String;
    //quantidadesaida   : String;

    constructor Create;
  end;

implementation

constructor TItem.Create;
begin
  modelo      := TModelo.Create;
  unidade     := TUnidade.Create;
  subsecao    := TSubSecao.Create;
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
