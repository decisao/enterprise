unit estornoos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_OS, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, Menus, DBClient, ActnList,
  dxBar, dxPSCore, ExtCtrls, dxBarExtItems, dxStatusBar,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxRadioGroup,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  cxButtons, cxGroupBox, cxMemo, cxMaskEdit, cxContainer, cxTextEdit,
  DBCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxPC, cxCheckBox, dxPScxCommon, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxmdaset, dxBarExtDBItems, cxLookAndFeels,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformEstornoOS = class(TformModeloOS)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATAAB: TDateField;
    cdsDadosHORAAB: TTimeField;
    cdsDadosDATA_ESTORNO: TDateField;
    cdsDadosUSUARIOESTORNO: TStringField;
    cdsDadosPRIORIDADE: TIntegerField;
    cdsDadosOLD_STATUS: TStringField;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosOSTIPO: TIntegerField;
    cdsDadosTIPOOS: TStringField;
    cdsDadosCODMARCA: TIntegerField;
    cdsDadosMARCA: TStringField;
    cdsDadosCODMODELO: TIntegerField;
    cdsDadosMODELO: TStringField;
    cdsDadosSERIE: TStringField;
    cdsDadosCODDEFEITO: TIntegerField;
    cdsDadosOCORRENCIA: TStringField;
    cdsDadosCODPARCEIRO: TIntegerField;
    cdsDadosPARCEIRO: TStringField;
    cdsDadosCODVENDEDOR_ABRE: TIntegerField;
    cdsDadosQUEMABRIU: TStringField;
    cdsDadosSOLICITANTE: TStringField;
    cdsDadosCONDICAOEXTERNA: TStringField;
    cdsDadosACESSORIOS: TStringField;
    cdsDadosSERVICOS: TStringField;
    cdsDadosDEFEITO_DETECTADO: TStringField;
    cdsDadosSERVICO_REALIZAR: TStringField;
    cdsDadosAUTORIZADO: TStringField;
    cdsDadosQUEM_AUTORIZOU: TStringField;
    cdsDadosOPCIONAIS: TStringField;
    cdsDadosCODVENDEDOR: TIntegerField;
    cdsDadosUSUARIOFECHAMENTO: TStringField;
    cdsDadosQUEM_RECEBEU: TStringField;
    cdsDadosQUEM_ENTREGOU: TStringField;
    cdsDadosOBSERVACOES: TStringField;
    cdsDadosCODEMPRESA: TIntegerField;
    cdsDadosES: TSmallintField;
    cdsDadosTIPO: TSmallintField;
    cdsDadosNOTA_FRETE: TSmallintField;
    cdsDadosCONDICAO: TStringField;
    cdsDadosGARANTIA: TStringField;
    cdsDadosEMPRESTIMO: TStringField;
    cdsDadosICMSSIMPLES: TStringField;
    cdsDadosNOTA_CODNATUOPER: TStringField;
    cdsDadosCODCENTRO: TIntegerField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAAB: TcxGridDBColumn;
    cxGrid1DBTableView1HORAAB: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_ESTORNO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIOESTORNO: TcxGridDBColumn;
    cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1DATAPREVISAO: TcxGridDBColumn;
    cxGrid1DBTableView1OLD_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOOS: TcxGridDBColumn;
    cxGrid1DBTableView1MARCA: TcxGridDBColumn;
    cxGrid1DBTableView1MODELO: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1OCORRENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1PARCEIRO: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1QUEMABRIU: TcxGridDBColumn;
    cxGrid1DBTableView1SOLICITANTE: TcxGridDBColumn;
    cxGrid1DBTableView1QUEM_AUTORIZOU: TcxGridDBColumn;
    cxGrid1DBTableView1TECNICO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAFECHAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1QUEM_RECEBEU: TcxGridDBColumn;
    cxGrid1DBTableView1QUEM_ENTREGOU: TcxGridDBColumn;
    cxTabSheet6: TcxTabSheet;
    Label11: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cdsDadosLOG_USUARIO: TStringField;
    cdsDadosLOG_TIPO: TStringField;
    cdsDadosLOG_MAQUINA: TStringField;
    cdsDadosLOCALIZACAO: TStringField;
    cdsDadosOPERADORA: TStringField;
    cdsDadosVALOR_SERVICOS: TFloatField;
    cdsDadosVALOR_ITENS: TFloatField;
    cdsDadosNOTA_VALOR_FRETE: TFloatField;
    cdsDadosNOTA_VALOR_SEGURO: TFloatField;
    cdsDadosNOTA_VALOR_OUTROS: TFloatField;
    cdsDadosVALOR_ICMS: TFloatField;
    cdsDadosDESCONTO: TFloatField;
    cdsDadosNOTA_QUANTIDADE: TFloatField;
    cdsDadosNOTA_BASEICMS: TFloatField;
    cdsDadosNOTA_BASEICMSSUBST: TFloatField;
    cdsDadosNOTA_VALORICMSSUBST: TFloatField;
    cdsDadosVALOR_IPI: TFloatField;
    cdsDadosICMSSIMPALIQ: TFloatField;
    cdsDadosISSALIQ: TFloatField;
    cdsDadosNOTA_PESOBRUTO: TFloatField;
    cdsDadosNOTA_PESOLIQUIDO: TFloatField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosTECNICO: TStringField;
    cdsDadosDATAPREVISAO: TSQLTimeStampField;
    cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField;
    cdsDadosDATA_AUTORIZADO: TSQLTimeStampField;
    cdsDadosDATAFECHAMENTO: TSQLTimeStampField;
    cdsDadosDATA_ENTREGA: TSQLTimeStampField;
    cdsDadosNOTA_DATASAIDA: TSQLTimeStampField;
    cdsDadosLOG_DATAREMOTO: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formEstornoOS: TformEstornoOS;

implementation

uses principal;

{$R *.dfm}

procedure TformEstornoOS.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('DATA_ESTORNO',                  'CAST(MO.DATAESTORNO AS DATE)');

end;

end.
