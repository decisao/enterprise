unit contas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, dxPScxCommon, thSequencia,
  dxmdaset, dxBarExtDBItems, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformContas = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosCONTA: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTA: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedCONTA: TcxDBTextEdit;
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
  formContas: TformContas;

implementation

uses principal;

{$R *.dfm}

procedure TformContas.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDados.fieldByName('CODIGO').AsInteger  := sequencia;
end;

procedure TformContas.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'CONTAS',
    LerSequencia);
end;

end.
