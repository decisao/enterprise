unit data_datahora;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TdmoDataHora = class(TDataModule)
    cdsDataHora: TClientDataSet;
    cdsDataHoraDATAHORA: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmoDataHora: TdmoDataHora;

implementation

uses principal;

{$R *.dfm}

end.
