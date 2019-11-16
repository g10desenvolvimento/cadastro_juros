
unit ProdutoDAO;

interface
uses
   Produto, ZAbstractRODataset, ZAbstractDataset, ZDataset, Unit1, Graphics, jpeg,
   Dialogs, StdCtrls, ExtCtrls, DBCtrls, Validar, SysUtils, Dados;

type
  TProdutoDAO = class
  private
    { Private Declarations }
    { Private Declarations}
    ZQuery: TZQuery;
    Validar: TValidar;
    //BF    : TBytesField;
    {
    function ExisteFuncionario(Fornecedor: TPessoaImpl; action: string): boolean; }
  public
    //constructor Create;
    {Procedures
    procedure excluir(Produto: TProduto);

    procedure incluirProdutoFornecedor(Produto: TProduto);
    procedure alterarProdutoConstante(Produto: TProduto);
    procedure incluirProdutoConstante(Produto: TProduto; eConstante: extended);
    procedure excluirProdutoConstante(Produto: TProduto);
    procedure excluirFornecedor(Produto: TProduto; action: string);
    procedure excluirProduto(Produto: TProduto);
    procedure salvarDimensoes(Laje: TLaje);
    procedure excluirDimensoes(Laje: TLaje);
    {Functions}
    function incluir(Produto: TProduto): integer;
    procedure incluirEstoque(Produto: TProduto);
    procedure editar(Produto: TProduto);
    function setEditarCodigo_ECO_LAR(sCodigo, sCodigoBarra: string): boolean;
    {
    function preencheGridPesquisa(Produto: TProduto; orderby: string):DataSet;
    function preencheGridFornecedor(Produto: TProduto; orderby: string):DataSet;
    function listarConstantes(Produto: TProduto; sOrderBy: string): DataSet;
    function listaProdutoConstate: DataSet;
    function existeProdutoConstante(Produto: TProduto): boolean;
    function listaUnidade: DataSet;
    function listaSubSecao: DataSet;
    function listaTipoProduto: DataSet;
    function listaFornecedor(sNome: string): DataSet;
    function ExistePreVenda(Produto: TProduto): boolean;
    function ExisteFornecedor(Produto: TProduto; action: string): boolean;
    function numeroProduto: string;}
    function gerarCodigoBarra: string;
    function gerarCodigo: string;
    {
    function listaLaje(sNumeroPedido: string): DataSet;
    function getCpfCnpjFornecedor(iCodigo: integer): string;
    function getFornecedor(Produto: TProduto): ArrayList;
    function getEstoque(Produto: TProduto): DataSet;
    function getTotalEstoque(Produto: TProduto): string;
    function listaProduto: DataSet;
    function getProdutoProducaoPropria(Produto: TProduto; bTodos: boolean): DataSet;
    function getNFMovimento: DataSet;
    function getNaturezaOperacao(NFMovimento: TNFMovimento): DataSet;
    function getCFOPProduto(Produto: TProduto): ArrayList;
    }
    function pessoaExiste(CodigoImportcao: string): boolean;
    function pessoaExisteNome(Nome: string): boolean;
    function codigoExiste(codigo: string): boolean;
    function getGrupo(Descricao: string): string;

    function getGrupoPorCodigo(sCodigo: string): string;
    function getGrupoPorMarca(sCodigo: string): string;
  end;

implementation
{
procedure TProdutoDAO.alterarProdutoConstante(Produto: TProduto);
var
   sSQL: string;
begin
  try
    Conexao     := TConexao.Create;
    NpgsqlCmd   := NpgsqlCommand.Create;
    Validar     := TValidar.Create;

    Conexao.Conectar;

    NpgsqlCmd.Connection   := Conexao.NpgsqlCon;
    sSQL := 'update produtoconstatecalculo set produtoid = '''+Produto.codigo.ToString+''' , '+
            'constante = '''+Validar.VirgulaPonto(Produto.valor)+''' where id = '''+Produto.cod+''' ';

    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.ExecuteNonQuery;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

constructor TProdutoDAO.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;
}
function TProdutoDAO.codigoExiste(codigo: string): boolean;
var
  sSQL: string;
  Zget: TZQuery;
  bExiste: boolean;
begin
  try
    Zget            := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from dados where dados.id='''+codigo+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    bExiste := false;
    if not Zget.IsEmpty then
       if not Zget.FieldByName('id').IsNull then
          bExiste := true;

    result := bExiste;
  finally
    Zget.Close;
    Zget.Free;
  end;
end;

procedure TProdutoDAO.editar(produto: TProduto);
var
  sSQL, sCodigoBarras: string;
  iIndex, iCodigo: integer;
  ZqProduto: TZQuery;
begin
   try
    ZqProduto            := TZQuery.Create(ZQuery);
    ZqProduto.Connection := frmPrincipal.ZConnection;
    Validar              := TValidar.Create;
    try
      if Copy(produto.codigoBarra, 1, 4) = '0300' then
      begin
      sSQL := 'update produto set codigobarras = '''+produto.cod+''' '+
              'where codigobarras = '''+produto.codigoBarra+''' ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;
      end;
    except
      on E: Exception do
      begin
        raise Exception.Create('Ocorreu o seguinte ERRO: '+E.Message);
      end;
    end;
  finally
    ZqProduto.Free;
  end;
end;
 {
procedure TProdutoDAO.excluir(produto: TProduto);
begin
  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta o comando sql
    NpgsqlCmd.CommandText := 'delete from produto where id = '+produto.codigo.ToString;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;

    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

procedure TProdutoDAO.excluirDimensoes(Laje: TLaje);
var
  sSQL: string;
begin
  try
    try
      Conexao   := TConexao.Create;
      NpgsqlCmd := NpgsqlCommand.Create;

      Conexao.Conectar;

      sSQL := 'delete from laje where numeropedido = '''+Laje.sNumeroPedido+''' ';

      if Laje.iNumItem > 0 then
         sSQL := sSQL + ' and numitem = '''+Laje.iNumItem.ToString+''' ';

      NpgsqlCmd.CommandText := sSQL;
      NpgsqlCmd.Connection := Conexao.NpgsqlCon;

      NpgsqlCmd.ExecuteNonQuery;
    except
     on E: Exception do
      begin
        raise Exception.Create('O ocorreu o seguinte erro ao tentar excluir este ítem:'+ E.Message);
      end;
    end;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

procedure TProdutoDAO.ExcluirFornecedor(produto: TProduto; action: String);
var
  sql: String;
begin
  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    if action = '1' then
       sql := 'delete from produtofornecedor where produtoid = '+produto.codigo.ToString+' and id = '+produto.fornecedor.codigo.ToString+''
    else
    begin
       sql := 'delete from produtofornecedor where produtoid = '+produto.codigo.ToString+'';
       //excluir(Perfil);
    end;
    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta o comando sql
    NpgsqlCmd.CommandText := sql;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;

    //Executa query
    NpgsqlCmd.ExecuteNonQuery;

    if action = '2' then
      excluirProduto(produto);
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

procedure TProdutoDAO.excluirProduto(produto: TProduto);
begin
  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta o comando sql
    NpgsqlCmd.CommandText := 'delete from produto where id = '+produto.codigo.ToString;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;

    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

procedure TProdutoDAO.excluirProdutoConstante(Produto: TProduto);
var
  sSQL: string;
begin
  try
    //Cria objetos
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    sSQL := 'delete from produtoconstatecalculo where id = '+produto.codigo.ToString;

    //Monta o comando sql
    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;

    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.ExisteFornecedor(produto: TProduto;
  action: String): boolean;
var
  leitor: NPgSqlDataReader;
  sql: String;
begin
  try
     //Abre conexao com o banco de dados
     Conexao   := TConexao.Create;
     NpgsqlCmd := NpgsqlCommand.Create;

     if action = '1' then
        sql := 'select pf.produtoid, pf.fornecedorid from produtofornecedor pf where pf.produtoid = '+produto.codigo.ToString+' and pf.fornecedorid = '+produto.fornecedor.codigo.ToString+'';

     if action = '2' then
        sql := 'select pf.produtoid from produtofornecedor pf where pf.produtoid = '+produto.codigo.ToString+'';
     //Abre conexao com o banco de dados
     Conexao.Conectar;
     //Monta a query
     NpgsqlCmd.CommandText := sql;

     NpgsqlCmd.Connection := Conexao.NpgsqlCon;
     leitor               := NpgsqlCmd.ExecuteReader;

     result := Leitor.Read;
  finally
     //Fecha conexao com o banco de dados
     Conexao.Desconectar;
     Conexao.Free;
     NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.ExisteFuncionario(fornecedor: TPessoaImpl;
  action: String): boolean;
begin

end;

function TProdutoDAO.ExistePreVenda(produto: TProduto): boolean;
var
  leitor: NPgSqlDataReader;
begin
  try
     //Abre conexao com o banco de dados
     Conexao   := TConexao.Create;
     NpgsqlCmd := NpgsqlCommand.Create;

     //Abre conexao com o banco de dados
     Conexao.Conectar;
     //Monta a query
     NpgsqlCmd.CommandText := 'select id from prevenda where produtoid = '+produto.codigo.ToString;

     NpgsqlCmd.Connection := Conexao.NpgsqlCon;
     leitor               := NpgsqlCmd.ExecuteReader;

     result := Leitor.Read;
  finally
     //Fecha conexao com o banco de dados
     Conexao.Desconectar;
     Conexao.Free;
     NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.existeProdutoConstante(Produto: TProduto): boolean;
var
  leitor : NPgSqlDataReader;
  sSQL   : string;
  bExiste: boolean;
begin
  try
     //Abre conexao com o banco de dados
     Conexao   := TConexao.Create;
     NpgsqlCmd := NpgsqlCommand.Create;

     //Abre conexao com o banco de dados
     Conexao.Conectar;

     sSQL := 'select id from produtoconstatecalculo where '+
             'produtoconstatecalculo.produtoid = '''+produto.codigo.ToString+''' '+
             'limit 1 ';

     NpgsqlCmd.CommandText := sSQL;

     NpgsqlCmd.Connection := Conexao.NpgsqlCon;
     leitor               := NpgsqlCmd.ExecuteReader;

     bExiste := false;
     if Leitor.Read then
        if not Convert.IsDBNull(Leitor['id']) then
           bExiste := true;

     result := bExiste;
  finally
     //Fecha conexao com o banco de dados
     Conexao.Desconectar;
     Conexao.Free;
     NpgsqlCmd.Free;
  end;

end;
}

function TProdutoDAO.gerarCodigo: string;
var
  sCodigo: string;
  iCodigo     : integer;
  bGerarOutro : boolean;
  zqCodigo    : TZQuery;
begin
  try
    zqCodigo    := TZQuery.Create(ZQuery);
    zqCodigo.Connection := frmPrincipal.ZConnection;
    Validar     := TValidar.Create;

    zqCodigo.Close;
    zqCodigo.SQL.Clear;
    zqCodigo.SQL.Text := 'select last_value as codigo from produto_id_seq';
    zqCodigo.Open;

    iCodigo := zqCodigo.FieldByName('codigo').AsInteger;

    Inc(iCodigo);

    sCodigo := Validar.gerarDigitoZero(IntToStr(iCodigo), 7);

    zqCodigo.Close;
    zqCodigo.SQL.Clear;
    zqCodigo.SQL.Text := 'select codigo from produto where codigo = '''+sCodigo+''' ';
    zqCodigo.Open;

    bGerarOutro := true;
    while bGerarOutro do
    begin
      if not zqCodigo.IsEmpty then
      begin
        Inc(iCodigo);
        sCodigo := Validar.gerarDigitoZero(IntToStr(iCodigo), 7);

        zqCodigo.Close;
        zqCodigo.SQL.Clear;
        zqCodigo.SQL.Text := 'select codigo from produto where codigo = '''+sCodigo+''' ';
        zqCodigo.Open;

        bGerarOutro := false;
        if (not zqCodigo.IsEmpty) then
            if not zqCodigo.FieldByName('codigo').IsNull then
               bGerarOutro := true;
      end
      else
        bGerarOutro := false;
    end;

    result := sCodigo;
  finally
    zqCodigo.Close;
    zqCodigo.Free;
  end;

end;

function TProdutoDAO.gerarCodigoBarra: String;
var
  sCodigoBarra: string;
  iCodigo     : integer;
  bGerarOutro : boolean;
  zqCodigo    : TZQuery;
begin
  try
    zqCodigo            := TZQuery.Create(ZQuery);
    zqCodigo.Connection := frmPrincipal.ZConnection;
    Validar             := TValidar.Create;

    zqCodigo.Close;
    zqCodigo.SQL.Clear;
    zqCodigo.SQL.Text := 'select last_value as codigo from produto_id_seq';
    zqCodigo.Open;

    iCodigo := zqCodigo.FieldByName('codigo').AsInteger;

    Inc(iCodigo);

    sCodigoBarra := Validar.gerarDigitoZero(IntToStr(iCodigo), 14);

    zqCodigo.Close;
    zqCodigo.SQL.Clear;
    zqCodigo.SQL.Text := 'select codigobarras from produto where codigobarras ='''+sCodigoBarra+''' ';
    zqCodigo.Open;

    bGerarOutro := true;
    while bGerarOutro do
    begin
       if not zqCodigo.IsEmpty then
       begin
         Inc(iCodigo);
         sCodigoBarra := Validar.gerarDigitoZero(IntToStr(iCodigo), 14);

         zqCodigo.Close;
         zqCodigo.SQL.Clear;
         zqCodigo.SQL.Text := 'select codigobarras from produto where codigobarras ='''+sCodigoBarra+''' ';
         zqCodigo.Open;

         bGerarOutro := (zqCodigo.IsEmpty);
       end
       else
        bGerarOutro := false;
    end;

    result := sCodigoBarra;
  finally

  end;
end;
function TProdutoDAO.getGrupo(Descricao: string): string;
var
  sSQL: string;
  Zget: TZQuery;
  sCodigo: string;
  Valid: TValidar;
begin
  try
    Zget            := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;
    Valid            := TValidar.Create;

    sSQL := 'select id from tipoproduto where descricao = '''+Descricao+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    if not Zget.IsEmpty then
       sCodigo := Zget.FieldByName('id').AsString
    else
    begin
      sSQL := 'insert into tipoproduto(descricao) values ('''+Descricao+''') ';

      Zget.Close;
      Zget.SQL.Clear;
      Zget.SQL.Text := sSQL;
      Zget.ExecSQL;

      sSQL := 'select currval(''tipoproduto_id_seq'') as id';

      Zget.Close;
      Zget.SQL.Clear;
      Zget.SQL.Text := sSQL;
      Zget.Open;

      sCodigo := Zget.FieldByName('id').AsString;

      sSQL := 'update tipoproduto set codigo = '''+Valid.gerarDigitoZero(sCodigo, 5)+''' where id = '''+sCodigo+''' ';

      Zget.Close;
      Zget.SQL.Clear;
      Zget.SQL.Text := sSQL;
      Zget.ExecSQL;
    end;

    result := sCodigo;
  finally
    Zget.Close;
    Zget.Free;
    Valid.Free;
  end;

end;

function TProdutoDAO.getGrupoPorCodigo(sCodigo: string): string;
var
  sSQL: string;
  Zget: TZQuery;
  sID: string;
  Valid: TValidar;
begin
  try
    Zget            := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;
    Valid           := TValidar.Create;
    sID             := '1006';

    sSQL := 'select id from tipoproduto where codigo = '''+Valid.gerarDigitoZero(sCodigo, 4)+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    if not Zget.IsEmpty then
       sID := Zget.FieldByName('id').AsString;

    result := sID;
  finally
    Zget.Close;
    Zget.Free;
    Valid.Free;
  end;
end;

function TProdutoDAO.getGrupoPorMarca(sCodigo: string): string;
var
  sSQL: string;
  Zget: TZQuery;
  sID: string;
  Valid: TValidar;
begin
  try
    Zget            := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;
    Valid           := TValidar.Create;
    sID             := '9';

    sSQL := 'select id from marca where codigo = '''+Valid.gerarDigitoZero(sCodigo, 4)+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    if not Zget.IsEmpty then
       sID := Zget.FieldByName('id').AsString;

    result := sID;
  finally
    Zget.Close;
    Zget.Free;
    Valid.Free;
  end;

end;

{
function TProdutoDAO.getCFOPProduto(Produto: TProduto): ArrayList;
var
  Leitor: NPgSqlDataReader;
  sSQL: string;
  aOperacao: ArrayList;
  Operacao: TOperacaoCFOP;
begin
  try
    Conexao     := TConexao.Create;
    NpgsqlCmd   := NpgsqlCommand.Create;
    aOperacao := ArrayList.Create;

    Conexao.Conectar;

    sSQL := 'select notafiscalnatop.id, notafiscalnatop.descricao, nfenatopcfopproduto.cfop from '+
            'nfenatopcfopproduto                                                                 '+
            'join notafiscalnatop on notafiscalnatop.id = nfenatopcfopproduto.notafiscalntaopid  '+
            'where nfenatopcfopproduto.produtoid ='''+Produto.Codigo.ToString+'''                ';

    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Leitor                := NpgsqlCmd.ExecuteReader;

    while Leitor.Read do
    begin
      Operacao := TOperacaoCFOP.Create;

      Operacao.NaturezaOperacao.Codigo := Convert.ToInt64(Leitor['id']);
      Operacao.Operacao                := Convert.ToString(Leitor['descricao']);
      Operacao.CFOP                    := Convert.ToString(Leitor['cfop']);
      Operacao.Codigo                  := StrToInt(Copy(Operacao.CFOP, 2,3));

      aOperacao.Add(Operacao);
    end;

    result := aOperacao;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.getCpfCnpjFornecedor(iCodigo: integer): string;
var
  Leitor: NPgSqlDataReader;
  sSQL, sCpfCnpj : string;
begin
  try
    Conexao     := TConexao.Create;
    NpgsqlCmd   := NpgsqlCommand.Create;
    Validar     := TValidar.Create;

    Conexao.Conectar;
    sSQL := 'select vw_fornecedor.cnpjcpf from vw_fornecedor   '+
            'where vw_fornecedor.id = '''+iCodigo.ToString+''' ';

    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    Leitor               := NpgsqlCmd.ExecuteReader;

    sCpfCnpj := '';
    if Leitor.Read then
       if not Convert.IsDBNull(Leitor['cnpjcpf']) then
          sCpfCnpj := Convert.ToString(Leitor['cnpjcpf']);

    result := sCpfCnpj;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.getEstoque(Produto: TProduto): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    Conexao   := TConexao.Create;                                             
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;
                                                                                      
    Conexao.Conectar;
    sSQL :=
    'select setor.descricao as centro,                                                                                                         '+
    'case cast((centroestocador.quantidade+centroestocador_fiscal.quantidade) as varchar)                                                      '+
    'when 0 then (cast((centroestocador.quantidade+centroestocador_fiscal.quantidade) as varchar)||'' ''||unidade.descricao)                   '+
    'else (to_char((centroestocador.quantidade+centroestocador_fiscal.quantidade), ''999999.999'')||'' ''||unidade.descricao) end as estgeral, '+
    'case cast(centroestocador.quantidade as varchar)                                                                                          '+
    'when 0 then (cast(centroestocador.quantidade as varchar)||'' ''||unidade.descricao)                                                       '+
    'else (to_char(centroestocador.quantidade, ''999999.999'')||'' ''||unidade.descricao) end as estfisico,                                    '+
    'case cast(centroestocador_fiscal.quantidade as varchar)                                                                                   '+
    'when 0 then (cast(centroestocador_fiscal.quantidade as varchar)||'' ''||unidade.descricao)                                                '+
    'else (to_char(centroestocador_fiscal.quantidade, ''999999.999'')||'' ''||unidade.descricao) end as estreal,                                '+
    '(centroestocador.quantidade+centroestocador_fiscal.quantidade) as geral,                                                                  '+
    'centroestocador.quantidade as fisico,                                                                                                     '+
    'centroestocador_fiscal.quantidade as real                                                                                                 '+
    'from produto                                                                                                                              '+
    'join unidade on unidade.id = produto.unidadeid                                                                                            '+
    'join centroestocador on centroestocador.produtoid = produto.id                                                                            '+
    'join setor on setor.id = centroestocador.centroestocadorid                                                                                '+
    'join centroestocador_fiscal on centroestocador_fiscal.produtoid = produto.id                                                              '+
    'where produto.id = '''+Produto.Codigo.ToString+'''                                                                                        '+
    'and centroestocador.isproduto = true                                                                                                      ';

    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.getFornecedor(Produto: TProduto): ArrayList;
var
  Leitor: NPgSqlDataReader;
  sSQL: string;
  aFornecedor: ArrayList;
  Fornecedor: TFabricante;
begin
  try
    Conexao     := TConexao.Create;
    NpgsqlCmd   := NpgsqlCommand.Create;
    Validar     := TValidar.Create;
    aFornecedor := ArrayList.Create;

    Conexao.Conectar;

    sSQL := 'select vw_fornecedor.id as codigo, vw_fornecedor.nome, vw_fornecedor.cnpjcpf as codigofabricante '+
            'from produtofornecedor join vw_fornecedor on vw_fornecedor.id = produtofornecedor.fornecedorid       '+
            'where produtofornecedor.produtoid = '''+produto.codigo.ToString+'''                                  ';

    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Leitor                := NpgsqlCmd.ExecuteReader;

    while Leitor.Read do
    begin
      Fornecedor := TFabricante.Create;

      Fornecedor.Codigo           := Convert.ToInt32(Leitor['codigo']);
      Fornecedor.CodigoFabricante := Convert.ToString(Leitor['codigofabricante']);
      Fornecedor.sNome            := Convert.ToString(Leitor['nome']);

      aFornecedor.Add(Fornecedor);
    end;

    result := aFornecedor;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.getNaturezaOperacao(NFMovimento: TNFMovimento): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    sSQL := 'select distinct notafiscalnatop.id, notafiscalnatop.descricao,  '+
            'notafiscalmovimentacao.codigo from notafiscalnatop              '+
            'join notafiscalmovimentacao on notafiscalmovimentacao.id = notafiscalnatop.movimentacaoid ';

    //if NFMovimento.Codigo = 0 then
    //   sSQL := sSQL + 'join nfenatopcfopproduto on nfenatopcfopproduto.notafiscalntaopid = notafiscalnatop.id    ';

    if NFMovimento.Codigo > 0 then
       sSQL := sSQL + 'join nfenatopcfopproduto on nfenatopcfopproduto.notafiscalntaopid = notafiscalnatop.id '+
                      'where notafiscalnatop.movimentacaoid = '''+NFMovimento.Codigo.ToString+''' ';

    sSQL := sSQL + 'order by 3 ';

    Conexao.Conectar;
    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.getNFMovimento: DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    sSQL := 'select notafiscalmovimentacao.id, notafiscalmovimentacao.descricao  '+
            'from notafiscalmovimentacao  order by notafiscalmovimentacao.codigo ';

    Conexao.Conectar;
    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.getProdutoProducaoPropria(Produto: TProduto; bTodos: boolean): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    sSQL := 'select produto.id, produto.descricao from produto where produto.statusid = 29 '+
            'and ippt = ''P'' ';

    if bTodos then
       sSQL := sSQL + 'and produto.id not in(select produtoid from composicaoproduto) ';

    if Produto.Descricao <> '' then
       sSQL := sSQL + 'and  produto.descricao ilike '''+Produto.Descricao+'%'' ';

    if Produto.sReferencia <> '' then
       sSQL := sSQL + 'and upper(produto.referencia) = '''+UpperCase(Produto.sReferencia)+''' ';

    sSQL := sSQL +'order by 2 ';

    Conexao.Conectar;
    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;

end;

function TProdutoDAO.getTotalEstoque(Produto: TProduto): string;
var
  Leitor: NPgSqlDataReader;
  sSQL: string;
  sTotal: string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Validar   := TValidar.Create;

    Conexao.Conectar;

    sSQL := 'select (to_char(sum(centroestocador.quantidade), ''999999.999'')||'' ''||unidade.descricao) as qtde '+
            'from centroestocador                                    '+
            'join produto on produto.id = centroestocador.produtoid  '+
            'join unidade on unidade.id = produto.unidadeid          '+
            'where centroestocador.quantidade is not null            '+
            'and produto.id ='''+Produto.Codigo.ToString+'''         '+
            'and centroestocador.isproduto = true                    '+
            'group by unidade.descricao                              ';


    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Leitor                := NpgsqlCmd.ExecuteReader;

    sTotal := '0';
    if Leitor.Read then
       if not Convert.IsDBNull(Leitor['qtde']) then
          sTotal := Convert.ToString(Leitor['qtde']);

    result := sTotal;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;
}
function TProdutoDAO.incluir(produto: TProduto): integer;
var
  sSQL, sCodigoBarras: string;
  iIndex, iCodigo: integer;
  ZqProduto: TZQuery;
  produtoExiste: boolean;
begin
   try
    ZqProduto            := TZQuery.Create(ZQuery);
    ZqProduto.Connection := frmPrincipal.ZConnection;
    Validar              := TValidar.Create;

    sCodigoBarras        := produto.codigoBarra;

    try
      frmPrincipal.ZConnection.StartTransaction;

      if Copy(produto.codigoBarra, 1, 4) = '0300' then
         Produto.codigoBarra := Validar.gerarDigitoZero(Produto.cod, 14);

      sSQL :=
      'insert into produto (codigo, lote, descricao, tipoprodutoid, unidadesaidaid, unidadeid,                                   '+
      'garantia, subsecaoid, valor, aliquotaicms, garantiainicio, garantiafim,valorcompra, regracomissaoid,                      '+
      'estoqueminimo, estoquemaximo, descontomaximo,percentbasecalcicms,percbaseicmscalcsubs,aliquotaipi,                        '+
      'descricaofiscal, codigobarras, statusid, vendadiferenciada, constantecalculo, referencia, ippt, cst, iat, cfop,           '+
      'ncmsh, balanca, marcaid, piscofinsid, margemlucro, margemlucrominima, qtdeembalagem, qtdeconversao,                       '+
      'precoconversao, tipomercadoriaid, diavalidade, mvasaida, deducaoicmssaida, tipoimobilizado,                               '+
      'produtoidprincipal, planocontasid, centrocustoid, finalidade, vidautil, valorprazo, fonteibptid,                          '+
      'impostoconsumidor,customedio, barraimport, precopaf, customedioreal, referencia2, obs,                                    '+
      'unidadeidentrada, localproduto,desconto, familiaprodutoid, casasdecimais, cest)                                           '+
      'values (:codigo, :lote, :descricao, :tipoprodutoid, :unidadesaidaid, :unidadeid,                                          '+
      ':garantia, :subsecaoid, :valor, :aliquotaicms, :garantiainicio, :garantiafim,:valorcompra, :regracomissaoid,              '+
      ':estoqueminimo, :estoquemaximo, :descontomaximo,:percentbasecalcicms,:percbaseicmscalcsubs,:aliquotaipi,                  '+
      ':descricaofiscal, :codigobarras, :statusid, :vendadiferenciada, :constantecalculo, :referencia, :ippt, :cst, :iat, :cfop, '+
      ':ncmsh, :balanca, :marcaid, :piscofinsid, :margemlucro, :margemlucrominima, :qtdeembalagem, :qtdeconversao,               '+
      ':precoconversao, :tipomercadoriaid, :diavalidade, :mvasaida, :deducaoicmssaida, :tipoimobilizado,                         '+
      ':produtoidprincipal, :planocontasid, :centrocustoid, :finalidade, :vidautil, :valorprazo, :fonteibptid,                   '+
      ':impostoconsumidor,:customedio, :barraimport, :precopaf, :customedioreal, :referencia2, :obs, :unidadeidentrada,          '+
      ':localproduto, :desconto, :familiaprodutoid, :casasdecimais, :cest)                                                       ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('codigo').AsString              := Produto.cod;
      ZqProduto.ParamByName('lote').AsString                := Produto.lote;
      ZqProduto.ParamByName('descricao').AsString           := Produto.Descricao;
      ZqProduto.ParamByName('tipoprodutoid').AsString       := Produto.TipoProduto.codigo;
      ZqProduto.ParamByName('unidadesaidaid').AsString      := Produto.unidadeSaida.codigo;
      ZqProduto.ParamByName('unidadeid').AsString           := Produto.unidade.codigo;
      ZqProduto.ParamByName('unidadeidentrada').AsString    := Produto.unidade.codigo;
      ZqProduto.ParamByName('garantia').AsString            := Produto.garantia;
      ZqProduto.ParamByName('subsecaoid').AsInteger         := Produto.subsecao.codigo;
      ZqProduto.ParamByName('valor').AsCurrency             := Produto.valor;
      ZqProduto.ParamByName('precopaf').AsString            := '0';

      if Produto.precodiferenciado <> '' then
         ZqProduto.ParamByName('precopaf').AsString         := Produto.precodiferenciado;

      ZqProduto.ParamByName('aliquotaicms').AsFloat         := Produto.aliquotaicms;
      ZqProduto.ParamByName('valorcompra').AsFloat          := Produto.valorCompra;
      ZqProduto.ParamByName('garantiainicio').AsDate        := StrToDate('01/01/0001');
      ZqProduto.ParamByName('garantiafim').AsDate           := StrToDate('01/01/0001');
      ZqProduto.ParamByName('regracomissaoid').AsInteger    := 0;
      ZqProduto.ParamByName('estoqueminimo').AsFloat        := Produto.estoqueminimo;
      ZqProduto.ParamByName('estoquemaximo').AsFloat        := Produto.estoquemaximo;
      ZqProduto.ParamByName('descontomaximo').AsFloat       := Produto.descontoMaximo;
      ZqProduto.ParamByName('percentbasecalcicms').AsFloat  := Produto.PercentBaseCalcIcms;
      ZqProduto.ParamByName('percbaseicmscalcsubs').AsFloat := Produto.bCalcIcmsSubs;
      ZqProduto.ParamByName('aliquotaipi').AsFloat          := Produto.aliquotaipi;
      ZqProduto.ParamByName('descricaofiscal').AsString     := Produto.descricaoFiscal;
      ZqProduto.ParamByName('codigobarras').AsString        := Produto.codigoBarra;
      ZqProduto.ParamByName('statusid').AsInteger           := Produto.Status.codigo;
      ZqProduto.ParamByName('vendadiferenciada').AsString   := Produto.sVendaDiferenciada;
      ZqProduto.ParamByName('constantecalculo').AsString    := Produto.sConstanteCalculo;
      ZqProduto.ParamByName('referencia').AsString          := Produto.sReferencia;
      ZqProduto.ParamByName('referencia2').AsString         := Produto.sReferencia2;
      ZqProduto.ParamByName('ippt').AsString                := Produto.sIPPT;
      ZqProduto.ParamByName('cfop').AsString                := Produto.CFOP;
      ZqProduto.ParamByName('cst').AsString                 := Produto.CST;
      ZqProduto.ParamByName('iat').AsString                 := 'A';
      ZqProduto.ParamByName('ncmsh').AsString               := Produto.NCM;
      ZqProduto.ParamByName('cest').AsString                := Produto.CEST;
      ZqProduto.ParamByName('balanca').AsString             := Produto.sBalanca;
      ZqProduto.ParamByName('marcaid').AsInteger            := Produto.Marca.codigo;
      ZqProduto.ParamByName('piscofinsid').AsInteger        := Produto.PisCofins;
      ZqProduto.ParamByName('margemlucro').AsFloat          := 0;
      ZqProduto.ParamByName('margemlucrominima').AsFloat    := 0;
      ZqProduto.ParamByName('qtdeembalagem').AsFloat        := Produto.QtdeEmbalagem;
      ZqProduto.ParamByName('qtdeconversao').AsFloat        := Produto.QtdeAtacado;
      ZqProduto.ParamByName('precoconversao').AsFloat       := 0;
      ZqProduto.ParamByName('desconto').AsFloat             := Produto.desconto;

      if Produto.precoatado <> '' then
         ZqProduto.ParamByName('precoconversao').AsFloat   := StrToFloat(Produto.precoatado);

      ZqProduto.ParamByName('tipomercadoriaid').AsInteger   := 1;
      ZqProduto.ParamByName('diavalidade').AsInteger        := 0;
      ZqProduto.ParamByName('mvasaida').AsFloat             := 0;
      ZqProduto.ParamByName('deducaoicmssaida').AsFloat     := 0;
      ZqProduto.ParamByName('tipoimobilizado').AsInteger    := 0;
      ZqProduto.ParamByName('produtoidprincipal').AsInteger := 0;
      ZqProduto.ParamByName('planocontasid').AsInteger      := 0;
      ZqProduto.ParamByName('centrocustoid').AsInteger      := 0;
      ZqProduto.ParamByName('finalidade').AsInteger         := 0;
      ZqProduto.ParamByName('vidautil').AsInteger           := 0;
      ZqProduto.ParamByName('valorprazo').AsFloat           := 0;
      ZqProduto.ParamByName('barraimport').AsString         := sCodigoBarras;
      ZqProduto.ParamByName('customedio').AsFloat           := Produto.CustoMedio;
      ZqProduto.ParamByName('customedioreal').AsFloat       := Produto.valorCompra;
      ZqProduto.ParamByName('obs').AsString                 := Produto.sObs;
      ZqProduto.ParamByName('localproduto').AsString        := Produto.sLocal;
      ZqProduto.ParamByName('familiaprodutoid').AsString    := Produto.sFamilia;
      ZqProduto.ParamByName('casasdecimais').AsString       := '2';

      ZqProduto.ExecSQL;

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text :=  'select last_value from produto_id_seq ';
      ZqProduto.Open;

      iCodigo := ZqProduto.FieldByName('last_value').asInteger;

      sSQL := 'insert into produtofornecedor(produtoid, fornecedorid) '+
              'values('''+IntToStr(iCodigo)+''', '''+IntToStr(Produto.Fornecedor.Codigo)+''' )';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;

      {Cria Centro Estocador Fisico}
      sSQL :=
      'INSERT INTO centroestocador (centroestocadorid, isproduto, produtoid, quantidade, lojaid)'+
      'VALUES (:centroestocadorid, :isproduto, :produtoid, :quantidade, :lojaid)                ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('centroestocadorid').AsInteger := 2;
      ZqProduto.ParamByName('isproduto').AsBoolean := true;
      ZqProduto.ParamByName('produtoid').AsInteger := iCodigo;
      ZqProduto.ParamByName('quantidade').AsFloat  := Produto.Qtde;
      ZqProduto.ParamByName('lojaid').AsInteger    := 0;
      ZqProduto.ExecSQL;

      {Cria Centro Estocador Fisico}
      sSQL :=
      'INSERT INTO centroestocador_fisico (centroestocadorid, isproduto, produtoid, quantidade, lojaid)'+
      'VALUES (:centroestocadorid, :isproduto, :produtoid, :quantidade, :lojaid)';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('centroestocadorid').AsInteger := 2;
      ZqProduto.ParamByName('isproduto').AsBoolean         := true;
      ZqProduto.ParamByName('produtoid').AsInteger         := iCodigo;
      ZqProduto.ParamByName('quantidade').AsFloat          := Produto.QtdeAux;
      ZqProduto.ParamByName('lojaid').AsInteger            := 1;
      ZqProduto.ExecSQL;

      {Preço Auxiliar}
      if Produto.descricaoAUX <> '' then
      begin
      sSQL :=
      'insert into produtoprecoauxiliar(produtoid, descricao, preco, qtdesaida) '+
      'values (:produtoid, :descricao, :preco, :qtdesaida); ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('produtoid').AsInteger := iCodigo;
      ZqProduto.ParamByName('descricao').AsString  := Produto.descricaoAUX;
      ZqProduto.ParamByName('qtdesaida').AsFloat   := Produto.QtdeAUX;
      ZqProduto.ParamByName('preco').AsFloat       := Produto.valorAUX;
      ZqProduto.ExecSQL;
      end;

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := 'select tabelaimpostos.id from tabelaimpostos join cst on cst.id = cstid '+
      'where cst.codigo = '''+Produto.CST+''' '+
      'and aliquotaicms = '''+Validar.VirgulaPonto(FloatToStr(Produto.AliquotaIcms))+''' ';
      ZqProduto.Open;

      Produto.ifiscal := 79;
      if not ZqProduto.IsEmpty then
         Produto.ifiscal := ZqProduto.FieldByName('id').AsInteger;

      sSQL :=
      'insert into impostosproduto(pessoaemitente, tabelaimpostosid, produtoid, data) '+
      'values(''1428'', '''+IntToStr(Produto.ifiscal)+''', '''+IntToStr(iCodigo)+''', current_timestamp); ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;

      {
      sSQL :=
      'insert into lojaproduto(lojaid, produtoid, valor, vlcadastro)values(''1'', '''+
      IntToStr(iCodigo)+''', '''+
      Validar.VirgulaPonto(CurrToStr(Produto.valor))+''', ''1'' )';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;

      sSQL :=
      'insert into lojaproduto(lojaid, produtoid, valor, vlcadastro)values(''0'', '''+
      IntToStr(iCodigo)+''', '''+
      Validar.VirgulaPonto(CurrToStr(Produto.valor))+''', ''1'' )';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := 'select tabelaimpostos.id from tabelaimpostos join cst on cst.id = cstid '+
      'where cst.codigo = '''+Produto.CST+''' ';
      //'and aliquotaicms = '''+Validar.VirgulaPonto(FloatToStr(Produto.AliquotaIcms))+''' ';
      ZqProduto.Open;

      Produto.ifiscal := 0;
      if not ZqProduto.IsEmpty then
         Produto.ifiscal := ZqProduto.FieldByName('id').AsInteger;

      sSQL :=
      'insert into impostosproduto(pessoaemitente, tabelaimpostosid, produtoid, data) '+
      'values(''1428'', '''+IntToStr(Produto.ifiscal)+''', '''+IntToStr(iCodigo)+''', current_timestamp); ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;
      }
      result := 0;
      frmPrincipal.ZConnection.Commit;
    except
      on E: Exception do
      begin
        frmPrincipal.ZConnection.Rollback;
        raise Exception.Create('Ocorreu o seguinte erro ao tentar salvar o produto: '+E.Message);
      end;
    end;
  finally

  end;
end;
procedure TProdutoDAO.incluirEstoque(Produto: TProduto);
var
  sSQL, sCodigoBarras: string;
  iIndex, iCodigo: integer;
  ZqProduto: TZQuery;
  produtoExiste: boolean;
begin
   try
    ZqProduto            := TZQuery.Create(ZQuery);
    ZqProduto.Connection := frmPrincipal.ZConnection;
    Validar              := TValidar.Create;
    sCodigoBarras        := produto.codigoBarra;

    try
      if Copy(produto.codigoBarra, 1, 4) = '0300' then
         Produto.codigoBarra := Validar.gerarDigitoZero(Produto.cod, 14);

      sSQL := 'select id from produto where codigo = '''+Validar.gerarDigitoZero(Produto.Cod, 7)+''' ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.Open;

      produtoExiste := false;
      if not ZqProduto.IsEmpty then
      begin
        iCodigo       := ZqProduto.FieldByName('id').AsInteger;
        produtoExiste := true;
      end;

      if not produtoExiste then
      begin
        sSQL :=
        'insert into produto (codigo, lote, descricao, tipoprodutoid, unidadesaidaid, unidadeid,                            '+
        'garantia, subsecaoid, valor, aliquotaicms, garantiainicio, garantiafim,valorcompra, regracomissaoid,               '+
        'estoqueminimo, estoquemaximo, descontomaximo,percentbasecalcicms,percbaseicmscalcsubs,aliquotaipi,                 '+
        'descricaofiscal, codigobarras, statusid, vendadiferenciada, constantecalculo, referencia, ippt, cst, iat,          '+
        'ncmsh, balanca, marcaid, piscofinsid, margemlucro, margemlucrominima, qtdeembalagem, qtdeconversao,                '+
        'precoconversao, tipomercadoriaid, diavalidade, mvasaida, deducaoicmssaida, tipoimobilizado,                        '+
        'produtoidprincipal, planocontasid, centrocustoid, finalidade, vidautil, valorprazo, fonteibptid,                   '+
        'impostoconsumidor, barraimport)                                                                                    '+
        'values (:codigo,:lote, :descricao, :tipoprodutoid, :unidadesaidaid, :unidadeid,                                    '+
        ':garantia, :subsecaoid, :valor, :aliquotaicms, :garantiainicio, :garantiafim,:valorcompra, :regracomissaoid,       '+
        ':estoqueminimo, :estoquemaximo, :descontomaximo,:percentbasecalcicms,:percbaseicmscalcsubs,:aliquotaipi,           '+
        ':descricaofiscal, :codigobarras, :statusid, :vendadiferenciada, :constantecalculo, :referencia, :ippt, :cst, :iat, '+
        ':ncmsh, :balanca, :marcaid, :piscofinsid, :margemlucro, :margemlucrominima, :qtdeembalagem, :qtdeconversao,        '+
        ':precoconversao, :tipomercadoriaid, :diavalidade, :mvasaida, :deducaoicmssaida, :tipoimobilizado,                  '+
        ':produtoidprincipal, :planocontasid, :centrocustoid, :finalidade, :vidautil, :valorprazo, :fonteibptid,            '+
        ':impostoconsumidor, :barraimport)                                                                                  ';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ParamByName('codigo').AsString              := Produto.cod;
        ZqProduto.ParamByName('lote').AsString                := Produto.lote;
        ZqProduto.ParamByName('descricao').AsString           := Produto.Descricao;
        ZqProduto.ParamByName('tipoprodutoid').AsString       := Produto.TipoProduto.codigo;
        ZqProduto.ParamByName('unidadesaidaid').AsString      := Produto.unidadeSaida.codigo;
        ZqProduto.ParamByName('unidadeid').AsString           := Produto.unidade.codigo;
        ZqProduto.ParamByName('garantia').AsString            := Produto.garantia;
        ZqProduto.ParamByName('subsecaoid').AsInteger         := Produto.subsecao.codigo;
        ZqProduto.ParamByName('valor').AsCurrency             := Produto.valor;
        ZqProduto.ParamByName('aliquotaicms').AsFloat         := Produto.aliquotaicms;
        ZqProduto.ParamByName('valorcompra').AsFloat          := Produto.valorCompra;
        ZqProduto.ParamByName('garantiainicio').AsDate        := StrToDate('01/01/0001');
        ZqProduto.ParamByName('garantiafim').AsDate           := StrToDate('01/01/0001');
        ZqProduto.ParamByName('regracomissaoid').AsInteger    := 0;
        ZqProduto.ParamByName('estoqueminimo').AsFloat        := Produto.estoqueminimo;
        ZqProduto.ParamByName('estoquemaximo').AsFloat        := Produto.estoquemaximo;
        ZqProduto.ParamByName('descontomaximo').AsFloat       := Produto.descontoMaximo;
        ZqProduto.ParamByName('percentbasecalcicms').AsFloat  := Produto.bCalcIcms;
        ZqProduto.ParamByName('percbaseicmscalcsubs').AsFloat := Produto.bCalcIcmsSubs;
        ZqProduto.ParamByName('aliquotaipi').AsFloat          := Produto.aliquotaipi;
        ZqProduto.ParamByName('descricaofiscal').AsString     := Produto.descricaoFiscal;
        ZqProduto.ParamByName('codigobarras').AsString        := Produto.codigoBarra;
        ZqProduto.ParamByName('statusid').AsInteger           := 29;
        ZqProduto.ParamByName('vendadiferenciada').AsString   := Produto.sVendaDiferenciada;
        ZqProduto.ParamByName('constantecalculo').AsString    := Produto.sConstanteCalculo;
        ZqProduto.ParamByName('referencia').AsString          := Produto.sReferencia;
        ZqProduto.ParamByName('ippt').AsString                := Produto.sIPPT;
        ZqProduto.ParamByName('cst').AsString                 := Produto.CST;
        ZqProduto.ParamByName('iat').AsString                 := 'A';
        ZqProduto.ParamByName('ncmsh').AsString               := Produto.NCM;
        ZqProduto.ParamByName('balanca').AsString             := Produto.sBalanca;
        ZqProduto.ParamByName('marcaid').AsInteger            := Produto.Marca.codigo;
        ZqProduto.ParamByName('piscofinsid').AsInteger        := 2;
        ZqProduto.ParamByName('margemlucro').AsFloat          := 0;
        ZqProduto.ParamByName('margemlucrominima').AsFloat    := 0;
        ZqProduto.ParamByName('qtdeembalagem').AsFloat        := 0;
        ZqProduto.ParamByName('qtdeconversao').AsFloat        := 0;
        ZqProduto.ParamByName('precoconversao').AsFloat       := 0;
        ZqProduto.ParamByName('tipomercadoriaid').AsInteger   := 1;
        ZqProduto.ParamByName('diavalidade').AsInteger        := 0;
        ZqProduto.ParamByName('mvasaida').AsFloat             := 0;
        ZqProduto.ParamByName('deducaoicmssaida').AsFloat     := 0;
        ZqProduto.ParamByName('tipoimobilizado').AsInteger    := 0;
        ZqProduto.ParamByName('produtoidprincipal').AsInteger := 0;
        ZqProduto.ParamByName('planocontasid').AsInteger      := 0;
        ZqProduto.ParamByName('centrocustoid').AsInteger      := 0;
        ZqProduto.ParamByName('finalidade').AsInteger         := 0;
        ZqProduto.ParamByName('vidautil').AsInteger           := 0;
        ZqProduto.ParamByName('valorprazo').AsFloat           := 0;
        ZqProduto.ParamByName('barraimport').AsString         := sCodigoBarras;
        ZqProduto.ExecSQL;

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := 'select last_value from produto_id_seq ';
        ZqProduto.Open;

        iCodigo := ZqProduto.FieldByName('last_value').asInteger;

        sSQL :=
        'insert into produtofornecedor(produtoid, fornecedorid) values('''+
        IntToStr(iCodigo)+''', '''+IntToStr(Produto.Fornecedor.Codigo)+''' )';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ExecSQL;

        {Cria Centro Estocador Fisico}
        sSQL :=
        'INSERT INTO centroestocador (centroestocadorid, isproduto, produtoid, quantidade, lojaid)'+
        'VALUES (:centroestocadorid, :isproduto, :produtoid, :quantidade, :lojaid)                ';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ParamByName('centroestocadorid').AsInteger := 2;
        ZqProduto.ParamByName('isproduto').AsBoolean := true;
        ZqProduto.ParamByName('produtoid').AsInteger := iCodigo;
        ZqProduto.ParamByName('quantidade').AsFloat  := Produto.Qtde;
        ZqProduto.ParamByName('lojaid').AsInteger    := 0;
        ZqProduto.ExecSQL;

        sSQL :=
        'insert into lojaproduto(lojaid, produtoid, valor, vlcadastro)values(''1'', '''+
        IntToStr(iCodigo)+''', '''+
        Validar.VirgulaPonto(CurrToStr(Produto.valor))+''', ''1'' )';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ExecSQL;

        sSQL :=
        'insert into lojaproduto(lojaid, produtoid, valor, vlcadastro)values(''0'', '''+
        IntToStr(iCodigo)+''', '''+
        Validar.VirgulaPonto(CurrToStr(Produto.valor))+''', ''1'' )';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ExecSQL;

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text :=
        'select tabelaimpostos.id from tabelaimpostos join cst on cst.id = cstid '+
        'where cst.codigo = '''+Produto.CST+''' '+
        'and aliquotaicms = '''+Validar.VirgulaPonto(FloatToStr(Produto.AliquotaIcms))+''' and piscofinsid = 1 ';
        ZqProduto.Open;

        Produto.ifiscal := 4;
        if not ZqProduto.IsEmpty then
           Produto.ifiscal := ZqProduto.FieldByName('id').AsInteger;

        sSQL :=
        'insert into impostosproduto(pessoaemitente, tabelaimpostosid, produtoid, data) '+
        'values(''1428'', '''+IntToStr(Produto.ifiscal)+''', '''+IntToStr(iCodigo)+''', current_timestamp); ';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ExecSQL;

        {Cria Centro Estocador Fisico}
        sSQL :=
        'INSERT INTO centroestocador_fisico (centroestocadorid, isproduto, produtoid, quantidade, lojaid)'+
        'VALUES (:centroestocadorid, :isproduto, :produtoid, :quantidade, :lojaid)';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ParamByName('centroestocadorid').AsInteger := 2;
        ZqProduto.ParamByName('isproduto').AsBoolean         := true;
        ZqProduto.ParamByName('produtoid').AsInteger         := iCodigo;
        ZqProduto.ParamByName('quantidade').AsFloat          := Produto.estoqueminimo;
        ZqProduto.ParamByName('lojaid').AsInteger            := 1;
        ZqProduto.ExecSQL;

        {Preço Auxiliar}
        sSQL :=
        'insert into produtoprecoauxiliar(produtoid, descricao, preco, qtdesaida) '+
        'values (:produtoid, :descricao, :preco, :qtdesaida); ';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ParamByName('produtoid').AsInteger := iCodigo;
        ZqProduto.ParamByName('descricao').AsString  := Produto.descricaoAUX;
        ZqProduto.ParamByName('qtdesaida').AsFloat   := Produto.QtdeAUX;
        ZqProduto.ParamByName('preco').AsFloat       := Produto.valorAUX;
        ZqProduto.ExecSQL;
      end
      else
      begin
        {Cria Centro Estocador Fisico}
        sSQL := 'update centroestocador_fisico set quantidade =:quantidade where produtoid =:produtoid ';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ParamByName('produtoid').AsInteger := iCodigo;
        ZqProduto.ParamByName('quantidade').AsFloat  := Produto.estoqueminimo;
        ZqProduto.ExecSQL;
      end;

      {
      sSQL :=
      'insert into produto (codigo, lote, descricao, tipoprodutoid, unidadesaidaid, unidadeid,             '+
      'garantia, subsecaoid, valor, aliquotaicms, valorcompra, estoqueminimo, estoquemaximo,               '+
      'descontomaximo,percentbasecalcicms,percbaseicmscalcsubs,aliquotaipi, descricaofiscal,               '+
      'codigobarras, statusid, vendadiferenciada, constantecalculo, referencia, ippt, cst, ncmsh, balanca, '+
      'marcaid, piscofinsid, barraimport, garantiainicio, garantiafim, regracomissaoid, iat,qtdeembalagem, '+
      'tipomercadoriaid,mvasaida,diavalidade, margemlucro,margemlucrominima,qtdeconversao, precoconversao, '+
      'deducaoicmssaida)                                                                                 '+

      'values (:codigo, :lote, :descricao, :tipoprodutoid, :unidadesaidaid, :unidadeid,                    '+
      ':garantia, :subsecaoid, :valor, :aliquotaicms, :valorcompra, :estoqueminimo, :estoquemaximo,        '+
      ':descontomaximo, :percentbasecalcicms, :percbaseicmscalcsubs,:aliquotaipi, :descricaofiscal,        '+
      ':codigobarras, :statusid, :vendadiferenciada, :constantecalculo, :referencia, :ippt, :cst, :ncmsh, :balanca, '+
      ':marcaid, :piscofinsid, :barraimport, :garantiainicio,:garantiafim,:regracomissaoid,:iat,:qtdeembalagem,     '+
      ':tipomercadoriaid,:mvasaida,:diavalidade, :margemlucro,:margemlucrominima,:qtdeconversao, :precoconversao,   '+
      ':deducaoicmssaida ) ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('codigo').AsString              := Produto.cod;
      ZqProduto.ParamByName('lote').AsString                := Produto.lote;
      ZqProduto.ParamByName('descricao').AsString           := Produto.Descricao;
      ZqProduto.ParamByName('tipoprodutoid').AsString       := Produto.TipoProduto.codigo;
      ZqProduto.ParamByName('unidadesaidaid').AsString      := '2';
      ZqProduto.ParamByName('unidadeid').AsString           := '2';
      ZqProduto.ParamByName('garantia').AsString            := Produto.garantia;
      ZqProduto.ParamByName('subsecaoid').AsInteger         := Produto.subsecao.codigo;
      ZqProduto.ParamByName('valor').AsFloat                := Produto.valor;
      ZqProduto.ParamByName('aliquotaicms').AsFloat         := Produto.aliquotaicms;
      ZqProduto.ParamByName('valorcompra').AsFloat          := Produto.valorCompra;
      ZqProduto.ParamByName('estoqueminimo').AsFloat        := Produto.estoqueminimo;
      ZqProduto.ParamByName('estoquemaximo').AsFloat        := Produto.estoquemaximo;
      ZqProduto.ParamByName('descontomaximo').AsFloat       := Produto.descontoMaximo;
      ZqProduto.ParamByName('percentbasecalcicms').AsFloat  := Produto.bCalcIcms;
      ZqProduto.ParamByName('percbaseicmscalcsubs').AsFloat := Produto.bCalcIcmsSubs;
      ZqProduto.ParamByName('aliquotaipi').AsFloat          := Produto.aliquotaipi;
      ZqProduto.ParamByName('descricaofiscal').AsString     := Produto.descricaoFiscal;
      ZqProduto.ParamByName('codigobarras').AsString        := Produto.codigoBarra;
      ZqProduto.ParamByName('statusid').AsInteger           := 29;
      ZqProduto.ParamByName('vendadiferenciada').AsString   := Produto.sVendaDiferenciada;
      ZqProduto.ParamByName('constantecalculo').AsString    := Produto.sConstanteCalculo;
      ZqProduto.ParamByName('referencia').AsString          := Produto.sReferencia;
      ZqProduto.ParamByName('ippt').AsString                := Produto.sIPPT;
      ZqProduto.ParamByName('cst').AsString                 := Produto.CST;
      ZqProduto.ParamByName('ncmsh').AsString               := Produto.NCM;
      ZqProduto.ParamByName('balanca').AsString             := Produto.sBalanca;
      ZqProduto.ParamByName('marcaid').AsInteger            := Produto.Marca.codigo;
      ZqProduto.ParamByName('piscofinsid').AsInteger        := Produto.PisCofins;
      ZqProduto.ParamByName('barraimport').AsString         := sCodigoBarras;
      ZqProduto.ParamByName('garantiainicio').AsDate        := StrToDate('01/01/0001');
      ZqProduto.ParamByName('garantiafim').AsDate           := StrToDate('01/01/0001');
      ZqProduto.ParamByName('regracomissaoid').AsInteger    := 0;
      ZqProduto.ParamByName('iat').AsString                 := 'A';
      ZqProduto.ParamByName('qtdeembalagem').AsFloat        := 1;
      ZqProduto.ParamByName('tipomercadoriaid').AsInteger   := Produto.TipoMercadoria.codigo;
      ZqProduto.ParamByName('mvasaida').AsFloat             := Produto.MvaSaida;
      ZqProduto.ParamByName('diavalidade').AsInteger        := Produto.DiaValidade;
      ZqProduto.ParamByName('margemlucro').AsFloat          := Produto.MargemLucro;
      ZqProduto.ParamByName('margemlucrominima').AsFloat    := Produto.MargemMinLucro;
      ZqProduto.ParamByName('qtdeconversao').AsFloat        := Produto.QtdeConversao;
      ZqProduto.ParamByName('precoconversao').AsFloat       := Produto.PrecoConversao;
      ZqProduto.ParamByName('deducaoicmssaida').AsFloat     := Produto.DeducaoICMSSaida;

      ZqProduto.ExecSQL;

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := 'select last_value from produto_id_seq ';
      ZqProduto.Open;

      iCodigo := ZqProduto.FieldByName('last_value').asInteger;

      for iIndex := 0 to Produto.aFornecedor.Count - 1 do
      begin
        sSQL :=
        'insert into produtofornecedor (produtoid, fornecedorid) '+
        'values('''+IntToStr(iCodigo)+''', '''+IntToStr((TObject(Produto.aFornecedor[iIndex]) as TDados).Codigo)+''') ';

        ZqProduto.Close;
        ZqProduto.SQL.Clear;
        ZqProduto.SQL.Text := sSQL;
        ZqProduto.ExecSQL;
      end;

      {Cria Centro Estocador Fisico
      sSQL :=
      'INSERT INTO centroestocador (centroestocadorid, isproduto, produtoid, quantidade, lojaid)'+
      'VALUES (:centroestocadorid, :isproduto, :produtoid, :quantidade, :lojaid)                ';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('centroestocadorid').AsInteger := 2;
      ZqProduto.ParamByName('isproduto').AsBoolean := true;
      ZqProduto.ParamByName('produtoid').AsInteger := iCodigo;
      ZqProduto.ParamByName('quantidade').AsFloat  := Produto.Qtde;
      ZqProduto.ParamByName('lojaid').AsInteger    := 0;
      ZqProduto.ExecSQL;

      {Cria Centro Estocador Fisico
      sSQL :=
      'INSERT INTO centroestocador_fisico (centroestocadorid, isproduto, produtoid, quantidade, lojaid)'+
      'VALUES (:centroestocadorid, :isproduto, :produtoid, :quantidade, :lojaid)';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ParamByName('centroestocadorid').AsInteger := 2;
      ZqProduto.ParamByName('isproduto').AsBoolean         := true;
      ZqProduto.ParamByName('produtoid').AsInteger         := iCodigo;
      ZqProduto.ParamByName('quantidade').AsFloat          := Produto.estoqueminimo;
      ZqProduto.ParamByName('lojaid').AsInteger            := 1;
      ZqProduto.ExecSQL;

      sSQL :=
      'insert into lojaproduto(lojaid, produtoid, valor, vlcadastro)values(''1'', '''+IntToStr(iCodigo)+''', '''+
      Validar.VirgulaPonto(CurrToStr(Produto.valor))+''', ''1'' )';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;

      sSQL :=
      'insert into lojaproduto(lojaid, produtoid, valor, vlcadastro)values(''0'', '''+IntToStr(iCodigo)+''', '''+
      Validar.VirgulaPonto(CurrToStr(Produto.valor))+''', ''1'' )';

      ZqProduto.Close;
      ZqProduto.SQL.Clear;
      ZqProduto.SQL.Text := sSQL;
      ZqProduto.ExecSQL;

      result := 0;
      }
    except
      on E: Exception do
      begin
        raise Exception.Create('Ocorreu o seguinte erro ao tentar salvar o produto: '+E.Message);
      end;
    end;
  finally

  end;

end;

function TProdutoDAO.pessoaExiste(CodigoImportcao: string): boolean;
var
  sSQL: string;
  Zget: TZQuery;
  bExiste: boolean;
begin
  try
    Zget            := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from dados where dados.codigoimportacao='''+CodigoImportcao+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    bExiste := false;
    if not Zget.IsEmpty then
       if not Zget.FieldByName('id').IsNull then
          bExiste := true;

    result := bExiste;
  finally
    Zget.Close;
    Zget.Free;
  end;
end;

function TProdutoDAO.pessoaExisteNome(Nome: string): boolean;
var
  sSQL: string;
  Zget: TZQuery;
  bExiste: boolean;
begin
  try
    Zget            := TZQuery.Create(ZQuery);
    Zget.Connection := frmPrincipal.ZConnection;

    sSQL := 'select id from vw_pessoas where nome = '''+Trim(Nome)+''' ';

    Zget.Close;
    Zget.SQL.Clear;
    Zget.SQL.Text := sSQL;
    Zget.Open;

    bExiste := false;
    if not Zget.IsEmpty then
       if not Zget.FieldByName('id').IsNull then
          bExiste := true;

    result := bExiste;
  finally
    Zget.Close;
    Zget.Free;
  end;
end;

function TProdutoDAO.setEditarCodigo_ECO_LAR(sCodigo,
  sCodigoBarra: string): boolean;
var
  sSQL, sSQL1, sSQL2, sSQL3, sSQL4, sBarras, sCod: string;
  iIndex, iCodigo: integer;
  ZqProduto: TZQuery;
  produtoExiste: boolean;
begin
   try
     ZqProduto            := TZQuery.Create(ZQuery);
     ZqProduto.Connection := frmPrincipal.ZConnection;
     Validar              := TValidar.Create;

     sBarras := Validar.gerarDigitoZero(sCodigoBarra, 14);
     sCod    := Validar.gerarDigitoZero(sCodigo, 7);

     sSQL  := 'select codigobarras from produto where codigo = '''+sCod+''' ';

     sSQL1 := 'select id from produto where codigobarras = '''+sBarras+''' ';
     sSQL2 := 'select produtoid from produtovinculovenda where codigobarras = '''+sBarras+''' ';
     sSQL3 := 'update produto set codigobarras = '''+sBarras+''' where codigo = '''+sCod+''' ';
     sSQL4 :=
     'insert into produtovinculovenda(produtoid, codigobarras)VALUES          '+
     '((select id from produto where codigo = '''+sCod+'''), '''+sBarras+''') ';

     ZqProduto.SQL.Text := sSQL;
     ZqProduto.Open;

     if ZqProduto.FieldByName('codigobarras').AsString = '' then
     begin
       ZqProduto.Close;
       ZqProduto.SQL.Clear;
       ZqProduto.SQL.Text := sSQL3;
       ZqProduto.ExecSQL;
     end
     else
     begin
       ZqProduto.Close;
       ZqProduto.SQL.Clear;
       ZqProduto.SQL.Text := sSQL2;
       ZqProduto.Open;

       if ZqProduto.IsEmpty then
       begin
         ZqProduto.Close;
         ZqProduto.SQL.Clear;
         ZqProduto.SQL.Text := sSQL1;
         ZqProduto.Open;

         if ZqProduto.IsEmpty then
         begin
           ZqProduto.Close;
           ZqProduto.SQL.Clear;
           ZqProduto.SQL.Text := sSQL4;
           ZqProduto.ExecSQL;
         end;
       end;
     end;

   finally
     ZqProduto.Close;
     ZqProduto.Free;
   end;
end;

{

procedure TProdutoDAO.incluirProdutoConstante(Produto: TProduto; eConstante: extended);
var
  sSQL: string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Validar   := TValidar.Create;

    Conexao.Conectar;
    try
      NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;

      sSQL := 'insert into produtoconstatecalculo (produtoid, constante)'+
              ' values('''+produto.codigo.ToString+''', '''+Validar.VirgulaPonto(Convert.ToString(eConstante))+''')';

      NpgsqlCmd.CommandText := sSQL;
      NpgsqlCmd.Connection := Conexao.NpgsqlCon;

      //Executa query
      NpgsqlCmd.ExecuteNonQuery;
      NpgsqlTrans.Commit;
    except
      NpgsqlTrans.Rollback;
    end;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

procedure TProdutoDAO.incluirProdutoFornecedor(produto: TProduto);
var
  sql: String;
begin
  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    validar := TValidar.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;
    NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;

    //Monta a query
    sql := 'insert into produtofornecedor(produtoid,fornecedorid)'+
           ' values('+produto.codigo.ToString+', '+produto.fornecedor.codigo.ToString+')';

    NpgsqlCmd.CommandText := sql;
    NpgsqlCmd.Connection := Conexao.NpgsqlCon;

    //Executa query
    NpgsqlCmd.ExecuteNonQuery;
    NpgsqlTrans.Commit;
    //Fecha Transação do insert requisicao
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.listaTipoProduto: DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
begin
  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    NpgsqlCmd.CommandText := 'select t.id, t.descricao'+
                             ' from tipoproduto t';

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.listaFornecedor(sNome: string): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
  sSQL: string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    Conexao.Conectar;

    NpgsqlCmd.CommandText := 'select vw_fornecedor.id, vw_fornecedor.nome from            '+
                             'vw_fornecedor where vw_fornecedor.nome Ilike '''+sNome+'%'' '+
                             'order by vw_fornecedor.nome ';

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.listaLaje(sNumeroPedido: string): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    Conexao.Conectar;

    sSQL := 'select (''PRODUTO''||'' - ''||produto.descricao||'' - ''||Trim(to_char(laje.dimensao,''999999.99''))||'' m² ''||'' - ''|| '+
            'laje.qtdeblocos||'' Blocos'') as produto, to_char(laje.valor, ''R$ 999999D99'') as valor,                       '+
            '(Trim(to_char(dimensaolaje.viga,''999999.99''))||'' m'') as viga,           '+
            '(Trim(to_char(dimensaolaje.vao,''999999.99''))||'' m'') as vao,             '+
            '(Trim(to_char(dimensaolaje.dimensao, ''999999.99''))||'' m²'') as dimensao, '+
            'laje.constante,                                                             '+
            'dimensaolaje.fator,                                                         '+
            '(dimensaolaje.qtdevigas||'' Vigas de ''||                                   '+
            'Trim(to_char(dimensaolaje.viga,''999999.99''))||'' m'') as qtdeviga         '+
            'from laje                                                                   '+
            'join dimensaolaje on dimensaolaje.lajeid = laje.id                          '+
            'join produto on produto.id = laje.produtoid                                 '+
            'where laje.numeropedido = '''+sNumeroPedido+'''                             '+
            'order by produto.descricao                                                  ';

    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.listaProduto: DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    sSQL := 'select produto.id, produto.descricao     '+
            'from produto where produto.statusid = 29 '+
            'order by produto.descricao               ';

    Conexao.Conectar;
    NpgsqlCmd.CommandText := sSQL;
    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.listaProdutoConstate: DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds     : DataSet;
  sSQL   : string;
begin
  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    sSQL := 'select produto.id, produto.descricao                 '+
            'from produto where produto.vendadiferenciada = ''1'' '+
            'and produto.constantecalculo = ''1'' '+
            'order by produto.descricao           ';

    //Monta a query
    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;

end;

function TProdutoDAO.listarConstantes(Produto: TProduto; sOrderBy: string): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
  sSQL: string;
begin
  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    sSQL := 'select produtoconstatecalculo.id, produtoconstatecalculo.produtoid, produto.codigo, '+
            'produto.descricao as produto, produtoconstatecalculo.constante '+
            'from produtoconstatecalculo join produto                       '+
            'on produto.id = produtoconstatecalculo.produtoid               ';

    if Produto.codigo > 0 then
       sSQL := sSQL + 'where produtoconstatecalculo.produtoid = '''+Produto.codigo.ToString+''' ';

    sSQL := sSQL + 'order by '+sOrderBy;

    //Monta a query
    NpgsqlCmd.CommandText := sSQL;

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;

end;

function TProdutoDAO.listaSubSecao: DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
begin
  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    NpgsqlCmd.CommandText := 'select ss.id, ss.descricao'+
                             ' from subsecao ss';

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.listaUnidade: DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
begin
  try
    //Abre conexao com o banco de dados
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    //Abre conexao com o banco de dados
    Conexao.Conectar;

    //Monta a query
    NpgsqlCmd.CommandText := 'select u.id, u.descricao'+
                             ' from unidade u';

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.numeroProduto: String;
var
  Leitor: NPgSqlDataReader;
  id : string;
begin
  try
    Conexao     := TConexao.Create;
    NpgsqlCmd   := NpgsqlCommand.Create;
    validar     := TValidar.Create;

    Conexao.Conectar;

    NpgsqlCmd.CommandText := 'select max(id) as id from produto';

    NpgsqlCmd.Connection := Conexao.NpgsqlCon;
    Leitor               := NpgsqlCmd.ExecuteReader;

    id := '0';
    if Leitor.Read then
       if not Convert.IsDBNull(Leitor['id']) then
          id := Convert.ToString(Leitor['id']);

    result := id;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.preencheGridFornecedor(produto: TProduto;
  orderby: String): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    Conexao.Conectar;

    NpgsqlCmd.CommandText := 'select pf.id, vwf.nome as descricao, vwf.cnpjcpf as codigofabricante from produtofornecedor pf '+
                             'join vw_fornecedor vwf on (vwf.id = pf.fornecedorid)          '+
                             'where pf.produtoid = '''+produto.codigo.ToString+'''          ';

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

function TProdutoDAO.preencheGridPesquisa(produto: TProduto;
  orderby: String): DataSet;
var
  Adapter: NpgsqlDataAdapter;
  Ds: DataSet;
  ordenar, sql, joinfornecedor, wherefornecedor: String;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Adapter   := NpgsqlDataAdapter.Create;
    Ds        := DataSet.Create;

    Conexao.Conectar;

    ordenar := 'produto.id';

    if orderby = '' then
       orderby := ordenar;

    if produto.fornecedor.dados.dadosPessoaJuridica.razaoSocial <> '' then
    begin
      joinfornecedor  := ' join produtofornecedor pf on pf.produtoid = produto.id '+
                         ' join vw_fornecedor f on f.id = pf.fornecedorid         ';

      wherefornecedor := ' and f.nome ilike '''+produto.fornecedor.dados.dadosPessoaJuridica.razaoSocial+'%'' ';
    end;

    sql := 'select produto.id, produto.codigo as cod, produto.percbaseicmscalcsubs,                         '+
           'produto.percentbasecalcicms, produto.lote as lote, produto.descricao,                           '+
           't.id as tipoproduto, t.descricao as tipoprodutod, u.id as unidade, u.descricao as unidaded,     '+
           'un.id as unidadesaidaid, un.descricao as unidadesaida,                                          '+
           'produto.garantia as garantia, ss.id as subsecao, ss.descricao as subsecaod,                     '+
           'produto.valor, produto.aliquotaicms, produto.aliquotaipi, produto.estoqueminimo,                '+
           'produto.estoquemaximo, produto.garantiainicio as garantiainicio,                                '+
           'produto.garantiafim as garantiafim,produto.acresextra1,produto.acresextra2,produto.acresextra3, '+
           'produto.acresreal1,produto.acresreal2,produto.acresreal3,produto.extra1,produto.extra2,         '+
           'produto.extra3,produto.extrareal1,produto.extrareal2,                                           '+
           'produto.extrareal3,produto.valorcompra, produto.comissaovalor,produto.comissaopercentual,       '+
           'produto.descontomaximo, produto.codigobarras, produto.descricaofiscal,                          '+
           'produto.statusid, statusgrupo.descricao as status, produto.vendadiferenciada,                   '+
           'produto.constantecalculo, produto.referencia, produto.ippt, produto.cst, produto.ncmsh          '+
           'from produto                                                                                    '+
           'join subsecao ss on ss.id = produto.subsecaoid                                                  '+
           'join statusgrupo on statusgrupo.id = produto.statusid                                           '+
           'join unidade u on u.id             = produto.unidadeid                                          '+
           'left join unidade un on un.id = produto.unidadesaidaid                                          '+
           'join tipoproduto t on t.id = produto.tipoprodutoid                                              '+
           ''+joinfornecedor+''+
           ' where produto.descricao Ilike '''+produto.descricao.ToString+'%''                              '+
           ''+wherefornecedor+''+
           ' and produto.codigobarras ILike ''%'+produto.codigoBarra.ToString+'%''                          ';

    NpgsqlCmd.CommandText := sql + 'order by '+orderby;

    NpgsqlCmd.Connection  := Conexao.NpgsqlCon;
    Adapter.SelectCommand := NpgsqlCmd;
    Adapter.Fill(Ds);

    result := Ds;
  finally
    //Fecha conexao com o banco de dados
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end;

procedure TProdutoDAO.salvarDimensoes(Laje: TLaje);
var
  sSQL: string;
  iIndice: integer;
begin
  try
    Conexao   := TConexao.Create;
    NpgsqlCmd := NpgsqlCommand.Create;
    Validar   := TValidar.Create;
    try
      Conexao.Conectar;
      NpgsqlCmd.Connection := Conexao.NpgsqlCon;
      NpgsqlTrans := Conexao.NpgsqlCon.BeginTransaction;

      sSQL := 'insert into laje (numeropedido, produtoid, constante, blocosconstante, qtdeblocos, dimensao, valor, numitem) '+
              'values ('''+Laje.sNumeroPedido+''', '''+
              Laje.Constante.Produto.codigo.ToString+''', '''+
              Validar.VirgulaPonto(Laje.Constante.dConstatnte.ToString)+''', '''+
              Validar.VirgulaPonto(Laje.dConstanteBloco.ToString)+''', '''+
              Validar.VirgulaPonto(Laje.dQtdeBloco.ToString)+''', '''+
              Validar.VirgulaPonto(Laje.dDimensao.ToString)+''', '''+
              Validar.VirgulaPonto(Laje.cValor.ToString)+''', '''+
              Laje.iNumItem.ToString+''' )';

      NpgsqlCmd.CommandText := sSQL;
      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlCmd.CommandText := 'select currval(''laje_id_seq'')';

      Laje.iCodigo := Convert.ToInt32(NpgsqlCmd.ExecuteScalar);

      if  Assigned(Laje.DimensaoLaje) then
          for iIndice := 0 to Laje.DimensaoLaje.Count - 1 do
          begin
            sSQL := 'insert into dimensaolaje (lajeid, viga, vao, dimensao, fator, qtdevigas) '+
                    'values ('''+Laje.iCodigo.ToString+''', '''+
                    Validar.VirgulaPonto((Laje.DimensaoLaje[iIndice] as TDimensaoLaje).dViga.ToString)+''', '''+
                    Validar.VirgulaPonto((Laje.DimensaoLaje[iIndice] as TDimensaoLaje).dVao.ToString)+''', '''+
                    Validar.VirgulaPonto((Laje.DimensaoLaje[iIndice] as TDimensaoLaje).dDimensao.ToString)+''', '''+
                    Validar.VirgulaPonto((Laje.DimensaoLaje[iIndice] as TDimensaoLaje).dFator.ToString)+''', '''+
                    Validar.VirgulaPonto((Laje.DimensaoLaje[iIndice] as TDimensaoLaje).dQtdeVigas.ToString)+''' )';

            NpgsqlCmd.CommandText := sSQL;
            NpgsqlCmd.ExecuteNonQuery;
          end;

       sSQL := 'update prevenda set qtde = '''+Validar.VirgulaPonto(Laje.dDimensao.ToString)+''' '+
               'where numeropedido = '''+Laje.sNumeroPedido+''' and '+
               'produtoid = '''+Laje.Constante.Produto.codigo.ToString+''' and '+
               'numitem   = '''+Laje.iNumItem.ToString+''' ';

      NpgsqlCmd.CommandText := sSQL;
      NpgsqlCmd.ExecuteNonQuery;

      NpgsqlTrans.Commit;
    except
      on E:Exception do
      begin
        NpgsqlTrans.Rollback;
        raise Exception.Create('Ocorreu o seguinte erro ao tentar salvar as dimensões: '+E.Message);
      end;
    end;
  finally
    Conexao.Desconectar;
    Conexao.Free;
    NpgsqlCmd.Free;
  end;
end; }

end.
