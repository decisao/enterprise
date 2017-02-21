unit contarecebidaestorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CONTA, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxCalendar,
  cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  Provider, dxmdaset, DBClient, Menus, ActnList, dxBar, dxPSCore,
  dxPScxCommon, ExtCtrls, dxBarExtItems, dxStatusBar,
  cxDBEdit, StdCtrls, cxButtons, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxContainer, DBCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, dxBarExtDBItems,
  cxLookAndFeels, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformContaRecebidaEstorno = class(TformContaModelo)
    cxGrid1DBTableView1ESTORNO_NOMEUSER: TcxGridDBColumn;
    cxGrid1DBTableView1ESTORNO_DATA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formContaRecebidaEstorno: TformContaRecebidaEstorno;

implementation

uses principal;

{$R *.dfm}

procedure TformContaRecebidaEstorno.FormCreate(Sender: TObject);
begin
  inherited;

  { seleção de documentos recebidos }
  WhereArgStatic := 'PAGAMENTOS.ES = 2 AND PAGAMENTOS.PAGO = 1 ' +
    'AND PAGAMENTOS.ESTORNO_CODUSUARIO IS NOT NULL';

  AdicionarCampo('BUSCA_DATAVEN', 'PAGAMENTOS.DATAVENCIMENTO');
  AdicionarCampo('BUSCA_DATAPAG', 'PAGAMENTOS.DATAPAGO');
  AdicionarCampo('DATADOC', 'CAST(PAGAMENTOS.DATADOC AS DATE)');
  AdicionarCampo('ESTORNO_DATA', 'CAST(PAGAMENTOS.ESTORNO_DATA AS DATE)');

//  { dados por empresa }
//  WhereArgStatic := WhereArgStatic +
//    ' AND PAGAMENTOS.CODEMPRESA = #CODEMPRESA#';

end;

end.
