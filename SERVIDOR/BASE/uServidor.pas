unit uServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, StdCtrls, DB, SqlExpr, DBXInterBase, DBXDevartInterBase,
  ExtCtrls;

type
  TformServidor = class(TForm)
    SQLConnection: TSQLConnection;
    lbNome: TLabel;
    SQLMonitor: TSQLMonitor;
    tmrClose: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure SQLConnectionAfterDisconnect(Sender: TObject);
    procedure tmrCloseTimer(Sender: TObject);
    procedure SQLConnectionAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formServidor: TformServidor;

implementation

{$R *.dfm}

procedure TformServidor.FormCreate(Sender: TObject);
var
  nome, extensao, base: string;
begin

  if SQLConnection.Connected then
    SQLConnection.Close;

//  { limpo os par�metros }
//  SQLConnection.Params.Clear;

  { nome do cliente }
  nome     := ExtractFileName(ParamStr(0));
  extensao := ExtractFileExt (ParamStr(0));
  delete(nome, pos(extensao, nome), length(extensao));
  nome := uppercase(nome);

//  { defino a conex�o }
//  SQLConnection.ConnectionName := nome;

  { mudo somente o nome da base }
  base := SQLConnection.Params.Values['DataBase'];
  base := StringReplace(base, 'BASE', nome, [rfReplaceAll, rfIgnoreCase]);
  SQLConnection.Params.Values['DataBase'] := base;

  { abro a conex�o }
//  SQLMonitor.Active := True;
  SQLConnection.Open;
  
end;


procedure TformServidor.SQLConnectionAfterConnect(Sender: TObject);
begin
  tmrClose.Enabled := false;
  tmrClose.Enabled := true;
end;

procedure TformServidor.SQLConnectionAfterDisconnect(Sender: TObject);
begin
  if SQLConnection.Connected then
    SQLConnection.Close;
end;

procedure TformServidor.tmrCloseTimer(Sender: TObject);
begin
  if SQLConnection.Connected then
    SQLConnection.Close;
  close;
end;

end.
