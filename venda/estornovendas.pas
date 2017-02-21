unit estornovendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_VENDAS, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, Menus, DBClient, ActnList,
  dxBar, dxPSCore, ExtCtrls, dxBarExtItems, dxStatusBar,
  cxMemo, cxDBEdit, cxContainer, cxTextEdit, StdCtrls, DBCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, dxPScxCommon,
  dxmdaset, dxBarExtDBItems, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2010Blue, dxSkinOffice2007Blue,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformEstornoVendas = class(TformModeloVendas)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATA: TDateField;
    cdsDadosHORA: TTimeField;
    cdsDadosOLD_STATUS: TStringField;
    cdsDadosNOME: TStringField;
    cdsDadosNOMEUSER: TStringField;
    cdsDadosUSUARIOFECHAMENTO: TStringField;
    cdsDadosUSUARIOESTORNO: TStringField;
    cdsDadosDATAFECHA: TDateField;
    cdsDadosOBSERVACOES: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1OLD_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIOESTORNO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAFECHA: TcxGridDBColumn;
    cxDBTextEdit10: TcxDBTextEdit;
    Label11: TLabel;
    cdsDadosCONDICAOPAGAMENTO: TStringField;
    cxGrid1DBTableView1CONDICAOPAGAMENTO: TcxGridDBColumn;
    cdsDadosNOTA_NUMERO: TIntegerField;
    cdsDadosCODCOMPRA: TIntegerField;
    cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField;
    cdsDadosFECHADO: TStringField;
    cdsDadosSTATUS: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEstornoVendas: TformEstornoVendas;

implementation

uses principal;

{$R *.dfm}

procedure TformEstornoVendas.FormCreate(Sender: TObject);
begin
  inherited;

  { campos de pesquisa }
  AdicionarCampo('CODIGO',                'MO.CODIGO');
  AdicionarCampo('DATA',                  'CAST(MO.DATAESTORNO AS DATE)');
  AdicionarCampo('HORA',                  'CAST(MO.DATAESTORNO AS TIME)');
  AdicionarCampo('DATAFECHA',             'CAST(MO.DATAFECHAMENTO AS DATE)');
  AdicionarCampo('NOMEUSER',              'VE.NOMEUSER');
  AdicionarCampo('NOME',                  'CL.NOME');

end;

end.
