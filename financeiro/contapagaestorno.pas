unit contapagaestorno;

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
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TformContaPagaEstorno = class(TformContaModelo)
    cxGrid1DBTableView1ESTORNO_NOMEUSER: TcxGridDBColumn;
    cxGrid1DBTableView1ESTORNO_DATA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formContaPagaEstorno: TformContaPagaEstorno;

implementation

uses principal;

{$R *.dfm}

procedure TformContaPagaEstorno.FormCreate(Sender: TObject);
begin
  inherited;

  { seleção de documentos pagas }
  WhereArgStatic := 'PAGAMENTOS.ES = 1 AND PAGAMENTOS.PAGO = 1 ' +
    'AND PAGAMENTOS.ESTORNO_CODUSUARIO IS NOT NULL';

  AdicionarCampo('BUSCA_DATACAD', 'PAGAMENTOS.DATACADAST');
  AdicionarCampo('BUSCA_DATAVEN', 'PAGAMENTOS.DATAVENCIMENTO');
  AdicionarCampo('BUSCA_DATAPAG', 'PAGAMENTOS.DATAPAGO');
  AdicionarCampo('DATADOC', 'CAST(PAGAMENTOS.DATADOC AS DATE)');
  AdicionarCampo('ESTORNO_DATA', 'CAST(PAGAMENTOS.ESTORNO_DATA AS DATE)');

//  { dados por empresa }
//  WhereArgStatic := WhereArgStatic +
//    ' AND PAGAMENTOS.CODEMPRESA = #CODEMPRESA#';

end;

end.
