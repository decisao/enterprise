unit data_sendlogs;

interface

uses
  SysUtils, Classes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, mxWebUpdate;

type
  TdmoSendLogs = class(TDataModule)
    IdHTTP: TIdHTTP;
    WebUpdate: TmxWebUpdate;
    procedure WebUpdateUpdateAvailable(Sender: TObject; ActualVersion,
      NewVersion: string; var CanUpdate: Boolean);
    procedure WebUpdateBeforeShowInfo(Sender: TObject; var ShowInfo,
      CheckForUpdate: Boolean);
    procedure WebUpdateCannotExecute(Sender: TObject);
    procedure WebUpdateDownloadError(Sender: TObject);
    procedure WebUpdateNoUpdateFound(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    willUpdate: boolean;
  end;

implementation

{$R *.dfm}

procedure TdmoSendLogs.DataModuleCreate(Sender: TObject);
begin
  willUpdate := False;
end;

procedure TdmoSendLogs.WebUpdateBeforeShowInfo(Sender: TObject; var ShowInfo,
  CheckForUpdate: Boolean);
begin
  ShowInfo := False;
  CheckForUpdate := True;
end;

procedure TdmoSendLogs.WebUpdateCannotExecute(Sender: TObject);
begin
  willUpdate := False;
end;

procedure TdmoSendLogs.WebUpdateDownloadError(Sender: TObject);
begin
  willUpdate := False;
end;

procedure TdmoSendLogs.WebUpdateNoUpdateFound(Sender: TObject);
begin
  willUpdate := False;
end;

procedure TdmoSendLogs.WebUpdateUpdateAvailable(Sender: TObject; ActualVersion,
  NewVersion: string; var CanUpdate: Boolean);
begin
  CanUpdate := False;
  willUpdate := True;
end;

end.
