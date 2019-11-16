unit Data;

interface

uses
  Windows, SysUtils,Variants, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TData = class
  private
    { Private Declarations }
    ZQuery: TZQuery;
  public
    dia          : word;    //1-31
    diaAux       : word;    //1-31
    mes          : word;    //1-12
    mesAux       : word;    //1-12
    valMes       : boolean; // valida a inclementacão do mes
    valAno       : boolean; // valida a inclementacão do ano
    valDia       : boolean; // valida a inclementacão do dia
    ano          : word;    // qualquer ano
    anoAux       : word;    // qualquer ano
    vencimentos  : TDateTime;
    contParcelas : integer; //Indice que difere as parcelas com dia de vencimento diferente
    constructor Create;
    function verificaDia(dd : integer) : integer;
    procedure validaData(data : TDateTime);
    procedure ajustaDataHora(data: TDateTime);
    function gerarVencimentos(data : TDateTime; no_totalParcelas : integer; parcela : integer;
    diaVencimento: integer) : TDateTime;
    {Pegar data do servidor}
    function DateServer : TDateTime;
    function MesCorrente: string;
    function DataExtenso(Data: TDateTime): string;
    function Horas(Hora: TDateTime): integer;
    function UltimoDiaMes(wMes, wAno : word) : word;
    function Idade(Nascimento: TDateTime): string;
    function RemoveAcentos(Str:string): string;
    function difHora(sInicio, sFim: string): string;
  end;

implementation

uses
  TituloDao, DateUtils;
var Titulo : TTituloDao;

procedure TData.ajustaDataHora(Data: TDateTime);
var
  SystemTime: TSystemTime;
  wAno, wMes, wDia, wHora, wMinuto, wSegundo, wMilSegundo: word;
begin
  DecodeDateTime(Data, wAno, wMes, wDia, wHora, wMinuto, wSegundo, wMilSegundo);
  with SystemTime do
  begin
    {Definindo o dia do sistema}
    wYear   := wAno; //Ano
    wMonth  := wMes; //Mês
    wDay    := wDia; //Dia

    {Definindo a hora do sistema}
    wHour   := wHora;     //hora
    wMinute := wMinuto;   //minutos
    wSecond := wSegundo;  //segundos
  end;
  {Colocar a hora e  data do sistema}
  SetLocalTime(SystemTime);
end;

constructor TData.Create;
begin
  inherited Create;
  // TODO: Add any constructor code here
end;

function TData.DataExtenso(Data: TDateTime): string;
var
  iNoDia           : integer;
  Now              : TdateTime;
  aDiaDaSemana     : array [1..7] of string;
  aMeses           : array [1..12] of string;
  wDia, wMes, wAno : word;
begin
  { Dias da Semana }
  aDiaDasemana[1] := 'Domingo';
  aDiaDasemana[2] := 'Segunda-feira';
  aDiaDasemana[3] := 'Terça-feira';
  aDiaDasemana[4] := 'Quarta-feira';
  aDiaDasemana[5] := 'Quinta-feira';
  aDiaDasemana[6] := 'Sexta-feira';
  aDiaDasemana[7] := 'Sábado';
  { Meses do ano }
  aMeses[1]  := 'Janeiro';
  aMeses[2]  := 'Fevereiro';
  aMeses[3]  := 'Março';
  aMeses[4]  := 'Abril';
  aMeses[5]  := 'Maio';
  aMeses[6]  := 'Junho';
  aMeses[7]  := 'Julho';
  aMeses[8]  := 'Agosto';
  aMeses[9]  := 'Setembro';
  aMeses[10] := 'Outubro';
  aMeses[11] := 'Novembro';
  aMeses[12] := 'Dezembro';

  DecodeDate(Data, wAno, wMes, wDia);

  iNoDia := DayOfWeek(Data);
  Result := aDiaDaSemana[iNoDia]+', '+inttostr(wDia)+' de '+aMeses[wMes]+' de ' +inttostr(wAno);
end;

function TData.DateServer: TDateTime;
var
 ZgetData: TZQuery;
 sSQL    : string;
begin
  try
    ZgetData := TZQuery.Create(ZQuery);
    //ZgetData.Connection := dmPrincipal.ZConnection;

    sSQL := 'select distinct CURRENT_TIMESTAMP as datahora from modalidadepagamento';

    ZgetData.SQL.Text := sSQL;
    ZgetData.Open;

    Result := ZgetData.FieldByName('datahora').AsDateTime;
  finally
    ZgetData.Free;
  end;
end;

function TData.difHora(sInicio, sFim: string): string;
var
  FIni, FFim: TDateTime;
begin
  Fini := StrTotime(sInicio);
  FFim := StrToTime(sFim);

  if (sInicio > sFim) then
     result := TimeToStr(Fini-FFim);

  if (sInicio < sFim) then
     result := TimeToStr(FFim-Fini);

  if (sInicio = sFim) then
     result := '00:00:00';
end;

function TData.gerarVencimentos(data: TDateTime; no_totalParcelas : integer; parcela : integer;
diaVencimento : integer) : TDateTime;
var
  dd,mm,aa : word;
  no_parcela : integer;
  t : variant;
  TituloDao : TTituloDao;
begin
  TituloDao := TTituloDao.Create;
  DecodeDate(titulodao.DateServer,aa,mm,dd);
  validaData(data);
  
  //Gerando e validando os meses
  if valMes = true then
  begin
    mesAux := mesAux + 1;
    mes := mesAux;
  end;
  if mes = mm then
  begin
    mesAux := mm;
    valMes := true;
  end
  else
  begin
    mesAux := mes;
    valMes := true;
  end;

  if mes <> mm then
    //raise Exception.Create('Mês informado é inferior à data atual.')
  else
    mes := mm;

   //Gerando e validando o dia do vencimento

    if ((diaVencimento <> dd) and (diaVencimento <> dia) and (contParcelas = 1)) then //Verifica o dia de vencimentos apos a 1ª parcela
    begin
      diaAux := diaVencimento;
      valDia := true;
    end
    else
      diaAux := dia;

  //Gerando as parcelas
  mes := mesAux;

     if valAno = false then
       anoAux := anoAux;

    if mes > 12 then //Condicao que atualiza a virada de ano
    begin
      mes := 1;
      mesAux := mes;
      ano := anoAux + 1;
      //anoAux := ano;
      valAno := true;
    end;

    if ((valAno = false) and (contParcelas >= 1)) then //Verifica se ainda não virou o ano e qual parcela se refere
      anoAux := anoAux
    else
      anoAux := ano;
    if (valAno = true) then // Verifica se já virou o ano
    begin
      ano := anoAux;
      valAno := false;
      anoAux := ano;
    end;

    if ((contParcelas > 1) and (valDia = true)) then
      diaAux := diaVencimento;

    ano := anoAux;
    dia := diaAux;
    vencimentos := EncodeDate(ano,mes,dia);
    contParcelas := contParcelas + 1;
  Result := vencimentos;
end;

function TData.Horas(Hora: TDateTime): integer;
var
  wHour, wMinute, wSec, wSec100: word;
begin
  DecodeTime(Hora, wHour, wMinute, wSec, wSec100);
  Result := wHour;
end;

function TData.Idade(Nascimento: TDateTime): string;
type
  DataCorrente = Record
  wAno: word;
  wMes: word;
  wDia: word;
end;
const
  sQdm: string = '312831303130313130313031'; {Qtde dia no mes}
var
  Dth : DataCorrente; {Data de hoje}
  Dtn : DataCorrente; {Data de nascimento}
  anos, meses : Shortint; {Usadas para calculo da idade - dias, nrd}
  wDia: word;
  iNrd: integer;
begin
  DecodeDate(DateServer, Dth.wAno, Dth.wMes, Dth.wDia);
  DecodeDate(Nascimento, Dtn.wAno, Dtn.wMes, Dtn.wDia);
  anos  := Dth.wAno - Dtn.wAno;
  meses := Dth.wMes - Dtn.wMes;

  if meses < 0 then
  begin
    Dec(anos);
    meses := meses + 12;
  end;

  wDia := Dth.wDia - Dtn.wDia;
  if wDia < 0 then
  begin
    iNrd := StrToInt(Copy(sQdm, (Dth.wMes - 1) * 2 - 1, 2));
    if ((Dth.wMes - 1) = 2) and ((Dth.wAno Div 4) = 0) then
    begin
      Inc(iNrd);
    end;
    wDia  := wDia + iNrd;
    meses := meses - 1;
  end;

  result := IntToStr(anos)+' Anos '+IntToStr(meses)+' Meses e '+IntToStr(wDia)+' Dias';
end;

function TData.MesCorrente: String;
begin
  Result := FormatDateTime('MM', DateServer);
end;

function TData.RemoveAcentos(Str: string): string;
const
  sComAcento = 'áàâãäéèêëíìîïóòôõöúùûüçÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ';
  sSemAcento = 'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC';
var
  x: Integer;
begin
  for x := 1 to Length(Str) do
  begin
    if Pos(Str[x], sComAcento) <> 0 then
       Str[x] := sSemAcento[Pos(Str[x], sComAcento)];
  end;

  result := Str;
end;

function TData.UltimoDiaMes(wMes, wAno: word): word;
const
  aUltimoDia: array[1..12] of byte = (31,28,31,30,31,30,31,31,30,31,30,31);
var
  wDia: word;
begin
  wDia := aUltimoDia[wMes];

  if wMes = 2 then
     if wAno mod 4 = 0 then
        wDia := 29;

  result := wDia;
end;

procedure TData.validaData(data: TDateTime);
var
  dd,mm,aa : word;
begin
  DecodeDate(data,aa,mm,dd);
  if ((mm>0) and (mm<=12)) then
    mes := mm;
  ano := aa;
  dia := dd;

end;

function TData.verificaDia(dd : integer): integer;
var
    diasDoMes : array[1..12] of integer;
    diaValidado : integer;
begin
  diasDoMes[1]  := 31;
  diasDoMes[2]  := 28;
  diasDoMes[3]  := 31;
  diasDoMes[4]  := 30;
  diasDoMes[5]  := 31;
  diasDoMes[6]  := 30;
  diasDoMes[7]  := 31;
  diasDoMes[8]  := 31;
  diasDoMes[9]  := 30;
  diasDoMes[10] := 31;
  diasDoMes[11] := 30;
  diasDoMes[12] := 31;

  if ((dd>0) and (dd<=diasDoMes[mes])) then        
    diaValidado := dd
  else
    diaValidado := 32;
  if (((mes=2) and (dd=29)) and (ano mod 400=0) or ((ano mod 4=0) and (ano mod 100 <> 0))) then
    diaValidado := dd
  else
  begin
    raise Exception.Create('Dia do mês inválido.');
    diaValidado := 32;
  end;

    Result := diaValidado;
end;

end.
