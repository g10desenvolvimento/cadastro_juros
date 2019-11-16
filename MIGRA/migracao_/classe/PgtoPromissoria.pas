unit PgtoPromissoria;

interface

type
  TPgtoPromissoria = class
  private
    { Private Declarations }
  public
    iPrazoDia       : integer;
    VencPParcela    : TDateTime;
    iNParcela       : integer;
    iDiaVencOParcela: integer;

    constructor Create;
   end;

implementation

constructor TPgtoPromissoria.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
