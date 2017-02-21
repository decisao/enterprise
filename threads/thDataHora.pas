unit thDataHora;

interface

uses
  Windows, Messages, SysUtils, Classes, data_datahora, principal, ActiveX;

type
  TOnGetDataHora = procedure(var datahora: TDateTime) of object;

  ThreadDataHora = class(TThread)
  private
    dmoDataHora: TdmoDataHora;
    outDataHora: TDateTime;
    FOnGetDataHora: TOnGetDataHora;
    procedure DisplayResults;
  protected
    procedure Execute; override;
    property OnGetDataHora: TOnGetDataHora read FOnGetDataHora
      write FOnGetDataHora;
  public
    constructor Create(proc: TOnGetDataHora);
    destructor Destroy; override;
  end;

implementation

constructor ThreadDataHora.Create(proc: TOnGetDataHora);
begin
  inherited Create(true);
  FreeOnTerminate := true;
  Priority := tpNormal;
  OnGetDataHora := proc;
  Resume;
end;

procedure ThreadDataHora.Execute;
begin
  CoInitialize(nil);
  dmoDataHora := TdmoDataHora.Create(nil);
  with dmoDataHora.cdsDataHora do
   begin
     if active then close;
     open;
     outDataHora := fieldByName('DATAHORA').AsDateTime;
     close;
   end;
  CS.Enter;
  Synchronize(DisplayResults);
  CS.Leave;
  CoUnInitialize;
end;

procedure ThreadDataHora.DisplayResults;
begin
  if Assigned(OnGetDataHora) then
    OnGetDataHora(outDataHora);
end;

destructor ThreadDataHora.Destroy;
begin
  dmoDataHora.Free;
  inherited destroy;
end;

end.
