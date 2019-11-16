unit TituloDao ;

interface

uses
   Titulo,Cmf,Setor,Parcela,Validar,Dados,Variants, SysUtils, DB, ZAbstractRODataset,
   ZAbstractDataset, ZDataset, Unit1, Graphics, jpeg,
   Dialogs, StdCtrls, ExtCtrls, DBCtrls;
   
type
  TTituloDao = class
  private
    ZQuery: TZQuery;
    BF    : TBytesField;  
  public
    ZQueryTitulo: TZQuery;
    constructor Create;
    //Incluir Titulo e gera as parcelas
    function Incluir(Titulo: TTitulo; Parcela: TParcela) : TParcela;
    function numeroPromissoria : String;
    function pegaDadosTitulo(Parcela : TParcela) : TTitulo;
    //Editar Titulo
    procedure Editar(Titulo: TTitulo);
    //Editar Parcela
    procedure EditarParcela(Parcela: TParcela);
    //Excluir Titulo
    procedure Excluir(Titulo: TTitulo);
    procedure prepagamento(Titulo : TTitulo);
    //Excluir Parcelas
    procedure ExcluirParcelas(Titulo : TTitulo);
    //Gerar Parcelas
    function GerarParcelas(Titulo : TTitulo) : Integer;

    function Pesquisa(cd_Titulo: integer): TTitulo;
    //Pegar data do servidor
    function DateServer : TDateTime;
    //Verificar status Parcela
    function verificaStatusParcela(Titulo : TTitulo) : Boolean;
    //Verificar Status das parcelas do Titulo
    function statusTitulo(Titulo : TTitulo) : Boolean;
    //Atualiza Status do Titulo
    procedure AtualizaStatusTitulo(Titulo : TTitulo);
    //Pegar o valor do titulo
    function valorTitulo (Titulo : TTitulo) : Currency;
    //Pegar Dia de Vencimento do titulo
    function diaVencimento (Titulo : TTitulo) : Integer;
    //Pegar Periodo Inicial do Titulo
    function periodoInicial (Titulo : TTitulo) : TDateTime;
    function periodoFinal (Titulo : TTitulo) : TDateTime;
    function dataVencimento (Titulo : TTitulo) : TDateTime;
    function obs(Titulo : TTitulo) : String;
    function modPagamento(titulo : TTitulo) : String;
    function numeroDocumento(titulo : TTitulo) : String;
    procedure atualizaCadastro(identificador : String;id : integer);
    procedure insertParcela(parcelaTitulo : TParcela);
    function insertParcelaNegociacao(titulo : TTitulo) : integer;
    function idParcela : integer;

  end;

implementation



procedure TTituloDao.atualizaCadastro(identificador: String;id : integer);
begin
{  try
    //Create objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
    //Monta a query
    NpgsqlCmd.CommandText := 'update dados set identificador = '''+identificador+''' where id = '+id.ToString;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
    NpgsqlTrans.Commit;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;}
end;

procedure TTituloDao.AtualizaStatusTitulo(Titulo: TTitulo);
var
  sql : String;
begin
{  try
    //Create objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    //Monta a query
    NpgsqlCmd.CommandText := 'update Titulo set cd_status = 10 '+
                             ' where cd_Titulo        = '+Titulo.codigo.ToString;


    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

constructor TTituloDao.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

function TTituloDao.dataVencimento(Titulo: TTitulo): TDateTime;
var
  sql : String;
  vencimento : TDateTime;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select datavencimento from titulo where id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    vencimento := Convert.ToDateTime((NpgsqlCmd.ExecuteScalar));
    vencimento := Convert.ToDateTime(FormatDateTime('dd/MM/yyyy',vencimento));
    result := vencimento;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

function TTituloDao.DateServer: TDateTime;
var  data : TdateTime;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    NpgsqlCmd.CommandText := 'select now()';
    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    data := Convert.ToDateTime(NpgsqlCmd.ExecuteScalar);
    result := data;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

function TTituloDao.diaVencimento(Titulo: TTitulo): Integer;
var
  sql : String;
  dia : Integer;
begin
  {try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select numerodiavencimento from titulo where id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    dia := Convert.ToInt32((NpgsqlCmd.ExecuteScalar));

    result := dia;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
   }
end;

procedure TTituloDao.Editar(Titulo: TTitulo);
var
  sql,sql2 : String;
  parcela : TParcela;
begin
{  try
    //Create objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
    //Monta a query
    NpgsqlCmd.CommandText := 'update Titulo set pessoaid ='+Titulo.dados.codigo.ToString+', '+
                             'Setorid='+Titulo.Setor.codigo.ToString+', '+
                             'cmfid='+Titulo.Cmf.codigo.ToString+', '+
                             'tipodocumentoid='+Titulo.tipodocumento.codigo.ToString+','+
                             'numerocontratoid='+Titulo.contrato.numeroContrato.ToString+', '+
                             'valor='+validar.VirgulaPonto(Titulo.Vl_Titulo.ToString)+', '+
                             'numerototalparcelas='+Titulo.no_totalparcelas.ToString+','+
                             'numerodiavencimento='+Titulo.no_diavencimento.ToString+','+
                             'datavencimento='''+FormatDateTime('yyyy/MM/dd',(Titulo.dt_vencimento).date).ToString+''', '+
                             'dataperiodoinicial='''+FormatDateTime('yyyy/MM/dd',(Titulo.dt_periodoinicial).date).ToString+''','+
                             'dataperiodofinal='''+FormatDateTime('yyyy/MM/dd',(Titulo.dt_periodofinal).date).ToString+''','+
                             'datacadastro='''+FormatDateTime('yyyy/MM/dd',(Titulo.dt_cadastro).date).ToString+''','+
                             'pessoausuarioid='+Titulo.usuario.codigo.ToString+','+
                             'statusid='+Titulo.status.codigo.ToString+','+
                             'modalidadepagamentoid='+Titulo.modalidadePagamento.codigo.ToString+','+
                             'obs='''+Titulo.Nm_Obs.ToString+''''+
                             ' where id='+Titulo.codigo.ToString;


    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
    NpgsqlTrans.Commit;

  NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
//Inserção do prepagamento
    if Titulo.modalidadePagamento.codigo <> 5 then
    begin

      sql := 'update prepagamento set numerodocumento = '''+Titulo.prepagamento+''' where tituloid = '+Titulo.codigo.ToString;
    end;
    if Titulo.modalidadePagamento.codigo = 5 then
    begin

      sql := 'update prepagamento set numerodocumento = '''' where tituloid = '+Titulo.codigo.ToString;
    end;
      NpgsqlCmd.CommandText := sql;

      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlTrans.Commit;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

procedure TTituloDao.EditarParcela(Parcela: TParcela);
begin
{  try
    //Create objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
    //Monta a query
    NpgsqlCmd.CommandText := 'update parcela set  valor = '+validar.VirgulaPonto(Convert.ToString(Parcela.vl_parcela))+','+
                             ' modalidadepagamento = '+Parcela.modPagamentoEdit.ToString+','+
                             ' datavencimento ='''+FormatDateTime('yyyy/MM/dd',(Parcela.dt_vencimento).date).ToString+''''+
                             ' where id = '+Parcela.codigo.ToString;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
    NpgsqlTrans.Commit;

    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;

    NpgsqlCmd.CommandText := 'update titulo set valor = (select valor+('+validar.VirgulaPonto(parcela.Titulo.vl_titulo.ToString)+') from titulo where id = '+parcela.Titulo.codigo.ToString+') '+
                             'where id = '+parcela.Titulo.codigo.ToString;

    NpgsqlCmd.ExecuteNonQuery;
    NpgsqlTrans.Commit;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

procedure TTituloDao.Excluir(Titulo: TTitulo);
var
  fl : string;
begin
{  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

      NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
      //Monta a query
      NpgsqlCmd.CommandText := 'delete from parcela where tituloid = '+Titulo.codigo.ToString;
      NpgsqlCmd.Connection := Conexao.NpgsqlCon;
      //Executa query titulo
      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlCmd.CommandText := 'delete from titulo where id = '+Titulo.codigo.ToString;

      //Executa query Parcela
      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlTrans.Commit;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

procedure TTituloDao.ExcluirParcelas(Titulo: TTitulo);
begin
{  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

      //Monta a query
      NpgsqlCmd.CommandText := 'delete from parcela where tituloid = '+Titulo.codigo.ToString;
      NpgsqlCmd.Connection := Conexao.NpgsqlCon;
      //Executa query
      NpgsqlCmd.ExecuteNonQuery;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;



function TTituloDao.Incluir(Titulo: TTitulo; Parcela: TParcela) : TParcela;
var
  sql,sql2 : String;
  no_parcela : integer;
  Validar : TValidar;
begin
  try
    ZQueryTitulo:= TZQuery.Create(ZQuery);
    ZQueryTitulo.Connection := frmPrincipal.ZConnection;

    Validar := TValidar.Create;

    ZQueryTitulo.SQL.Text :=
    'insert into titulo (identifier, cmfid,tipodocumentoid,Setorid,statusid,numerocontratoid,valor,numerototalparcelas,numerodiavencimento,       '+
    'datavencimento,dataperiodoinicial,dataperiodofinal,datacadastro,obs,pessoaid,pessoausuarioid,modalidadepagamentoid) '+
    'values (''11293570000133'','''+
    IntToStr(Titulo.cmf.codigo)+''', '''+
    IntToStr(Titulo.tipodocumento.codigo)+''', '''+
    IntToStr(Titulo.Setor.codigo)+''', '''+
    IntToStr(titulo.status.codigo)+''', '''+
    IntToStr(Titulo.contrato.numeroContrato)+''', '''+
    validar.VirgulaPonto(FloatToStr(Titulo.vl_titulo))+''', '''+
    IntToStr(Titulo.no_totalParcelas)+''', '''+
    IntToStr(Titulo.no_diavencimento)+''', '''+
    FormatDateTime('yyyy/MM/dd',(Titulo.dt_vencimento))+''', '''+
    FormatDateTime('yyyy/MM/dd',(Titulo.dt_periodoinicial))+''','''+
    FormatDateTime('yyyy/MM/dd',(Titulo.dt_periodofinal))+''','''+
    FormatDateTime('yyyy/MM/dd',(Titulo.dt_cadastro))+''','''+
    Titulo.nm_obs+''', '''+
    IntToStr(Titulo.dados.codigo)+''', '''+
    IntToStr(titulo.usuario.codigo)+''', '''+
    IntToStr(titulo.modalidadePagamento.codigo)+''' )';

    //Executa query para insercao do titulo
    ZQueryTitulo.ExecSQL;

    ZQueryTitulo.SQL.Text := 'select currval(''public.titulo_id_seq'') as id';
    ZQueryTitulo.Open;

    Titulo.codigo := ZQueryTitulo.FieldByName('id').AsInteger;

    if Titulo.modalidadePagamento.codigo = 6 then
       Titulo.numeroPromissoria := numeroPromissoria;

    if parcela.parcelas[no_parcela].vl_parcela >= 0 then
       Titulo.valorExtenso := validar.extenso(parcela.parcelas[no_parcela].vl_parcela);

    ZQueryTitulo.SQL.Text :=
    'insert into parcela(identifier, tituloid,modalidadepagamento,pessoausuarioid,numerodocumento,valorextenso, '+
    'tipodocumentoid,valor,numero,datavencimento,datacadastramento,statusgrupoid) '+
    'values (''11293570000133'','''+
    IntToStr(Titulo.codigo)+''','''+
    IntToStr(titulo.modalidadePagamento.codigo)+''','''+
    IntToStr(parcela.parcelas[no_parcela].Usuario.codigo)+''','''+
    Titulo.numeroPromissoria+''','''+
    Titulo.valorExtenso+''','''+
    IntToStr(parcela.parcelas[no_parcela].Tipodocumento.codigo)+''','''+
    validar.VirgulaPonto(FloatToStr(parcela.parcelas[no_parcela].vl_parcela))+''','''+
    IntToStr(parcela.parcelas[no_parcela].no_parcela)+''','''+
    FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_vencimento))+''','''+
    FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_cadastramento))+''','''+
    IntToStr(parcela.parcelas[no_parcela].Status.codigo)+''')';
    ZQueryTitulo.ExecSQL;

    ZQueryTitulo.Close;
    ZQueryTitulo.SQL.Clear;
    ZQueryTitulo.SQL.Text := 'select currval(''public.parcela_id_seq'') as id';
    ZQueryTitulo.Open;

    Parcela.codigo := ZQueryTitulo.FieldByName('id').AsInteger;

    //Inserção do prepagamento
    if Titulo.modalidadePagamento.codigo <> 5 then
    begin

      ZQueryTitulo.SQL.Text := 'insert into prepagamento (modpagamentoid,tituloid,numerodocumento) values ('+
                                IntToStr(Titulo.modalidadePagamento.codigo)+','+
                                IntToStr(Titulo.codigo)+','''+
                                Titulo.prepagamento+''')';
    end;
    if Titulo.modalidadePagamento.codigo = 5 then
    begin

      ZQueryTitulo.SQL.Text := 'insert into prepagamento (modpagamentoid,tituloid) values ('+
                                IntToStr(Titulo.modalidadePagamento.codigo)+','+
                                IntToStr(Titulo.codigo)+')';
    end;
    //Executar Query
      ZQueryTitulo.ExecSQL;
      
    result := Parcela;

  finally
    //Fecha conexao com o banco de dados
    validar.Free;
    ZQueryTitulo.Free;
  end;
  
end;

procedure TTituloDao.insertParcela(parcelaTitulo: TParcela);
begin
{  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    validar   := TValidar.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

      NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
      //Monta a query
      parcelaTitulo.Titulo.valorExtenso := validar.extenso(parcelaTitulo.vl_parcela);
      NpgsqlCmd.CommandText := 'insert into parcela (tituloid,pessoausuarioid,tipodocumentoid,numero,datavencimento,datacadastramento, '+
                               'statusgrupoid,valor,valorextenso,modalidadepagamento) values ('+
                               parcelaTitulo.Titulo.codigo.ToString+','+
                               parcelaTitulo.Titulo.usuario.codigo.ToString+','+
                               parcelaTitulo.Titulo.tipodocumento.codigo.ToString+','+
                               parcelaTitulo.no_parcela.ToString+','''+
                               FormatDateTime('yyyy/MM/dd',parcelaTitulo.dt_vencimento)+''','''+
                               FormatDateTime('yyyy/MM/dd',parcelaTitulo.dt_cadastramento)+''','+
                               parcelaTitulo.Status.codigo.ToString+','+
                               validar.VirgulaPonto(Convert.ToString(parcelaTitulo.vl_parcela))+','''+
                               parcelaTitulo.Titulo.valorExtenso+''','+
                               parcelaTitulo.modPagamentoEdit.ToString+')';

      NpgsqlCmd.Connection := Conexao.NpgsqlCon;
      //Executa query titulo
      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlTrans.Commit;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

function TTituloDao.insertParcelaNegociacao(titulo: TTitulo) : integer;
var
  sql,sql2 : String;
  parcela : TParcela;
  no_parcela : integer;
begin
{  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    validar  := TValidar.Create;
    parcela  := TParcela.Create;


    Conexao.Conectar;
    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
 //Insercao das parcelas no banco
    parcela.gerarParcela(Titulo);
    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
    if Titulo.numeroPromissoria = '' then
    begin
      for no_parcela := 1 to Titulo.no_totalParcelas do
      begin
        sql2 := 'insert into parcela(tituloid,numerodocumento,modalidadepagamento,pessoausuarioid,tipodocumentoid,valor,numero,datavencimento,datacadastramento,statusgrupoid) '+
               'values ('+parcela.parcelas[no_parcela].Titulo.codigo.ToString+','''+
                          titulo.prepagamento+''','+
                          titulo.modalidadePagamento.codigo.ToString+','+
                          parcela.parcelas[no_parcela].Usuario.codigo.ToString+','+
                          parcela.parcelas[no_parcela].Tipodocumento.codigo.ToString+','''+
                          validar.VirgulaPonto(Convert.ToString(parcela.parcelas[no_parcela].vl_parcela))+''','+
                          parcela.parcelas[no_parcela].no_parcela.ToString+','''+
                          FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_vencimento).Date).ToString+''','''+
                          FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_cadastramento).date).ToString+''','+
                          parcela.parcelas[no_parcela].Status.codigo.ToString+')';

        NpgsqlCmd.CommandText := sql2;

        //NpgsqlCmd.Connection := Conexao.NpgsqlCon;
        //Executa query para insercao do titulo
        NpgsqlCmd.ExecuteNonQuery;
      end;
    end
    else
    begin
      for no_parcela := 1 to Titulo.no_totalParcelas do
      begin
        Titulo.numeroPromissoria := numeroPromissoria;
        Titulo.valorExtenso      := validar.extenso(parcela.parcelas[no_parcela].vl_parcela);
        sql2 := 'insert into parcela(tituloid,modalidadepagamento,pessoausuarioid,numerodocumento,valorextenso,tipodocumentoid,valor,numero,datavencimento,datacadastramento,statusgrupoid) '+
               'values ('+parcela.parcelas[no_parcela].Titulo.codigo.ToString+','+
                          titulo.modalidadePagamento.codigo.ToString+','+
                          parcela.parcelas[no_parcela].Usuario.codigo.ToString+','''+
                          Titulo.numeroPromissoria.ToString+''','''+
                          Titulo.valorExtenso.ToString+''','+
                          parcela.parcelas[no_parcela].Tipodocumento.codigo.ToString+','''+
                          validar.VirgulaPonto(Convert.ToString(parcela.parcelas[no_parcela].vl_parcela))+''','+
                          parcela.parcelas[no_parcela].no_parcela.ToString+','''+
                          FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_vencimento).Date).ToString+''','''+
                          FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_cadastramento).date).ToString+''','+
                          parcela.parcelas[no_parcela].Status.codigo.ToString+')';

        NpgsqlCmd.CommandText := sql2;

        //NpgsqlCmd.Connection := Conexao.NpgsqlCon;
        //Executa query para insercao do titulo
        NpgsqlCmd.ExecuteNonQuery;
      end;
    end;
  NpgsqlTrans.Commit;
  NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
//Inserção do prepagamento
    if Titulo.modalidadePagamento.codigo <> 5 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid,numerodocumento) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+','''+
              Titulo.prepagamento+''')';
    end;
    if Titulo.modalidadePagamento.codigo = 5 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+')';
    end;
      NpgsqlCmd.CommandText := sql;

      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlTrans.Commit;

   result := titulo.codigo;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;


function TTituloDao.modPagamento(titulo: TTitulo): String;
var
  sql : String;
  pagamento : String;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select m.descricao from titulo t '+
           'join modalidadepagamento m on (m.id=t.modalidadepagamentoid) '+
           'where t.id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    pagamento := Convert.ToString((NpgsqlCmd.ExecuteScalar));
    result := pagamento;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

function TTituloDao.numeroDocumento(titulo: TTitulo): String;
var
  sql : String;
  documento : String;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select p.numerodocumento from titulo t '+
           'join prepagamento p on (t.id=p.tituloid) '+
           'where t.id ='+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    documento := Convert.ToString((NpgsqlCmd.ExecuteScalar));
    result := documento;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

function TTituloDao.numeroPromissoria: String;
var
  sId, sPromissoria: string;
  ZgetPromissoria  : TZQuery;
  validar: TValidar;
begin
  try
    {Abre conexao com o banco de dados}
    ZgetPromissoria            := TZQuery.Create(ZQuery);
    ZgetPromissoria.Connection := frmPrincipal.ZConnection;
    validar                    := TValidar.Create;

    {Monta a query}
    ZgetPromissoria.SQL.Text := 'select nextval(''numeropromissoria_seq'') as id';

    ZgetPromissoria.Open;

    sPromissoria := '';
    if not ZgetPromissoria.IsEmpty then
       sPromissoria := validar.gerarDigitoZero(ZgetPromissoria.FieldByName('id').AsString, 10);

    result := sPromissoria;
  finally
    ZgetPromissoria.Free;
  end;
end;

function TTituloDao.obs(Titulo: TTitulo): String;
var
  sql : String;
  observacao : String;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select obs from titulo where id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    observacao := Convert.ToString((NpgsqlCmd.ExecuteScalar));
    result := observacao;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

function TTituloDao.pegaDadosTitulo(Parcela: TParcela): TTitulo;
var
  titulo : TTitulo;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    titulo     := TTitulo.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    //Monta a query
    NpgsqlCmd.CommandText := 'select t.id,cmf.id as cmf,td.id as tipodocumento,cc.id as Setor,sg.id as status, '+
                             'c.id as contrato,t.valor,t.numerototalparcelas,t.numerodiavencimento,t.datavencimento, '+
                             't.dataperiodoinicial,t.dataperiodofinal,t.datacadastro,t.obs,vw.id as pessoa,u.id as usuario,mp.id as modpagamento '+
                             'from titulo t '+
                             'join tipodocumento td on (t.tipodocumentoid=td.id) '+
                             'join cmf on (t.cmfid=cmf.id) '+
                             'join Setor cc on (cc.id=t.Setorid) '+
                             'join statusgrupo sg on (sg.id=t.statusid) '+
                             'join cn_contrato c on (c.id=t.numerocontratoid) '+
                             'join modalidadepagamento mp on (mp.id=t.modalidadepagamentoid) '+
                             'join vw_pessoas vw on (vw.id=t.pessoaid) '+
                             'join usuario u on (u.id=t.pessoausuarioid) '+
                             'join parcela p on (p.tituloid=t.id) '+
                             'where p.id = '+Parcela.codigo.ToString;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    Leitor               := NpgsqlCmd.ExecuteReader;

    if Leitor.Read then
    begin
      titulo.codigo                       := Convert.ToInt32(Leitor['id']);
      titulo.Cmf.codigo                   := Convert.ToInt32(Leitor['cmf']);
      titulo.tipodocumento.codigo         := Convert.ToInt32(Leitor['tipodocumento']);
      titulo.Setor.codigo           := Convert.ToInt32(Leitor['Setor']);
      titulo.status.codigo                := Convert.ToInt32(Leitor['status']);
      titulo.contrato.codigo              := Convert.ToInt32(Leitor['contrato']);
      titulo.vl_titulo                    := Convert.ToDouble(Leitor['valor']);
      titulo.no_totalParcelas             := Convert.ToInt32(Leitor['numerototalparcelas']);
      titulo.no_diavencimento             := Convert.ToInt32(Leitor['numerodiavencimento']);
      titulo.dt_periodoinicial            := Convert.ToDateTime(Leitor['dataperiodoinicial']);
      titulo.dt_periodofinal              := Convert.ToDateTime(Leitor['dataperiodofinal']);
      titulo.dados.codigo                 := Convert.ToInt32(Leitor['pessoa']);

    end;
    result := titulo;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
    titulo.Free;
  end;
 }
end;

function TTituloDao.periodoFinal(Titulo: TTitulo): TDateTime;
var
  sql : String;
  pFinal : TDateTime;
begin
 { try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select dataperiodofinal from titulo where id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    pFinal := Convert.ToDateTime((NpgsqlCmd.ExecuteScalar));
    pFinal := Convert.ToDateTime(FormatDateTime('dd/MM/yyyy',pFinal));
    result := pFinal;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

function TTituloDao.periodoInicial(Titulo: TTitulo): TDateTime;
var
  sql : String;
  pInicial : TDateTime;
begin
 { try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select dataperiodoinicial from titulo where id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    pInicial := Convert.ToDateTime((NpgsqlCmd.ExecuteScalar));
    pInicial := Convert.ToDateTime(FormatDateTime('dd/MM/yyyy',pInicial));
    result := pInicial;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

function TTituloDao.Pesquisa(cd_Titulo: integer): TTitulo;
var
  Titulo: TTitulo;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Titulo    := TTitulo.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    //Monta a query
    NpgsqlCmd.CommandText := 'select c.cd_empresa as "codigo empresa", ' +
                             'c.cd_vinculoempresa as "Vinculo Empresa", ' +
                             'c.cd_Titulo, '+
                             'c.nm_Titulo as Titulo, '+
                             'c.fl_lancamcontabil as "Lancamento Contabil", '+
                             'c.cd_contabil as "Codigo Contabil", '+
                             'p.fl_tipocontacontabil, '+
                             'fl_tipoMovimento as "Tipo Movimento" '+
                             'from Titulo c join planocontas p on (c.cd_contabil = p.cd_contabilreduzido) '+
                             'where cd_Titulo = '+cd_Titulo.ToString;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    leitor               := NpgsqlCmd.ExecuteReader;

    if Leitor.Read then
    begin
      Titulo.VinculoPessoa.cd_empresa         := Convert.ToInt32(leitor['codigo empresa']);
      Titulo.VinculoPessoa.cd_vinculoempresa  := Convert.ToInt32(leitor['vinculo empresa']);
      Titulo.nm_Titulo                        := leitor['Titulo'].ToString;
      Titulo.fl_lancamcontabil                := leitor['lancamento contabil'].ToString;
      Titulo.PlanoContas.cd_contabil          := Convert.ToInt32(leitor['codigo contabil']);
      Titulo.PlanoContas.fl_tipocontacontabil := Convert.ToString(leitor['fl_tipocontacontabil']);
      Titulo.fl_tipomovimento                 := leitor['Tipo movimento'].ToString;
      Titulo.cd_Titulo                        := Convert.ToInt32(leitor['cd_Titulo']);
    end;
    result := Titulo;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
    Titulo.Free;
  end;
 }
end;

procedure TTituloDao.prepagamento(Titulo: TTitulo);
var
  sql : String;
begin
{  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Inserção do prepagamento
    if Titulo.modalidadePagamento.codigo = 1 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid,numerocartao) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+','''+
              Titulo.prepagamento+''')';
    end;
    if Titulo.modalidadePagamento.codigo = 2 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid,numerodocumento) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+','''+
              Titulo.prepagamento+''')';
    end;
    if Titulo.modalidadePagamento.codigo = 3 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid,conta) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+','''+
              Titulo.prepagamento+''')';
    end;
    if Titulo.modalidadePagamento.codigo = 4 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid,numerocheque) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+','''+
              Titulo.prepagamento+''')';
    end;
    if Titulo.modalidadePagamento.codigo = 5 then
    begin

      sql := 'insert into prepagamento (modpagamentoid,tituloid) values ('+
              Titulo.modalidadePagamento.codigo.ToString+','+
              Titulo.codigo.ToString+')';
    end;

      NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
      NpgsqlCmd.CommandText := sql;
      NpgsqlCmd.ExecuteNonQuery;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

function TTituloDao.statusTitulo(Titulo: TTitulo): Boolean;
begin
{  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    NpgsqlCmd.CommandText := 'select fl_statusparcela from parcela where cd_titulo = '+titulo.codigo.ToString+
                             ' and fl_statusparcela = ''Aberto''';
   NpgsqlCmd.Connection := Conexao.NpgsqlCon;
   leitor := NpgsqlCmd.ExecuteReader;

   result := leitor.Read;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }

end;

function TTituloDao.valorTitulo(Titulo: TTitulo): Currency;
var
  sql : String;
  vl : Currency;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select valor from titulo where id = '+Titulo.codigo.ToString;


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    vl := Convert.ToDouble((NpgsqlCmd.ExecuteScalar));

    result := vl;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

function TTituloDao.verificaStatusParcela(Titulo: TTitulo): Boolean;
begin
{  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    NpgsqlCmd.CommandText := 'select sg.descricao as status from parcela p '+
                             'join statusgrupo sg on (sg.id=p.statusgrupoid) '+
                             'where (sg.id = 2 or sg.id = 3) and p.tituloid = '+Titulo.codigo.ToString;


   NpgsqlCmd.Connection := Conexao.NpgsqlCon;
   leitor := NpgsqlCmd.ExecuteReader;

   result := leitor.Read;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
 }
end;

function TTituloDao.GerarParcelas(Titulo: TTitulo) : Integer;
var
  sql,sql2 : String;
  parcela : TParcela;
  no_parcela : integer;
begin
  {try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    parcela := TParcela.Create;
    validar := TValidar.Create;
    //Abre conexao com o banco de dados
    Conexao.Conectar;
    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;
    NpgsqlCmd.Connection := Conexao.NpgsqlCon;

    //Executa query para insercao do titulo
    //Insercao das parcelas no banco
    parcela.gerarParcela(Titulo);

    for no_parcela := 1 to Titulo.no_totalParcelas do
    begin
      sql2 := 'insert into parcela(tituloid,pessoausuarioid,tipodocumentoid,valor,numero,datavencimento,datacadastramento,statusgrupoid) '+
             'values ('+parcela.parcelas[no_parcela].Titulo.codigo.ToString+','+
                        parcela.parcelas[no_parcela].Usuario.codigo.ToString+','+
                        parcela.parcelas[no_parcela].Tipodocumento.codigo.ToString+','''+
                        validar.VirgulaPonto(Convert.ToString(parcela.parcelas[no_parcela].vl_parcela))+''','+
                        parcela.parcelas[no_parcela].no_parcela.ToString+','''+
                        FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_vencimento).Date).ToString+''','''+
                        FormatDateTime('yyyy/MM/dd',(parcela.parcelas[no_parcela].dt_cadastramento).date).ToString+''','+
                        parcela.parcelas[no_parcela].Status.codigo.ToString+')';

      NpgsqlCmd.CommandText := sql2;

      //NpgsqlCmd.Connection := Conexao.NpgsqlCon;
      //Executa query para insercao do titulo
      NpgsqlCmd.ExecuteNonQuery;
    end;

    NpgsqlTrans.Commit;

    result := titulo.codigo;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
   }
end;

function TTituloDao.idParcela: integer;
var
  sql : String;
  codParcela : integer;
begin
{  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    sql := 'select currval(''parcela_id_seq'')';


    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    //Executa query para insercao do titulo
    codParcela := Convert.ToInt32((NpgsqlCmd.ExecuteScalar));
    result := codParcela;

  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
  }
end;

end.
