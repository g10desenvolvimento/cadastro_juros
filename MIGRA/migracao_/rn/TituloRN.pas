unit TituloRN;

interface

uses
  Titulo, TituloDao, variants, Parcela;

type
  TTituloRN = class
private
    { Private Declarations }
  public
    function InsertOrUpdate(Titulo: TTitulo; Parcela: TParcela; action: string) : TParcela;
    function pegaDadosTitulo(Parcela : TParcela) : TTitulo;
    procedure ExcluirTitulo(Titulo : TTitulo);
    function Editar(Titulo : TTitulo) : Integer;
    Procedure EditarParcela(Parcela : TParcela);
    procedure VerficaStatusParcela(Titulo : TTitulo); overload;
    function VerficarStatusParcela(Titulo : TTitulo) : Boolean; overload;
    function DataServer : TDateTime;
    function valorTitulo (Titulo : TTitulo) : Currency;
    function diaVencimento (Titulo : TTitulo) : Integer;
    function obs(Titulo : TTitulo) : String;
    function modPagamento(titulo : TTitulo) : String;
    function numeroDocumento(titulo : TTitulo) : String;
    procedure atualizaCadastro(identificador : String;id : integer);
    procedure insertParcela(parcelaTitulo : TParcela);
    function idParcela : integer;
    function insertParcelaNegociacao(titulo : TTitulo) : integer;
    constructor Create;
  end;

implementation

procedure TTituloRN.ExcluirTitulo(Titulo: TTitulo);
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    if not (TituloDao.verificaStatusParcela(Titulo)) then
      TituloDao.Excluir(Titulo)
    else
      //raise Exception.Create('N�o � possivel excluir o titulo. Parcela em andamento.');
  finally
    TituloDao.Free;
  end;
end;

function TTituloRN.idParcela: integer;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;

    Result := TituloDao.idParcela;
  finally
    TituloDao.Free;
  end;

end;

function TTituloRN.pegaDadosTitulo(Parcela: TParcela): TTitulo;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;

    if parcela.codigo = null then
      //raise Exception.Create('C�digo da parcela inv�lido ou n�o foi identificada.');

    result := TituloDao.pegaDadosTitulo(Parcela);

  finally
    TituloDao.Free;
  end;

end;


function TTituloRN.DataServer: TDateTime;
var
  TituloDao : TTituloDao;
begin
  try
      TituloDao := TTituloDao.Create;

      result := TituloDao.DateServer;
  finally
    TituloDao.Free;
  end;

end;


function TTituloRN.diaVencimento(Titulo: TTitulo): Integer;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    result := TituloDao.diaVencimento(Titulo);
  finally
    TituloDao.Free;
  end;

end;

function TTituloRN.Editar(Titulo: TTitulo) : Integer;
var
  TituloDao: TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    if not (TituloDao.verificaStatusParcela(Titulo)) then
    begin
      TituloDao.ExcluirParcelas(Titulo);
      TituloDao.Editar(Titulo);
      result := TituloDao.GerarParcelas(Titulo);
    end
    else
    begin
      //raise Exception.Create('N�o � possivel editar o titulo. Parcela em andamento.');
      result := 0;
    end;
  finally
    TituloDao.Free;
  end;
end;

procedure TTituloRN.EditarParcela(Parcela: TParcela);
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    if (Parcela.vl_parcela < 0 ) then
      //raise Exception.Create('Valor da parcela n�o pode ser menor que zero!');

    TituloDao.EditarParcela(Parcela);

  finally
    TituloDao.Free;
  end;
end;

function TTituloRN.InsertOrUpdate(Titulo: TTitulo; Parcela: TParcela; action: string): TParcela;
var
  TituloDao :TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;

    result := TituloDao.Incluir(Titulo, Parcela);

  finally
    TituloDao.Free;
  end;
end;

procedure TTituloRN.insertParcela(parcelaTitulo: TParcela);
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;

    tituloDao.insertParcela(parcelaTitulo);
  finally
    TituloDao.Free;
  end;
end;

function TTituloRN.insertParcelaNegociacao(titulo: TTitulo) : integer;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    result := TituloDao.insertParcelaNegociacao(Titulo);
  finally
    TituloDao.Free;
  end;

end;

function TTituloRN.modPagamento(titulo: TTitulo): String;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    result := TituloDao.modPagamento(Titulo);
  finally
    TituloDao.Free;
  end;


end;

function TTituloRN.numeroDocumento(titulo: TTitulo): String;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    result := TituloDao.numeroDocumento(Titulo);
  finally
    TituloDao.Free;
  end;

end;

function TTituloRN.obs(Titulo: TTitulo): String;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    result := TituloDao.obs(Titulo);
  finally
    TituloDao.Free;
  end;

end;

function TTituloRN.valorTitulo(Titulo: TTitulo): Currency;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    result := TituloDao.valorTitulo(Titulo);
  finally
    TituloDao.Free;
  end;

end;

function TTituloRN.VerficarStatusParcela(Titulo: TTitulo): Boolean;
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    if (TituloDao.verificaStatusParcela(Titulo)) then
    begin
      Result := False;
      //raise Exception.Create('N�o � possivel editar o titulo. Parcela em andamento.');
    end
    else
      Result := True;

  finally
    TituloDao.Free;
  end;
end;

procedure TTituloRN.VerficaStatusParcela(Titulo: TTitulo);
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;
    if (TituloDao.verificaStatusParcela(Titulo)) then
    begin

      //raise Exception.Create('N�o � possivel editar o titulo. Parcela em andamento.');
    end;
  finally
    TituloDao.Free;
  end;

end;

procedure TTituloRN.atualizaCadastro(identificador: String; id: integer);
var
  TituloDao : TTituloDao;
begin
  try
    TituloDao := TTituloDao.Create;

    TituloDao.atualizaCadastro(identificador,id);
  finally
    TituloDao.Free;
  end;

end;

constructor TTituloRN.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

end.
