unit contareceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CONTA, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, cxContainer,
  cxTextEdit, cxDBEdit, StdCtrls, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  Menus, dxPScxCommon, cxLookAndFeelPainters, Provider, dxmdaset, cxButtons,
  dxBarExtDBItems, cxLookAndFeels, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinOffice2010Silver,
  dxPSPrVwAdv, dxPSPrVwRibbon, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk;

type
  TformContaReceber = class(TformContaModelo)
    dxBarStatic1: TdxBarStatic;
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formContaReceber: TformContaReceber;

implementation

uses principal;

{$R *.dfm}

procedure TformContaReceber.FormCreate(Sender: TObject);
begin
  inherited;

  { seleção de documentos a receber }
  WhereArgStatic := 'PAGAMENTOS.ES = 2 AND PAGAMENTOS.PAGO = 0';

  AdicionarCampo('BUSCA_DATAVEN', 'PAGAMENTOS.DATAVENCIMENTO');
  AdicionarCampo('DATADOC', 'CAST(PAGAMENTOS.DATADOC AS DATE)');

//  { dados por empresa }
//  WhereArgStatic := WhereArgStatic +
//    ' AND PAGAMENTOS.CODEMPRESA = #CODEMPRESA#';

end;

procedure TformContaReceber.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  with cdsDados do
   begin
    fieldByName('ES').AsInteger := 2;
    fieldByName('CODCONTA').AsInteger :=
      formPrincipal.cdsPerfil.FieldByName('CODCONTA_VENDACRE').AsInteger;
   end;

end;

end.
