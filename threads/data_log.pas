unit data_log;

interface

uses
  SysUtils, Classes, DB, DBClient, Forms, Dialogs;

type
  TdmoLog = class(TDataModule)
    cdsLog1: TClientDataSet;
    dsrLog1: TDataSource;
    cdsLog2: TClientDataSet;
    dsrLog2: TDataSource;
    cdsLog1LOG_TIPO: TStringField;
    cdsLog1LOG_USUARIO: TStringField;
    cdsLog1LOG_MAQUINA: TStringField;
    cdsLog1LOG_DATAREMOTO: TSQLTimeStampField;
    cdsLog1LOG_DATASERVIDOR: TSQLTimeStampField;
    cdsLog2LOG_CAMPO: TStringField;
    cdsLog2LOG_VALORANTIGO: TStringField;
    cdsLog2LOG_VALORNOVO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsLog1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    log1SQL,
    log2SQL,
    tempSQL2: string;
  public
    { Public declarations }
    function OpenLog(nome: string; cds: TClientDataSet): boolean;
  end;

var
  dmoLog: TdmoLog;

implementation

uses principal;

{$R *.dfm}

function fmtDate(s: string): string;
var
  i: integer;
begin
  { trato a barra }
  i := pos('/', s);
  while i > 0 do
   begin
     s[i] := '.';
     i := pos('/', s);
   end;
  { trato o hífen }
  i := pos('-', s);
  while i > 0 do
   begin
     s[i] := '.';
     i := pos('-', s);
   end;
  Result := s;
end;

function TdmoLog.OpenLog(nome: string; cds: TClientDataSet): boolean;
var
  command1,
  command2,
  chaves: string;
  i: integer;
begin

  formPrincipal.MsgError('O log detalhado de alterações não está disponível.', 'Log');
  exit;

  try

    //formPrincipal.ShowMsg(formPrincipal, 'Carregando Log...');

    cdsLog1.Tag := 0;

    if cdsLog1.Active then
      cdsLog1.Close;

    { adiciono as tabelas }
    command1 := Format(log1SQL + ' %s_L1 ', [nome]);
    command2 := Format(log2SQL + ' %s_L2 ', [nome]);

    { chaves primárias }
    chaves := '';
    for i := 0 to cds.FieldCount - 1 do
     if cds.Fields[i].ProviderFlags >= [pfInKey] then
      begin
        if chaves > '' then
          chaves := chaves + ' AND ';
        chaves := chaves + cds.Fields[i].DisplayName + ' = ''' +
          cds.Fields[i].AsString + '''';
      end;

    { monto SQL LOG1 }
    command1 := command1 + ' WHERE ' + chaves +
      ' ORDER BY LOG_DATASERVIDOR DESC';
    cdsLog1.CommandText := command1;

    { monto SQL LOG2 }
    tempSQL2 := command2 + ' WHERE ' + chaves;

    { abro o LOG1 }
    cdsLog1.Open;
    cdsLog1.Tag := 1;

    formPrincipal.HideMsg;

//    ShowMessage(cdsLog1.CommandText);

    { primeira chamada }
    if not cdsLog1.IsEmpty then
     begin
       cdsLog1AfterScroll(cdsLog1 as TDataset);
       Result := true;
     end else Result := false;

  except
    on exception do
     begin
       formPrincipal.HideMsg;
       raise;
     end;
  end;
  
end;

procedure TdmoLog.DataModuleCreate(Sender: TObject);
begin
   log1SQL := cdsLog1.CommandText;
   log2SQL := cdsLog2.CommandText;
end;

procedure TdmoLog.cdsLog1AfterScroll(DataSet: TDataSet);
var
  command2: string;
begin

  try

    if (Dataset.Tag = 1) then
     begin

       formPrincipal.ShowMsg('Carregando Detalhes...');

       { monto restanto do SQL2 }
       command2 := tempSQL2 +
         ' AND LOG_TIPO = '''       + Dataset.fieldByName('LOG_TIPO').AsString       + '''' +
         ' AND LOG_USUARIO = '''    + Dataset.fieldByName('LOG_USUARIO').AsString    + '''' +
         ' AND LOG_MAQUINA = '''    + Dataset.fieldByName('LOG_MAQUINA').AsString    + '''' +
         ' AND LOG_DATAREMOTO = ''' + fmtDate(Dataset.fieldByName('LOG_DATAREMOTO').AsString) + '''';

       if cdsLog2.Active then
         cdsLog2.Close;
       cdsLog2.CommandText := command2;
       cdsLog2.Open;

       formPrincipal.HideMsg;

     end;

  except
    on exception do
      formPrincipal.HideMsg;
  end;

end;

end.
