unit ostipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxGroupBox, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, thSequencia,
  Menus, dxPScxCommon, dxmdaset, dxBarExtDBItems, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformOSTipos = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosTIPO: TStringField;
    cdsDadosDIAS: TIntegerField;
    cdsDadosHORAS: TIntegerField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    lbCODIGO: TLabel;
    lbTIPO: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedTIPO: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    lbDIAS: TLabel;
    dedDIAS: TcxDBTextEdit;
    dedHORAS: TcxDBTextEdit;
    lbHORAS: TLabel;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formOSTipos: TformOSTipos;

implementation

uses principal;

{$R *.dfm}

procedure TformOSTipos.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'OSTIPOS',
    LerSequencia);
end;

procedure TformOSTipos.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger := sequencia;
end;

end.
