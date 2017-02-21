unit laysercampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxmdaset, Menus, ActnList, dxBar, dxPSCore, ExtCtrls,
  DBClient, dxBarExtItems, cxClasses, dxStatusBar, DBCtrls, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCheckBox, dxPScxCommon,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformSerCampos = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosNUMERO: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosTAMANHO: TIntegerField;
    cdsDadosENTSAI: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSerCampos: TformSerCampos;

implementation

uses principal;

{$R *.dfm}

end.
