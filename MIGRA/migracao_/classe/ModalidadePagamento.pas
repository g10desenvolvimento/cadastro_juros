unit ModalidadePagamento;

interface

uses
  PgtoPromissoria;

type
  TModalidadePagamento = class
  private
    { Private Declarations }
  public
    codigo          : Integer;
    descricao       : string;
    PgtoPromissoria : TPgtoPromissoria;
    constructor Create;
  end;

implementation

constructor TModalidadePagamento.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
