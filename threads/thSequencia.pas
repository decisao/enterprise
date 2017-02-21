unit thSequencia;

interface

uses
  Windows, Messages, SysUtils, Classes, data_sequencia, principal, ActiveX;

type
  TOnGetSequence = procedure(var sequence: longint) of object;

  ThreadSequencia = class(TThread)
  private
    dmoSequencia: TdmoSequencia;
    inTabela: string;
    outSequencia: longint;
    inHost,
    inDBID: string;
    FOnGetSequence: TOnGetSequence;
    procedure DisplayResults;
  protected
    procedure Execute; override;
    property OnGetSequence: TOnGetSequence read FOnGetSequence
      write FOnGetSequence;
  public
    constructor Create(dbid, host, tabela: string; proc: TOnGetSequence);
    destructor Destroy; override;
  end;

implementation

constructor ThreadSequencia.Create(dbid, host, tabela: string; proc: TOnGetSequence);
begin
  inherited Create(true);
  FreeOnTerminate := true;
  Priority := tpLower;
  inTabela := tabela;
  inHost := host;
  inDBID := dbid;
  OnGetSequence := proc;
  outSequencia  := 0;
  Resume;
end;

procedure ThreadSequencia.Execute;
begin
  CoInitialize(nil);
  dmoSequencia := TdmoSequencia.Create(nil);
  dmoSequencia.SocketConnection.Host := inHost;
  dmoSequencia.SocketConnection.ServerName := inDBID + '.ServerModule';
  dmoSequencia.SocketConnection.Open;
  outSequencia :=
    dmoSequencia.SocketConnection.AppServer.GetID(inTabela);
  CS.Enter;
  Synchronize(DisplayResults);
  CS.Leave;
end;

procedure ThreadSequencia.DisplayResults;
begin
  if Assigned(OnGetSequence) then
    OnGetSequence(outSequencia);
end;

destructor ThreadSequencia.Destroy;
begin
  dmoSequencia.SocketConnection.Close;
  CoUnInitialize;
  dmoSequencia.Free;
  inherited destroy;
end;

end.
