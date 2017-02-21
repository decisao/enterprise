unit data_sequencia;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect;

type
  TdmoSequencia = class(TDataModule)
    SocketConnection: TSocketConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmoSequencia: TdmoSequencia;

implementation

{$R *.dfm}

end.
