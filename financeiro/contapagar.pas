unit contapagar;
                          
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CONTA, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxContainer, StdCtrls, DBCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, cxCheckBox, Menus,
  dxPScxCommon, cxLookAndFeelPainters, Provider, dxmdaset, cxButtons,
  dxBarExtDBItems, cxLookAndFeels, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinOffice2010Silver,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinDevExpressStyle, cxNavigator,
  dxSkinsdxRibbonPainter;

type
  TformContaPagar = class(TformContaModelo)
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formContaPagar: TformContaPagar;

implementation

uses principal;

{$R *.dfm}

procedure TformContaPagar.FormCreate(Sender: TObject);
begin
  inherited;

  { seleção de documentos a pagar }
  WhereArgStatic := 'PAGAMENTOS.ES = 1 AND PAGAMENTOS.PAGO = 0';

  AdicionarCampo('BUSCA_DATACAD', 'PAGAMENTOS.DATACADAST');
  AdicionarCampo('BUSCA_DATAVEN', 'PAGAMENTOS.DATAVENCIMENTO');
  AdicionarCampo('BUSCA_DATAPAG', 'PAGAMENTOS.DATAPAGO');
  AdicionarCampo('DATADOC', 'CAST(PAGAMENTOS.DATADOC AS DATE)');

//  { dados por empresa }
//  WhereArgStatic := WhereArgStatic +
//    ' AND PAGAMENTOS.CODEMPRESA = #CODEMPRESA#';

end;

procedure TformContaPagar.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  with cdsDados do
   begin
     fieldByName('ES').AsInteger := 1;
     fieldByName('CODCONTA').AsInteger :=
       formPrincipal.cdsPerfil.FieldByName('CODCONTA_COMPRADEB').AsInteger;
   end;
end;

end.
