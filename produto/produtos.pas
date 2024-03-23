unit produtos;

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
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, Menus, cxCheckBox, ExtDlgs,
  jpeg, cxMaskEdit, thsequencia, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ActiveX, cxMemo, dxPScxCommon, dxmdaset, dxBarExtDBItems,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSPrVwAdv,
  dxPSPrVwRibbon, cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  cxNavigator, dxSkinsdxRibbonPainter, dxSkinDevExpressStyle;

type
  {####################################################################}
  {##                                                                ##}
  {##  FORMULÁRIO                                                    ##}
  {##                                                                ##}
  {####################################################################}
  TformProdutos = class(TformCadModelo)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label4: TLabel;
    dedICMS: TcxDBTextEdit;
    dedBARRA: TcxDBTextEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    dedCODIGO: TcxDBTextEdit;
    Label2: TLabel;
    dedDESCRICAO: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    cdsEstoque: TClientDataSet;
    dsrEstoque: TDataSource;
    cdsEstoqueNOME: TStringField;
    DBTableView1: TcxGridDBTableView;
    Level1: TcxGridLevel;
    gridEstoque: TcxGrid;
    DBTableView1NOME: TcxGridDBColumn;
    DBTableView1QUANTIDADE: TcxGridDBColumn;
    tmrEstoque: TTimer;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1BARRA: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALIZACAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOTOTAL: TcxGridDBColumn;
    cxTabSheet5: TcxTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    pnlImagem: TPanel;
    cxImage: TImage;
    pnlAjuste: TPanel;
    ckAjustar: TcxCheckBox;
    tmrImagem: TTimer;
    OpenPictureDialog: TOpenPictureDialog;
    menuImagem: TPopupMenu;
    Carregarimagem1: TMenuItem;
    N1: TMenuItem;
    Excluir1: TMenuItem;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Label21: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Label29: TLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    Label28: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    Label30: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    pnlLog: TPanel;
    Splitter1: TSplitter;
    cxGridLog1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    DBTableView1LOG_TIPO: TcxGridDBColumn;
    DBTableView1LOG_USUARIO: TcxGridDBColumn;
    DBTableView1LOG_MAQUINA: TcxGridDBColumn;
    DBTableView1LOG_DATAREMOTO: TcxGridDBColumn;
    DBTableView1LOG_DATASERVIDOR: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLog2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2LOG_CAMPO: TcxGridDBColumn;
    cxGrid2DBTableView2LOG_VALORANTIGO: TcxGridDBColumn;
    cxGrid2DBTableView2LOG_VALORNOVO: TcxGridDBColumn;
    cxGrid2Level2: TcxGridLevel;
    tmrLog: TTimer;
    Label3: TLabel;
    dedPRECOVENDA: TcxDBTextEdit;
    Label7: TLabel;
    dedPRECOTOTAL: TcxDBTextEdit;
    Label8: TLabel;
    dblUnidade: TcxDBLookupComboBox;
    Label9: TLabel;
    dblGrupo: TcxDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label13: TLabel;
    DEDMINIMO: TcxDBTextEdit;
    Label14: TLabel;
    DEDVOLUMES: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    DEDLOCALIZACAO: TcxDBTextEdit;
    CKETIQUETAS: TcxDBCheckBox;
    CKINDIVIDUAL: TcxDBCheckBox;
    tabCusto: TcxTabSheet;
    lbMargem: TLabel;
    DEDMARGEM: TcxDBTextEdit;
    Label17: TLabel;
    DEDVENDA: TcxDBTextEdit;
    Label18: TLabel;
    DEDCUSTO: TcxDBTextEdit;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxDBCheckBox3: TcxDBCheckBox;
    lbMARCA: TLabel;
    dedMARCA: TcxDBTextEdit;
    lbMODELO: TLabel;
    dedMODELO: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label20: TLabel;
    DEDSERVICO: TcxDBTextEdit;
    Label22: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label23: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxDBCheckBox1: TcxDBCheckBox;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    Label24: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxGrid1DBTableView1PRECOVENDA2: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA3: TcxGridDBColumn;
    Label27: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label31: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label32: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton12: TdxBarButton;
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosGRUPO: TIntegerField;
    cdsDadosETIQUETA: TStringField;
    cdsDadosNUMETIQ: TIntegerField;
    cdsDadosINDIVIDUAL: TStringField;
    cdsDadosSEQUENCIA: TIntegerField;
    cdsDadosOBSERVACOES: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosPS: TStringField;
    cdsDadosCODSERVICO: TIntegerField;
    cdsDadosLOCALIZACAO: TStringField;
    cdsDadosCOMISSIONADO: TStringField;
    cdsDadosOCULTO: TStringField;
    cdsDadosCODCENTRO: TIntegerField;
    cdsDadosATIVACAO: TStringField;
    cdsDadosCADEQUIPAMENTO: TStringField;
    cdsDadosCODMARCA: TIntegerField;
    cdsDadosCODMODELO: TIntegerField;
    cdsDadosGARANTIA: TIntegerField;
    cdsDadosTIPOPRODUTO: TStringField;
    cdsDadosLOG_USUARIO: TStringField;
    cdsDadosLOG_TIPO: TStringField;
    cdsDadosLOG_MAQUINA: TStringField;
    cdsDadosMATPRIMA: TStringField;
    cdsDadosCLASSFISCAL: TStringField;
    cdsDadosCAIXA_ITENS: TIntegerField;
    lbMargem2: TLabel;
    dedMargem2: TcxDBTextEdit;
    lbMargem3: TLabel;
    dedMargem3: TcxDBTextEdit;
    cxGrid1DBTableView1OCULTO: TcxGridDBColumn;
    ckCOMISSIONADO: TcxDBCheckBox;
    cdsDadosMINIMO: TFloatField;
    cdsDadosMARGEM: TFloatField;
    cdsDadosPRECOSERVICO: TFloatField;
    cdsDadosPRECOTOTAL: TFloatField;
    cdsDadosICMS_BASE: TFloatField;
    cdsDadosPRECOVENDA2: TFloatField;
    cdsDadosPRECOVENDA3: TFloatField;
    cdsDadosMARGEM2: TFloatField;
    cdsDadosMARGEM3: TFloatField;
    cdsDadosPESO: TFloatField;
    cdsDadosMARCA: TStringField;
    cdsDadosMODELO: TStringField;
    cdsDadosCENTRO: TStringField;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1GRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1CODSERVICO: TcxGridDBColumn;
    cxGrid1DBTableView1COMISSIONADO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOSERVICO: TcxGridDBColumn;
    cxGrid1DBTableView1GARANTIA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1SERVICO: TcxGridDBColumn;
    cxGrid1DBTableView1MARCA: TcxGridDBColumn;
    cxGrid1DBTableView1MODELO: TcxGridDBColumn;
    cxGrid1DBTableView1CENTRO: TcxGridDBColumn;
    cdsDadosDESCRICAO_1: TStringField;
    cdsDadosPRECOCUSTO: TFMTBCDField;
    cdsDadosPRECOVENDA: TFMTBCDField;
    cdsDadosICMS: TFloatField;
    cdsDadosDATACADAST: TSQLTimeStampField;
    cdsDadosLOG_DATAREMOTO: TSQLTimeStampField;
    cdsDadosESTOQUE: TFMTBCDField;
    cdsEstoqueQUANTIDADE: TFMTBCDField;
    Label16: TLabel;
    cdsProfoto: TClientDataSet;
    cdsProfotoCODPRODUTO: TIntegerField;
    cdsProfotoIMAGEM: TBlobField;
    dxBarButton13: TdxBarButton;
    cdsDadosESTOQUETOTAL: TFMTBCDField;
    cxGrid1DBTableView1ESTOQUETOTAL: TcxGridDBColumn;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    Label33: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cdsDadosCODNCM: TIntegerField;
    cdsDadosSITTRIBU: TStringField;
    Label34: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cdsDadosPARTNUMBER: TStringField;
    lbPartNumber: TLabel;
    dedPartNumber: TcxDBTextEdit;
    cxGrid1DBTableView1PARTNUMBER: TcxGridDBColumn;
    cdsDadosTRIBUTOS: TFloatField;
    lbTributos: TLabel;
    dedTributos: TcxDBTextEdit;
    lbPreco4: TLabel;
    dedPreco4: TcxDBTextEdit;
    lbPreco5: TLabel;
    dedPreco5: TcxDBTextEdit;
    cdsDadosPRECOVENDA4: TFloatField;
    cdsDadosPRECOVENDA5: TFloatField;
    cxGrid1DBTableView1PRECOVENDA4: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA5: TcxGridDBColumn;
    cxGrid1DBTableView1NCM: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOCUSTO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsEstoqueAfterOpen(DataSet: TDataSet);
    procedure cdsEstoqueBeforeClose(DataSet: TDataSet);
    procedure cxPageControl1Change(Sender: TObject);
    procedure pgcDadosChange(Sender: TObject);
    procedure cdsEstoqueBeforeOpen(DataSet: TDataSet);
    procedure tmrEstoqueTimer(Sender: TObject);
    procedure tmrImagemTimer(Sender: TObject);
    procedure Carregarimagem1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure tmrLogTimer(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure lbMARCAClick(Sender: TObject);
    procedure lbMODELOClick(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure Label23Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure cdsDadosCODIGOChange(Sender: TField);
    procedure cdsDadosBeforePost(DataSet: TDataSet); override;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;
    procedure Label16Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject); override;
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure ckAjustarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure AlteraPreco(Sender: TField);
    procedure AlteraPreco2(Sender: TField);
    procedure AlteraPreco3(Sender: TField);
    procedure AlteraMargem(Sender: TField);
    procedure AlteraMargem2(Sender: TField);
    procedure AlteraMargem3(Sender: TField);
  public
    { Public declarations }
    procedure LerSequencia(var sequencia: longint); virtual;
  end;

var
  formProdutos: TformProdutos;

implementation

uses principal, data_log, unidades, grupos, servicos, marcas, modelos,
  centros, data_etiquetas, funcoes, individuais, reajuste, tributario, ncm;

{$R *.dfm}

{####################################################################}
{##                                                                ##}
{##  FORMULÁRIO                                                    ##}
{##                                                                ##}
{####################################################################}

procedure TformProdutos.AlteraPreco(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho da margem }
  cdsDados.FieldByName('MARGEM').OnChange := nil;
  cdsDados.FieldByName('MARGEM2').OnChange := nil;
  cdsDados.FieldByName('MARGEM3').OnChange := nil;

  { calculo a margem }
  mora  := 0.0;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := cdsDados.fieldByName('PRECOVENDA').AsFloat;
  if (venda > custo) and (custo > 0.0) then
    mora := ((venda * 100) / custo) - 100 else
    if (custo = 0.0) and (venda > 0.0) then mora := (venda * 100) / venda;
  if (cdsDados.State in [dsEdit, dsInsert]) then
   begin
     cdsDados.fieldByName('MARGEM').AsFloat := mora;
     cdsDados.FieldByName('PRECOTOTAL').AsFloat := venda +
       cdsDados.FieldByName('PRECOSERVICO').AsFloat;
   end;

  { calculo a margem2 }
  mora  := 0.0;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := cdsDados.fieldByName('PRECOVENDA2').AsFloat;
  if (venda > custo) and (custo > 0.0) then
    mora := ((venda * 100) / custo) - 100 else
    if (custo = 0.0) and (venda > 0.0) then mora := (venda * 100) / venda;
  if (cdsDados.State in [dsEdit, dsInsert]) then
    cdsDados.fieldByName('MARGEM2').AsFloat := mora;

  { calculo a margem3 }
  mora  := 0.0;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := cdsDados.fieldByName('PRECOVENDA3').AsFloat;
  if (venda > custo) and (custo > 0.0) then
    mora := ((venda * 100) / custo) - 100 else
    if (custo = 0.0) and (venda > 0.0) then mora := (venda * 100) / venda;
  if (cdsDados.State in [dsEdit, dsInsert]) then
    cdsDados.fieldByName('MARGEM3').AsFloat := mora;

  { reativo o gatilho da margem }
  cdsDados.FieldByName('MARGEM').OnChange := AlteraMargem;
  cdsDados.FieldByName('MARGEM2').OnChange := AlteraMargem2;
  cdsDados.FieldByName('MARGEM3').OnChange := AlteraMargem3;

end;

procedure TformProdutos.AlteraPreco2(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho da margem }
  cdsDados.FieldByName('MARGEM2').OnChange := nil;

  { calculo a margem }
  mora  := 0.0;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := cdsDados.fieldByName('PRECOVENDA2').AsFloat;
  if (venda > custo) and (custo > 0.0) then
    mora := ((venda * 100) / custo) - 100 else
    if (custo = 0.0) and (venda > 0.0) then mora := (venda * 100) / venda;
  if (cdsDados.State in [dsEdit, dsInsert]) then
    cdsDados.fieldByName('MARGEM2').AsFloat := mora;

  { reativo o gatilho da margem }
  cdsDados.FieldByName('MARGEM2').OnChange := AlteraMargem2;

end;

procedure TformProdutos.AlteraPreco3(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho da margem }
  cdsDados.FieldByName('MARGEM3').OnChange := nil;

  { calculo a margem }
  mora  := 0.0;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := cdsDados.fieldByName('PRECOVENDA3').AsFloat;
  if (venda > custo) and (custo > 0.0) then
    mora := ((venda * 100) / custo) - 100 else
    if (custo = 0.0) and (venda > 0.0) then mora := (venda * 100) / venda;
  if (cdsDados.State in [dsEdit, dsInsert]) then
    cdsDados.fieldByName('MARGEM3').AsFloat := mora;

  { reativo o gatilho da margem }
  cdsDados.FieldByName('MARGEM3').OnChange := AlteraMargem3;

end;

procedure TformProdutos.AlteraMargem(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho dos preços }
  cdsDados.FieldByName('PRECOCUSTO').OnChange := nil;
  cdsDados.FieldByName('PRECOVENDA').OnChange := nil;

  { calculo o preço de venda }
  mora  := cdsDados.fieldByName('MARGEM').AsFloat;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := custo * (1 + (mora / 100));
  if cdsDados.State in [dsEdit, dsInsert] then
   begin
     cdsDados.FieldByName('PRECOVENDA').AsFloat := venda;
     cdsDados.FieldByName('PRECOTOTAL').AsFloat := venda +
       cdsDados.FieldByName('PRECOSERVICO').AsFloat;
   end;

  { reativo o gatilho dos preços }
  cdsDados.FieldByName('PRECOCUSTO').OnChange := AlteraPreco;
  cdsDados.FieldByName('PRECOVENDA').OnChange := AlteraPreco;

end;

procedure TformProdutos.AlteraMargem2(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho dos preços }
  cdsDados.FieldByName('PRECOCUSTO').OnChange := nil;
  cdsDados.FieldByName('PRECOVENDA2').OnChange := nil;

  { calculo o preço de venda }
  mora  := cdsDados.fieldByName('MARGEM2').AsFloat;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := custo * (1 + (mora / 100));
  if cdsDados.State in [dsEdit, dsInsert] then
    cdsDados.FieldByName('PRECOVENDA2').AsFloat := venda;

  { reativo o gatilho dos preços }
  cdsDados.FieldByName('PRECOCUSTO').OnChange := AlteraPreco;
  cdsDados.FieldByName('PRECOVENDA2').OnChange := AlteraPreco2;

end;

procedure TformProdutos.AlteraMargem3(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho dos preços }
  cdsDados.FieldByName('PRECOCUSTO').OnChange := nil;
  cdsDados.FieldByName('PRECOVENDA3').OnChange := nil;

  { calculo o preço de venda }
  mora  := cdsDados.fieldByName('MARGEM3').AsFloat;
  custo := cdsDados.fieldByName('PRECOCUSTO').AsFloat;
  venda := custo * (1 + (mora / 100));
  if cdsDados.State in [dsEdit, dsInsert] then
    cdsDados.FieldByName('PRECOVENDA3').AsFloat := venda;

  { reativo o gatilho dos preços }
  cdsDados.FieldByName('PRECOCUSTO').OnChange := AlteraPreco;
  cdsDados.FieldByName('PRECOVENDA3').OnChange := AlteraPreco3;

end;

procedure TformProdutos.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

procedure TformProdutos.FormCreate(Sender: TObject);
begin
  inherited;
//  btnAdicionar.Visible := ivNever;
  dmoLog := TdmoLog.Create(Self);
  AdicionarCampo('CODIGO'     , 'PO.CODIGO');
  AdicionarCampo('DESCRICAO'  , 'PO.DESCRICAO');
  AdicionarCampo('BARRA'      , 'PO.BARRA');
  AdicionarCampo('LOCALIZACAO', 'PO.LOCALIZACAO');
  AdicionarCampo('OCULTO'     , 'PO.OCULTO');
  AdicionarCampo('MARCA'      , 'MA.DESCRICAO');
  AdicionarCampo('MODELO'     , 'MO.DESCRICAO');
  AdicionarCampo('CENTRO'     , 'CE.DESCRICAO');
  AdicionarCampo('PARTNUMBER' , 'PO.PARTNUMBER');
  SetCampoSoma('PRECOVENDA'   , 'Total');

  SetOrderBy('PO.CODIGO DESC');
end;

procedure TformProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  barra: string;
  tecla: word;
begin
  inherited;

  { busca por código de barras }
  if (pgcDados.ActivePage = tabVisual) and (key = vk_F6) then
   begin
     barra := InputBox('Código de Barras', 'Use o leitor para ler o código:', '');
     if barra > '' then
      begin
        cmbSelecionar.ItemIndex := 0;
        edtSelecionar.Text := barra;
        tecla := 13;
        edtSelecionarKeyDown(nil, tecla, []);
      end;
   end;

end;

procedure TformProdutos.FormShow(Sender: TObject);
begin
  inherited;

  if formPrincipal.cdsUsuarios.FieldByName('PRECO_45').AsString = 'S' then
   begin
     cxGrid1DBTableView1PRECOVENDA4.Visible  := True;
     cxGrid1DBTableView1PRECOVENDA5.Visible  := True;
   end else
   begin
     cxGrid1DBTableView1PRECOVENDA4.Visible  := False;
     cxGrid1DBTableView1PRECOVENDA5.Visible  := False;
   end;

end;

procedure TformProdutos.cdsEstoqueAfterOpen(DataSet: TDataSet);
begin
  inherited;
  gridEstoque.Visible := True;
end;

procedure TformProdutos.cdsEstoqueBeforeClose(DataSet: TDataSet);
begin
  inherited;
  gridEstoque.Visible := False;
end;

procedure TformProdutos.cxPageControl1Change(Sender: TObject);
begin
  inherited;

  { estoque }
  if cxPageControl1.ActivePage = cxTabSheet2 then
    tmrEstoque.Enabled := True;

  { imagem }
  if cxPageControl1.ActivePage = cxTabSheet5 then
   begin
     if (not pnlImagem.Visible) then
       tmrImagem.Enabled := True;
   end;

  { log }
  if cxPageControl1.ActivePage = cxTabSheet4 then
   begin
     if (not pnlLog.Visible) then
       tmrLog.Enabled := True;
   end;
end;

procedure TformProdutos.pgcDadosChange(Sender: TObject);
begin
  inherited;

  if pgcDados.ActivePage = tabVisual then
   if cdsEstoque.Active then
    cdsEstoque.Close;
end;

procedure TformProdutos.cdsEstoqueBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  cdsEstoque.Params.ParamByName('CODPRODUTO').AsInteger :=
    cdsDados.fieldByName('CODIGO').AsInteger;
end;

procedure TformProdutos.ckAjustarClick(Sender: TObject);
begin
  inherited;
  cxImage.Center := ckAjustar.Checked;
  cxImage.Proportional := ckAjustar.Checked;
  cxImage.Stretch := ckAjustar.Checked;
end;

procedure TformProdutos.tmrEstoqueTimer(Sender: TObject);
begin
  inherited;
  try
    tmrEstoque.Enabled := False;
    formPrincipal.ShowMsg('Lendo estoque...');
    cdsEstoque.Open;
    cdsEstoque.RemoteServer.Close;
    formPrincipal.HideMsg;
  except
    on exception do
     begin
       formPrincipal.HideMsg;
       raise;
     end;
  end;
end;

procedure TformProdutos.tmrImagemTimer(Sender: TObject);
var
  b: TStream;
  jpg: TJpegImage;
begin
  inherited;

  tmrImagem.Enabled := False;
  try
    formPrincipal.ShowMsg('Carregando Imagem...');
    cxImage.Picture.Assign(nil);
    with cdsProFoto do
     begin
       if Active then
         Close;
       Params[0].AsInteger := cdsDadosCODIGO.AsInteger;
       Open;
       ckAjustar.Checked := True;
       ckAjustarClick(Sender);
       cxImage.Visible := True;
       pnlAjuste.Visible := True;
       pnlImagem.Visible := True;
       if (not IsEmpty) and (not fieldByName('IMAGEM').IsNull) then
        begin

          { tranfiro a figura para o stream }
          b := cdsProFoto.CreateBlobStream(cdsProFoto.FieldByName('IMAGEM'), bmRead);

          { tem figura mesmo? }
          if b.Size > 0 then
            try
              jpg := TJpegImage.Create;
              jpg.LoadFromStream(b);
              cxImage.Picture.Assign(jpg);
              jpg.Free;
            except
            end
          else
            cxImage.Picture.Assign(nil);

          { destruo as variáveis }
          b.Destroy;

        end;
       RemoteServer.Close;
       formPrincipal.HideMsg;
     end;
  except
    on e: exception do
     begin
       cdsProFoto.RemoteServer.Close;
       formPrincipal.CONN_DBError(
         Self.Name + ': Imagem',
         cdsDadosCODIGO.AsString,
         e.message);
       pnlImagem.Caption := 'Erro ao Carregar Imagem';
       cxImage.Visible := False;
       pnlAjuste.Visible := False;
       pnlImagem.Visible := True;
       formPrincipal.HideMsg;
     end;
  end

end;

procedure TformProdutos.Carregarimagem1Click(Sender: TObject);
var
  jpg: TJpegImage;
begin
  inherited;

  if OpenPictureDialog.Execute then
   begin

     { crio o objeto }
     jpg := TJpegImage.Create;
     jpg.LoadFromFile(OpenPictureDialog.FileName);

     { exibo a imagem }
     Liberar;
     cxImage.Picture.Assign(jpg);

     { salvo no banco de dados }
     with cdsProFoto do
      begin
        if not IsEmpty then
          edit
        else
          insert;
        FieldByName('CODPRODUTO').AsInteger := cdsDadosCODIGO.AsInteger;
        FieldByName('IMAGEM').Assign(jpg);
        Post;
      end;

     { destruo as variáveis }
     jpg.Free;

   end
end;

procedure TformProdutos.Excluir1Click(Sender: TObject);
begin
  inherited;

  { excluir }
  with cdsProFoto do
   begin
     if (not IsEmpty) and (not fieldByName('IMAGEM').IsNull) then
      begin
        Liberar;
        edit;
        FieldByName('IMAGEM').Clear;
        Post;
      end;
   end;
  cxImage.Picture.Assign(nil);

end;

procedure TformProdutos.btnAdicionarClick(Sender: TObject);
begin

  if not formPrincipal.cdsGrupos.Active then
    formPrincipal.cdsGrupos.Open;
  if not formPrincipal.cdsUnidades.Active then
    formPrincipal.cdsUnidades.Open;

  inherited;

  tabCusto.TabVisible := True;
  ckCOMISSIONADO.Enabled := True;

  { gatilhos de preço e margem }
  with cdsDados do
   begin
     fieldByName('PRECOCUSTO').OnChange   := AlteraPreco;
     fieldByName('PRECOVENDA').OnChange   := AlteraPreco;
     fieldByName('PRECOVENDA2').OnChange  := AlteraPreco2;
     fieldByName('PRECOVENDA3').OnChange  := AlteraPreco3;
     fieldByName('PRECOSERVICO').OnChange := AlteraPreco;
     fieldByName('MARGEM').OnChange       := AlteraMargem;
     fieldByName('MARGEM2').OnChange      := AlteraMargem2;
     fieldByName('MARGEM3').OnChange      := AlteraMargem3;
   end;

  formPrincipal.SocketConnection.Close;

  pnlImagem.Visible := False;
  pnlLog.Visible := False;
  if dedDescricao.CanFocus then
    dedDescricao.SetFocus;
end;

procedure TformProdutos.btnModificarClick(Sender: TObject);
begin

  pnlImagem.Visible := False;
  pnlLog.Visible := False;
  cxPageControl1.ActivePage := cxTabSheet1;

  inherited;

  tabCusto.TabVisible :=
    formPrincipal.cdsUsuarios.fieldByName('CUSTO').AsString = 'S';
  ckCOMISSIONADO.Enabled :=
    formPrincipal.cdsUsuarios.fieldByName('FINANCEIRO').AsString = 'S';

  if formPrincipal.cdsUsuarios.FieldByName('PRECO_45').AsString = 'S' then
   begin
     lbPreco4.Visible  := True;
     lbPreco5.Visible  := True;
     dedPreco4.Visible := True;
     dedPreco5.Visible := True;
   end else
   begin
     lbPreco4.Visible  := False;
     lbPreco5.Visible  := False;
     dedPreco4.Visible := False;
     dedPreco5.Visible := False;
   end;

  { gatilhos de preço e margem }
  with cdsDados do
   begin
     fieldByName('PRECOCUSTO').OnChange   := AlteraPreco;
     fieldByName('PRECOVENDA').OnChange   := AlteraPreco;
     fieldByName('PRECOVENDA2').OnChange  := AlteraPreco2;
     fieldByName('PRECOVENDA3').OnChange  := AlteraPreco3;
     fieldByName('PRECOSERVICO').OnChange := AlteraPreco;
     fieldByName('MARGEM').OnChange       := AlteraMargem;
     fieldByName('MARGEM2').OnChange      := AlteraMargem2;
     fieldByName('MARGEM3').OnChange      := AlteraMargem3;
   end;

  if not formPrincipal.cdsGrupos.Active then
    formPrincipal.cdsGrupos.Open;
  if not formPrincipal.cdsUnidades.Active then
    formPrincipal.cdsUnidades.Open;
  formPrincipal.SocketConnection.Close;

end;

procedure TformProdutos.btnSalvarClick(Sender: TObject);
begin
  inherited;
  SalvarDataset(cdsProFoto, 'Imagem');
end;

procedure TformProdutos.tmrLogTimer(Sender: TObject);
begin
  inherited;
  tmrLog.Enabled := False;
  if dmoLog.OpenLog('PRODUTOS', cdsDados) then
   begin
     cxGridLog1.Visible := True;
     cxGridLog2.Visible := True;
     pnlLog.Visible := True;
   end else
   begin
     cxGridLog1.Visible := False;
     cxGridLog2.Visible := False;
     pnlLog.Visible := True;
   end;
end;

procedure TformProdutos.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'PRODUTOS',
    LerSequencia);

  with DataSet do
   begin
     fieldByName('PRECOCUSTO').AsFloat := 0;
     fieldByName('PRECOVENDA').AsFloat := 0;
     fieldByName('PRECOVENDA2').AsFloat := 0;
     fieldByName('PRECOVENDA3').AsFloat := 0;
     fieldByName('ICMS').AsFloat := 0;
     fieldByName('MINIMO').AsInteger := 1;
     fieldByName('ETIQUETA').AsString := 'N';
     fieldByName('NUMETIQ').AsInteger := 1;
     fieldByName('INDIVIDUAL').AsString := 'N';
     fieldByName('SEQUENCIA').AsInteger := 1;
     fieldByName('PS').AsString := 'P';
     fieldByName('COMISSIONADO').AsString := 'S';
     fieldByName('OCULTO').AsString := 'N';
     fieldByName('MARGEM').AsFloat := 0;
     fieldByName('MARGEM2').AsFloat := 0;
     fieldByName('MARGEM3').AsFloat := 0;
     fieldByName('CODCENTRO').AsInteger := 1;
     fieldByName('PRECOSERVICO').AsFloat := 0;
     fieldByName('PRECOTOTAL').AsFloat := 0;
     fieldByName('ATIVACAO').AsString := 'N';
     fieldByName('CADEQUIPAMENTO').AsString := 'N';
     fieldByName('TIPOPRODUTO').AsString := 'F';
     fieldByName('DATACADAST').AsDateTime := now;
     fieldByName('CAIXA_ITENS').AsINteger := 1;
     fieldByName('MATPRIMA').AsString := 'N';
     fieldByName('ICMS_BASE').AsFloat := 100;
     fieldByName('TRIBUTOS').AsFloat := 0;
     fieldByName('PRECOVENDA4').AsFloat := 0;
     fieldByName('PRECOVENDA5').AsFloat := 0;
   end;

end;

procedure TformProdutos.Label8Click(Sender: TObject);
begin
  inherited;

//  { chamo o form }
//  try
//    formUnidades := TformUnidades.Create(Self);
//    formUnidades.AutoLoad := True;
//    formUnidades.Transferir := True;
//    formUnidades.MultiSelect := False;
//    formUnidades.Tag := formPrincipal.actUnidades.Tag;
//    if formUnidades.ShowModal = mrOk then
//     if formUnidades.cdsDados.Active then
//      begin
//        Liberar;
//        formPrincipal.dsrUnidades.DataSet.Refresh;
//        cdsDados.FieldByName('UNIDADE').AsString :=
//          formUnidades.cdsDados.FieldByName('SIGLA').AsString;
//      end;
//  finally
//    try
//      { destruo o form }
//      formUnidades.Release;
//    except
//    end
//  end

end;

procedure TformProdutos.Label9Click(Sender: TObject);
begin
  inherited;

//  { chamo o form }
//  try
//    formGrupos := TformGrupos.Create(Self);
//    formGrupos.AutoLoad := True;
//    formGrupos.Transferir := True;
//    formGrupos.MultiSelect := False;
//    formGrupos.Tag := formPrincipal.actGrupos.Tag;
//    if formGrupos.ShowModal = mrOk then
//     if formGrupos.cdsDados.Active then
//      begin
//        Liberar;
//        formPrincipal.dsrGrupos.DataSet.Refresh;
//        cdsDados.FieldByName('GRUPO').AsInteger :=
//          formGrupos.cdsDados.FieldByName('CODIGO').AsInteger;
//      end;
//  finally
//    try
//      { destruo o form }
//      formGrupos.Release;
//    except
//    end
//  end

end;

procedure TformProdutos.Label12Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formServicos := TformServicos.Create(Self);
    formServicos.AutoLoad := True;
    formServicos.Transferir := True;
    formServicos.MultiSelect := False;
    formServicos.Tag := formPrincipal.actServicos.Tag;
    if formServicos.ShowModal = mrOk then
     if formServicos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODSERVICO').AsInteger :=
          formServicos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('DESCRICAO_1').AsString :=
          formServicos.cdsDados.FieldByName('DESCRICAO').AsString;
        cdsDados.FieldByName('PRECOSERVICO').AsFloat :=
          formServicos.cdsDados.FieldByName('PRECOVENDA').AsFloat;
      end;
  finally
    try
      { destruo o form }
      formServicos.Release;
    except
    end
  end

end;

procedure TformProdutos.Label16Click(Sender: TObject);
begin
  inherited;

  if formPrincipal.Pergunta(
       'Deseja mesmo desvincular o serviço?',
       'Quebrar vínculo') = IDYES then
   begin
     Liberar;
     cdsDadosCODSERVICO.Clear;
     cdsDadosDESCRICAO_1.Clear;
     cdsDadosPRECOSERVICO.AsFloat := 0;
   end;

end;

procedure TformProdutos.lbMARCAClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formMarcas := TformMarcas.Create(Self);
    formMarcas.AutoLoad := True;
    formMarcas.Transferir := True;
    formMarcas.MultiSelect := False;
    formMarcas.Tag := formPrincipal.actMarcas.Tag;
    if formMarcas.ShowModal = mrOk then
     if formMarcas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODMARCA').AsInteger :=
          formMarcas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('MARCA').AsString :=
          formMarcas.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formMarcas.Release;
    except
    end
  end

end;

procedure TformProdutos.lbMODELOClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formModelos := TformModelos.Create(Self);
    formModelos.Caption :=
      Caption + ' :: ' + formModelos.Caption;
    formModelos.AutoLoad := True;
    formModelos.Transferir := True;
    formModelos.MultiSelect := False;
    formModelos.Tag := formPrincipal.actModelos.Tag;
    formModelos.SetWhereDynamic(
      Format('CODEQUIPAMENTO = %d', [cdsDados.fieldByName('CODMARCA').AsInteger]),
      Format('Modelos da Marca %s', [cdsDados.fieldByName('MARCA').AsString]));
    if formModelos.ShowModal = mrOk then
     if formModelos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODMODELO').AsInteger :=
          formModelos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('MODELO').AsString :=
          formModelos.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formModelos.Release;
    except
    end
  end

end;

procedure TformProdutos.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  inherited;

  { gatilhos de preço e margem }
  with cdsDados do
   begin
     fieldByName('PRECOCUSTO').OnChange   := AlteraPreco;
     fieldByName('PRECOVENDA').OnChange   := AlteraPreco;
     fieldByName('PRECOVENDA2').OnChange  := AlteraPreco2;
     fieldByName('PRECOVENDA3').OnChange  := AlteraPreco3;
     fieldByName('PRECOSERVICO').OnChange := AlteraPreco;
     fieldByName('MARGEM').OnChange       := AlteraMargem;
     fieldByName('MARGEM2').OnChange      := AlteraMargem2;
     fieldByName('MARGEM3').OnChange      := AlteraMargem3;
   end;

end;

procedure TformProdutos.cdsDadosBeforePost(DataSet: TDataSet);
begin
  { gatilhos de preço e margem }
  with cdsDados do
   begin
     fieldByName('PRECOCUSTO').OnChange   := nil;
     fieldByName('PRECOVENDA').OnChange   := nil;
     fieldByName('PRECOVENDA2').OnChange  := nil;
     fieldByName('PRECOVENDA3').OnChange  := nil;
     fieldByName('PRECOSERVICO').OnChange := nil;
     fieldByName('MARGEM').OnChange       := nil;
     fieldByName('MARGEM2').OnChange      := nil;
     fieldByName('MARGEM3').OnChange      := nil;
   end;

  inherited;
end;

procedure TformProdutos.Label23Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formCentros := TformCentros.Create(Self);
    formCentros.AutoLoad := True;
    formCentros.Transferir := True;
    formCentros.MultiSelect := False;
    formCentros.Tag := formPrincipal.actCentros.Tag;
    if formCentros.ShowModal = mrOk then
     if formCentros.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODCENTRO').AsInteger :=
          formCentros.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('CENTRO').AsString :=
          formCentros.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formCentros.Release;
    except
    end
  end

end;

procedure TformProdutos.Label33Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formNCM := TformNCM.Create(Self);
    formNCM.AutoLoad := False;
    formNCM.Transferir := True;
    formNCM.MultiSelect := False;
    formNCM.Tag := formPrincipal.actNCM.Tag;
    if formNCM.ShowModal = mrOk then
     if formNCM.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODNCM').AsInteger :=
          formNCM.cdsDados.FieldByName('CODIGO').AsInteger;
      end;
  finally
    try
      { destruo o form }
      formNCM.Release;
    except
    end
  end


end;

procedure TformProdutos.dxBarButton8Click(Sender: TObject);
var
  salto,
  copias: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { copias }
  try
    copias := StrToInt(InputBox('Quantas etiquetas?',
      'Digite o número de etiquetas para cada item:' , '1'));
  except
    on exception do
      copias := 1;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasProdutos(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    copias,
    1);
  dmoEtiquetas.ppEtiqProdutos04x20.Print;
  dmoEtiquetas.Free;

end;

procedure TformProdutos.dxBarButton9Click(Sender: TObject);
var
  salto,
  copias,
  parcelas: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { copias }
  try
    copias := StrToInt(InputBox('Quantas etiquetas?',
      'Digite o número de etiquetas para cada item:' , '1'));
  except
    on exception do
      copias := 1;
  end;

  { parcelas }
  try
    parcelas := StrToInt(InputBox('Parcelas',
      'Digite o número de parcelas do preço:' , '1'));
  except
    on exception do
      parcelas := 1;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasProdutos(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    copias,
    parcelas);
  dmoEtiquetas.ppEtiqProdutos04x20preco.Print;
  dmoEtiquetas.Free;

end;

procedure TformProdutos.dxBarButton10Click(Sender: TObject);
var
  salto,
  copias: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { copias }
  try
    copias := StrToInt(InputBox('Quantas etiquetas?',
      'Digite o número de etiquetas para cada item:' , '1'));
  except
    on exception do
      copias := 1;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasProdutos(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    copias,
    1);
  dmoEtiquetas.ppEtiqProdutos03x10.Print;
  dmoEtiquetas.Free;

end;

procedure TformProdutos.dxBarButton11Click(Sender: TObject);
var
  salto,
  copias,
  parcelas: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { copias }
  try
    copias := StrToInt(InputBox('Quantas etiquetas?',
      'Digite o número de etiquetas para cada item:' , '1'));
  except
    on exception do
      copias := 1;
  end;

  { parcelas }
  try
    parcelas := StrToInt(InputBox('Parcelas',
      'Digite o número de parcelas do preço:' , '1'));
  except
    on exception do
      parcelas := 1;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasProdutos(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    copias,
    parcelas);
  dmoEtiquetas.ppEtiqProdutos03x10preco.Print;
  dmoEtiquetas.Free;

end;

procedure TformProdutos.dxBarButton13Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formIndividuais := TformIndividuais.Create(Self);
    formIndividuais.Tag := formPrincipal.actIndividuais.Tag;
    formIndividuais.SetWhereDynamic(
      Format('PO.CODIGO = %d', [cdsDadosCODIGO.AsInteger]),
      Format('Movimentações do produto %d - %s', [cdsDadosCODIGO.AsInteger, cdsDadosDESCRICAO.AsString]));
    formIndividuais.AutoLoad := True;
    formIndividuais.ShowModal;
  finally
    try
      formIndividuais.Release;
    except
    end
  end
end;

procedure TformProdutos.dxBarButton14Click(Sender: TObject);
begin
  inherited;

  try
    formReajuste := TformReajuste.Create(Self);
    formReajuste.ShowModal;
  finally
    try
      formReajuste.Release;
    except
    end
  end

end;

procedure TformProdutos.dxBarButton15Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if no_sel = 0 then exit;

  try
    formTributario := TformTributario.Create(Self);
    with cdsDados do
     begin
       disablecontrols;
       first;
       while not eof do
        begin
          if cdsDadosSEL.AsString = 'S' then
            formTributario.dxMemProdutos.AppendRecord([
              nil,
              cdsDadosCODIGO.AsInteger]);
          next;
        end;
       enablecontrols;
     end;
    formTributario.ShowModal;
  finally
    try
      formTributario.Release;
    except
    end
  end

end;

procedure TformProdutos.cdsDadosCODIGOChange(Sender: TField);
var
  barra: string;
begin
  inherited;
  if novo_registro then
   begin
     barra := trim(Sender.AsString);
     if barra > '' then
      begin
        while length(barra) < 8 do
          barra := '9' + barra;
        cdsDadosBARRA.AsString := funcoes.Ean13(
          barra + '00000');
      end;
   end;
end;

end.
