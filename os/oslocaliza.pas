unit oslocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxmdaset, Menus,
  ActnList, dxBar, dxPSCore, dxPScxCommon, ExtCtrls, DBClient,
  dxBarExtItems, cxClasses, dxStatusBar, DBCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxCheckBox, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, thSequencia,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinOffice2010Silver, cxNavigator, dxSkinsdxRibbonPainter;

type
  TformOSLocaliza = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosLOCALIZACAO: TStringField;
    cdsDadosSISTEMA: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALIZACAO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure cdsDadosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  end;

var
  formOSLocaliza: TformOSLocaliza;

implementation

uses principal;

{$R *.dfm}

procedure TformOSLocaliza.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'OS_LOCALIZACAO',
    LerSequencia);
  cdsDadossistema.AsString := 'N';
  if cxDBTextEdit2.CanFocus then
    cxDBTextEdit2.SetFocus;
end;

procedure TformOSLocaliza.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger := sequencia;
end;

end.
