unit MODELO_CONTA;

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
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, ActiveX, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Menus, cxCheckBox, dxPScxCommon, thSequencia, cxLookAndFeelPainters,
  cxButtons, dxmdaset, Grids, DBGrids, Provider, dxBarExtDBItems, 
  cxLookAndFeels, dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxPSPrVwAdv, dxPSPrVwRibbon, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinDevExpressStyle, cxNavigator,
  dxSkinsdxRibbonPainter;

type
  {####################################################################}
  {##                                                                ##}
  {##  thread FORMULARIO                                             ##}
  {##                                                                ##}
  {####################################################################}
  TformContaModelo = class(TformCadModelo)
    pnlCODIGO: TPanel;
    lbCODIGO: TLabel;
    lbCODEMPRESA: TLabel;
    pnlCliente: TPanel;
    lbCODCLIENTE: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedCODEMPRESA: TcxDBTextEdit;
    cxGrid1DBTableView1CODMOVIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1CH_BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1CH_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    dedEMPRESA: TcxTextEdit;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosCODMOVIMENTO: TIntegerField;
    cdsDadosNUMERO: TSmallintField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosES: TSmallintField;
    cdsDadosCODDOCUMENTO: TIntegerField;
    cdsDadosINFODOC: TStringField;
    cdsDadosEXTERNO: TStringField;
    cdsDadosARQUIVO: TStringField;
    cdsDadosHISTORICO: TStringField;
    cdsDadosPAGO: TSmallintField;
    cdsDadosSTATUS: TStringField;
    cdsDadosCODCONTA: TIntegerField;
    cdsDadosCODLANCTO: TIntegerField;
    cdsDadosNOMEUSUARIO: TStringField;
    cdsDadosCODEMPRESA: TIntegerField;
    cdsDadosTIPO_PAG: TStringField;
    cdsDadosTIPO_DOC: TStringField;
    cdsDadosCH_BANCO: TIntegerField;
    cdsDadosCH_AGENCIA: TIntegerField;
    cdsDadosCH_CONTA: TIntegerField;
    cdsDadosCH_SERIE: TStringField;
    cdsDadosCH_NUMERO: TIntegerField;
    cdsDadosCODCENTRO: TIntegerField;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosCODPLANO: TIntegerField;
    cdsDadosESTORNO_CODUSUARIO: TIntegerField;
    cdsDadosESTORNO_CODESTORNO: TIntegerField;
    cdsDadosESTORNO_CODRELANC: TIntegerField;
    cdsDadosESTORNO_NOMEUSER: TStringField;
    cdsDadosCODORIGEM: TIntegerField;
    cdsDadosBUSCA_DATACAD: TDateField;
    cdsDadosBUSCA_DATAVEN: TDateField;
    cdsDadosBUSCA_DATAPAG: TDateField;
    cdsDadosNOME: TStringField;
    cxGrid1DBTableView1BUSCA_DATAVEN: TcxGridDBColumn;
    cdsDadosLOG_USUARIO: TStringField;
    cdsDadosLOG_TIPO: TStringField;
    cdsDadosLOG_MAQUINA: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    pnlVendaOS: TPanel;
    lbCODMOVIMENTO: TLabel;
    lbNUMERO: TLabel;
    Label1: TLabel;
    dedCODMOVIMENTO: TcxDBTextEdit;
    dedNUMERO: TcxDBTextEdit;
    dedCLIENTE2: TcxTextEdit;
    pnlHISTORICO: TPanel;
    lbCADAST: TLabel;
    dedCADAST: TcxDBTextEdit;
    pnlVencimento: TPanel;
    lbDOCUMENTO: TLabel;
    lbVALOR: TLabel;
    lbVENCIMENTO: TLabel;
    dedDOCUMENTO: TcxDBLookupComboBox;
    dedVALOR: TcxDBTextEdit;
    dedVENCIMENTO: TcxDBDateEdit;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
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
    DBTableView1: TcxGridDBTableView;
    DBTableView1LOG_TIPO: TcxGridDBColumn;
    DBTableView1LOG_USUARIO: TcxGridDBColumn;
    DBTableView1LOG_MAQUINA: TcxGridDBColumn;
    DBTableView1LOG_DATAREMOTO: TcxGridDBColumn;
    DBTableView1LOG_DATASERVIDOR: TcxGridDBColumn;
    Level1: TcxGridLevel;
    cxGridLog2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2LOG_CAMPO: TcxGridDBColumn;
    cxGrid2DBTableView2LOG_VALORANTIGO: TcxGridDBColumn;
    cxGrid2DBTableView2LOG_VALORNOVO: TcxGridDBColumn;
    cxGrid2Level2: TcxGridLevel;
    tmrLog: TTimer;
    btnBaixar: TdxBarButton;
    pnlCentros: TPanel;
    Label2: TLabel;
    lbPlanConta: TLabel;
    dlbCentro: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    dsrCentros: TDataSource;
    cdsDadosCAD_SEMANA_FLUXO: TIntegerField;
    cdsDadosCAD_MES_FLUXO: TIntegerField;
    cdsDadosCAD_TRIMESTRE_FLUXO: TIntegerField;
    cdsDadosCAD_QUADRIMESTRE_FLUXO: TIntegerField;
    cdsDadosCAD_SEMESTRE_FLUXO: TIntegerField;
    cdsDadosCAD_ANO_FLUXO: TIntegerField;
    cdsDadosCAD_STR_SEMANA_FLUXO: TStringField;
    cdsDadosCAD_STR_MES_FLUXO: TStringField;
    cdsDadosCAD_STR_BIMESTRE_FLUXO: TStringField;
    cdsDadosCAD_STR_TRIMESTRE_FLUXO: TStringField;
    cdsDadosCAD_STR_QUADRIMESTRE_FLUXO: TStringField;
    cdsDadosCAD_STR_SEMESTRE_FLUXO: TStringField;
    cdsDadosCAD_BIMESTRE_FLUXO: TIntegerField;
    cdsDadosVEN_SEMANA_FLUXO: TIntegerField;
    cdsDadosVEN_MES_FLUXO: TIntegerField;
    cdsDadosVEN_TRIMESTRE_FLUXO: TIntegerField;
    cdsDadosVEN_QUADRIMESTRE_FLUXO: TIntegerField;
    cdsDadosVEN_SEMESTRE_FLUXO: TIntegerField;
    cdsDadosVEN_ANO_FLUXO: TIntegerField;
    cdsDadosVEN_STR_SEMANA_FLUXO: TStringField;
    cdsDadosVEN_STR_MES_FLUXO: TStringField;
    cdsDadosVEN_STR_BIMESTRE_FLUXO: TStringField;
    cdsDadosVEN_STR_TRIMESTRE_FLUXO: TStringField;
    cdsDadosVEN_STR_QUADRIMESTRE_FLUXO: TStringField;
    cdsDadosVEN_STR_SEMESTRE_FLUXO: TStringField;
    cdsDadosVEN_BIMESTRE_FLUXO: TIntegerField;
    cdsDadosPAG_SEMANA_FLUXO: TIntegerField;
    cdsDadosPAG_MES_FLUXO: TIntegerField;
    cdsDadosPAG_TRIMESTRE_FLUXO: TIntegerField;
    cdsDadosPAG_QUADRIMESTRE_FLUXO: TIntegerField;
    cdsDadosPAG_SEMESTRE_FLUXO: TIntegerField;
    cdsDadosPAG_ANO_FLUXO: TIntegerField;
    cdsDadosPAG_STR_SEMANA_FLUXO: TStringField;
    cdsDadosPAG_STR_MES_FLUXO: TStringField;
    cdsDadosPAG_STR_BIMESTRE_FLUXO: TStringField;
    cdsDadosPAG_STR_TRIMESTRE_FLUXO: TStringField;
    cdsDadosPAG_STR_QUADRIMESTRE_FLUXO: TStringField;
    cdsDadosPAG_STR_SEMESTRE_FLUXO: TStringField;
    cdsDadosPAG_BIMESTRE_FLUXO: TIntegerField;
    cdsDadosPLANO: TStringField;
    cdsDadosCH_NOME: TStringField;
    cdsDadosCH_DOC: TStringField;
    pnlCheque: TPanel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    btnConjunto: TdxBarButton;
    Label12: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxCentros: TcxCheckBox;
    cdsDadosCODHISTORICO: TIntegerField;
    cdsDadosHISTORICOPAGAMENTO: TStringField;
    Panel2: TPanel;
    cdsDadosCONDPAG: TStringField;
    tabItens: TcxTabSheet;
    Panel5: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    pnlItens: TPanel;
    grdItens: TcxGrid;
    grdItensDBTableView2: TcxGridDBTableView;
    grdItensDBTableView2BARRA: TcxGridDBColumn;
    grdItensDBTableView2DESCRICAO: TcxGridDBColumn;
    grdItensDBTableView2QUANTIDADE: TcxGridDBColumn;
    grdItensDBTableView2VALOR_PAGO: TcxGridDBColumn;
    grdItensLevel2: TcxGridLevel;
    cdsMovInfo: TClientDataSet;
    dsrMovInfo: TDataSource;
    cdsMovInfoSTATUS: TStringField;
    cdsMovInfoNOTA_NUMERO: TIntegerField;
    cdsMovInfoNOTA_DATAEMISSAO: TSQLTimeStampField;
    cdsMovInfoNOTA_VALOR_TOTAL: TFMTBCDField;
    cdsMovInfoNOME_VENDEDOR: TStringField;
    cdsMovInfoNOTA_CODNATUOPER: TStringField;
    cdsMovInfoTIPODOC: TStringField;
    Label16: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    Label20: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label22: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    tabDatas: TcxTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label23: TLabel;
    dedDATAVENCIMENTO: TcxDBDateEdit;
    Label24: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    tmrCONDICAO: TTimer;
    cdsFuturos: TClientDataSet;
    dsrFuturos: TDataSource;
    memFuturos: TdxMemData;
    memFuturosDATA: TDateTimeField;
    provFuturos: TDataSetProvider;
    cdsFuturosRecId: TIntegerField;
    cdsFuturosDATA: TDateTimeField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarButton6: TdxBarButton;
    cdsDadosNUMDOC: TIntegerField;
    cdsDadosDATADOC: TDateField;
    cdsDadosTIPODOC: TStringField;
    cxDBTextEdit12: TcxDBTextEdit;
    Label3: TLabel;
    Label25: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cdsDadosEXCLUSAO_NOMEUSER: TStringField;
    Label26: TLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    Label27: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxGrid1DBTableView1NUMDOC: TcxGridDBColumn;
    cxGrid1DBTableView1DATADOC: TcxGridDBColumn;
    cdsDadosCODANTIGO: TIntegerField;
    cxGrid1DBTableView1CODANTIGO: TcxGridDBColumn;
    Label31: TLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cdsEstornoFin: TClientDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    FMTBCDField1: TFMTBCDField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    dxBarButton7: TdxBarButton;
    cdsDadosCAD_DATA_FLUXO: TDateField;
    cdsDadosVEN_DATA_FLUXO: TDateField;
    cdsDadosPAG_DATA_FLUXO: TDateField;
    cdsCentro: TClientDataSet;
    cdsCentroCODIGO: TIntegerField;
    cdsCentroDESCRICAO: TStringField;
    cdsCentroTIPO: TStringField;
    cdsDadosVALOR: TFloatField;
    cdsDadosEXTENSO: TStringField;
    cdsDadosDESCONTO: TFloatField;
    cdsDadosMULTA_JUROS: TFloatField;
    cdsDadosTOTAL_PAGO: TFloatField;
    cdsDadosSALDOANT: TFloatField;
    cdsDadosSALDOATU: TFloatField;
    cdsDadosVALOR_COMISSAO: TFloatField;
    cdsDadosVALOR_FLUXO: TFloatField;
    cdsDadosDATACADAST: TSQLTimeStampField;
    cdsDadosDATAPAGO: TSQLTimeStampField;
    cdsDadosDATAVENCIMENTO: TSQLTimeStampField;
    cdsDadosESTORNO_DATA: TSQLTimeStampField;
    cdsDadosLOG_DATAREMOTO: TSQLTimeStampField;
    cdsDadosEXCLUSAO_DATAHORA: TSQLTimeStampField;
    cxGrid1DBTableView1PLANO: TcxGridDBColumn;
    cdsDadosDOCUMENTO: TStringField;
    cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn;
    Label32: TLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxGrid1DBTableView1TIPODOC: TcxGridDBColumn;
    Label33: TLabel;
    dedINFODOC: TcxDBTextEdit;
    procedure btnModificarClick(Sender: TObject); override;
    procedure FormShow(Sender: TObject);
    procedure lbCODCLIENTEClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure tmrLogTimer(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure lbPlanContaClick(Sender: TObject);
    procedure cdsDadosDATACADASTChange(Sender: TField);
    procedure cdsDadosDATAVENCIMENTOChange(Sender: TField);
    procedure cdsDadosDATAPAGOChange(Sender: TField);
    procedure btnConjuntoClick(Sender: TObject);
    procedure cdsDadosCODDOCUMENTOChange(Sender: TField);
    procedure Label11Click(Sender: TObject);
    procedure cxCentrosClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tmrCONDICAOTimer(Sender: TObject);
    procedure memFuturosDATAChange(Sender: TField);
    procedure cdsFuturosDATAChange(Sender: TField);
    procedure cxGridDBColumn1SetStoredPropertyValue(
      Sender: TcxCustomGridTableItem; const AName: String;
      const AValue: Variant);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject); override;
    procedure dxBarButton7Click(Sender: TObject);
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formContaModelo: TformContaModelo;

implementation

uses principal, pessoas, data_log,
  plancontas, baixa, historicopag, data_os;

{$R *.dfm}

{####################################################################}
{##                                                                ##}
{##  FORMULARIO                                                    ##}
{##                                                                ##}
{####################################################################}

procedure TformContaModelo.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

procedure TformContaModelo.btnModificarClick(Sender: TObject);
begin
  pnlLog.Visible := False;
  pnlItens.Visible := False;
  cxCentros.Checked := False;
  cxCentrosClick(Sender);

  if not cdsCentro.Active then
    cdsCentro.Open;
  if not formPrincipal.cdsDocumentos.Active then
    formPrincipal.cdsDocumentos.Open;

  inherited;

  cxPageControl1.ActivePage := cxTabSheet1;

  { nome da empresa }
  dedEMPRESA.Text := formPrincipal.cdsPerfil.fieldByName('EMP_NOME').AsString;

  { nome do cliente }
  dedCLIENTE2.Text := cdsDados.fieldByName('NOME').AsString;

  { venda/os ou somente cliente? }
  if cdsDados.FieldByName('CODMOVIMENTO').IsNull then
   begin
     pnlCliente.Visible := True;
     pnlVendaOs.Visible := False;
     tabItens.TabVisible := False;
   end else
   begin
     pnlCliente.Visible := False;
     pnlVendaOs.Visible := True;
     tabItens.TabVisible := True;
   end;

  tabDatas.TabVisible := False;


  cdsDadosCODDOCUMENTOChange(cdsDadosCODDOCUMENTO);

end;

procedure TformContaModelo.FormShow(Sender: TObject);
begin
  inherited;

  btnBaixar.Visible := ivAlways;
  btnConjunto.Visible := ivNever;

end;

procedure TformContaModelo.lbCODCLIENTEClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPessoas := TformPessoas.Create(Self);
    formPessoas.Transferir := True;
    formPessoas.MultiSelect := False;
    formPessoas.Tag :=
      formPrincipal.actPessoas.Tag;
    if formPessoas.ShowModal = mrOk then
     if formPessoas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODCLIENTE').AsInteger :=
          formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('NOME').AsString :=
          formPessoas.cdsDados.FieldByName('NOME').AsString;
      end;
  finally
    try
      { destruo o form }
      formPessoas.Release;
    except
    end
  end

end;

procedure TformContaModelo.cxPageControl1Change(Sender: TObject);
begin
  inherited;

  { log }
  if cxPageControl1.ActivePage = cxTabSheet3 then
   begin
     if (not pnlLog.Visible) then
       tmrLog.Enabled := True;
   end;

  { mostro os itens, se houver }
  if (cxPageControl1.ActivePage = tabItens) and (not pnlItens.Visible) then
   begin

     with cdsMovInfo do
      try
        if active then close;
        params[0].AsInteger := cdsDados.fieldByName('CODMOVIMENTO').AsInteger;
        formPrincipal.ShowMsg('Verificando dados...');
        open;
        formPrincipal.HideMsg;
      except
        on exception do
         begin
           RemoteServer.Close;
           formPrincipal.HideMsg;
         end;
      end;

     with dmoOS.cdsItens do
      try
        if active then close;
        params[0].AsInteger := cdsDados.fieldByName('CODMOVIMENTO').AsInteger;
        formPrincipal.ShowMsg('Lendo Produtos e Serviços...');
        open;
        RemoteServer.Close;
        pnlItens.Visible := True;
        grdItens.Visible := not IsEmpty;
        if not grdItens.Visible then
          pnlItens.Caption := 'Nenhum produto ou serviço.';
        formPrincipal.HideMsg;
      except
        on exception do
         begin
           RemoteServer.Close;
           formPrincipal.HideMsg;
           raise;
         end;
      end;

   end;

end;

procedure TformContaModelo.tmrLogTimer(Sender: TObject);
begin
  inherited;
  tmrLog.Enabled := False;
  if dmoLog.OpenLog('PAGAMENTOS', cdsDados) then
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

procedure TformContaModelo.btnAdicionarClick(Sender: TObject);
begin
  pnlLog.Visible := False;
  pnlCliente.Visible := True;
  pnlVendaOs.Visible := False;
  tabItens.TabVisible := False;
  pnlItens.Visible := False;
  cxCentros.Checked := False;
  cxCentrosClick(Sender);
  cxPageControl1.ActivePage := cxTabSheet1;
  tabDatas.TabVisible := True;
  if not cdsCentro.Active then
    cdsCentro.Open;
  if not formPrincipal.cdsDocumentos.Active then
    formPrincipal.cdsDocumentos.Open;
  inherited;
end;

procedure TformContaModelo.FormCreate(Sender: TObject);
begin
  inherited;

  EnableRefresh;
  
  dmoLog := TdmoLog.Create(Self);
  SetOrderBy('PAGAMENTOS.CODIGO DESC');

  AdicionarCampo('CODIGO', 'PAGAMENTOS.CODIGO');
  AdicionarCampo('DESCRICAO', 'PAGAMENTOS.DESCRICAO');
  AdicionarCampo('PLANO', 'PLANCONTAS.DESCRICAO');
  AdicionarCampo('HISTORICOPAGAMENTO', 'HISTORICOPAG.DESCRICAO');
  AdicionarCampo('DOCUMENTO', 'DOCUMENTOS.DOCUMENTO');

  SetCampoSoma('VALOR', 'Total');
  SetEmpresaFilter('PAGAMENTOS.CODEMPRESA');

  SetCampoRodape('VALOR', 'T=#,##0.00', 'SUM');

  { estou usando dmoOS para apresentar os itens }
  dmoOS := TdmoOS.Create(Self);
end;

procedure TformContaModelo.btnBaixarClick(Sender: TObject);
var
  codcliente: longint;
  movimentos, temp, nome: string;
  valor: extended;
  contador: integer;
  b: longint;
begin
  inherited;

  if not cdsDados.Active then exit;
  if no_sel = 0 then exit;

  { arranjo as baixas e verifico se é o mesmo cliente }
  with cdsDados do
   begin
     b := fieldByName('CODIGO').AsInteger;
     SelectFilter;
     movimentos := '';
     valor := 0;
     first;
     codcliente := fieldByName('CODCLIENTE').AsInteger;
     nome := fieldByName('NOME').AsString;
     contador := 0;
     while not eof do
      begin

        { se for o mesmo cliente }
        if codcliente = fieldByName('CODCLIENTE').AsInteger then
         begin

           { descrição do identificador do pagamento }
           if fieldByName('CODMOVIMENTO').IsNull then
            begin
              movimentos := movimentos +
                fieldByName('CODIGO').AsString + ' ';
            end else
            begin
              temp := fieldByName('NUMERO').AsString;
              while length(temp) < 2 do
                temp := '0' + temp;
              movimentos := movimentos +
                fieldByName('CODMOVIMENTO').AsString + '/' +
                temp + ' ';
            end;

           { soma dos valores }
           valor := valor +
             fieldByName('TOTAL_PAGO').AsFloat;

           inc(contador);

         end else
         begin

           formPrincipal.MsgError(
             'Os pagamentos selecionados precisam ser da mesma pessoa.',
             'Erro de seleção');

           SelectRelease;
           Locate('CODIGO', b, []);

           exit;

         end;

        next;

      end;

     SelectRelease;
     Locate('CODIGO', b, []);

   end;

  { chamo o form }
  try
    formBaixa := TformBaixa.Create(Self);
    formBaixa.codigo :=
      cdsDados.fieldByName('CODIGO').AsInteger;
    formBaixa.codcliente :=
      codcliente;
    formBaixa.cliente :=
      nome;
    formBaixa.movimentos :=
      movimentos;
    formBaixa.valor :=
      valor;
    formBaixa.codconta :=
      cdsDados.FieldByName('CODCONTA').AsInteger;
    formBaixa.contador :=
      contador;
    formBaixa.pagar :=
      (cdsDados.FieldByName('ES').AsInteger = 1);
    if formBaixa.ShowModal = mrOk then
      Recarregar('CODIGO');
  finally
    try
      { destruo o form }
      formBaixa.Release;
    except
    end
  end

end;

procedure TformContaModelo.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  pnlVendaOS.Visible := False;

  { sequencia }
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'PAGAMENTOS',
    LerSequencia);

  with cdsDados do
   begin
     fieldByName('CODEMPRESA').AsInteger := formPrincipal.codempresa;
     dedEMPRESA.Text := formPrincipal.cdsPerfil.fieldByName('EMP_NOME').AsString;
     fieldByName('DATACADAST').AsDateTime := now;
     fieldByName('NUMERO').AsInteger := 1;
     fieldByName('EXTERNO').AsString := 'S';
     fieldByName('PAGO').AsInteger := 0;
     fieldByName('DESCONTO').AsFloat := 0;
     fieldByName('MULTA_JUROS').AsFloat := 0;
     fieldByName('SALDOANT').AsFloat := 0;
     fieldByName('SALDOATU').AsFloat := 0;
     fieldByName('VALOR_COMISSAO').AsFloat := 0;
     fieldByName('TIPO_DOC').AsString := 'D';
     fieldByName('TIPO_PAG').AsString := 'A';
   end;
end;

procedure TformContaModelo.lbPlanContaClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPlanContas := TformPlanContas.Create(Self);
    formPlanContas.AutoLoad := True;
    formPlanContas.Transferir := True;
    formPlanContas.TAg :=
      formPrincipal.actPlancontas.Tag;
    if formPlanContas.ShowModal = mrOk then
     if formPlanContas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODPLANO').AsInteger :=
          formPlanContas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('PLANO').AsString :=
          formPlanContas.cdsDados.FieldByName('SINTETICO').AsString;
      end;
  finally
    try
      { destruo o form }
      formPlanContas.Release;
    except
    end
  end

end;

procedure TformContaModelo.cdsDadosDATACADASTChange(Sender: TField);
begin
  inherited;
  cdsDadosBUSCA_DATACAD.AsDateTime := Sender.AsDateTime;
end;

procedure TformContaModelo.cdsDadosDATAVENCIMENTOChange(Sender: TField);
begin
  inherited;
  cdsDadosBUSCA_DATAVEN.AsDateTime := Sender.AsDateTime;
end;

procedure TformContaModelo.cdsDadosDATAPAGOChange(Sender: TField);
begin
  inherited;
  cdsDadosBUSCA_DATAPAG.AsDateTime := Sender.AsDateTime;
end;

procedure TformContaModelo.btnConjuntoClick(Sender: TObject);
begin
  inherited;
  repeat until true;
end;

procedure TformContaModelo.cdsDadosCODDOCUMENTOChange(Sender: TField);
begin
  inherited;

  { painel com dados do cheque }
   try
     if formPrincipal.cdsDocumentos.Locate('CODIGO', Sender.AsInteger, []) then
      begin
        pnlCheque.Visible := (formPrincipal.cdsDocumentosTIPO_DOC.AsString = 'C');
        if cdsDados.State in [dsEdit, dsInsert] then
          cdsDadosDOCUMENTO.AsString := formPrincipal.cdsDocumentosDOCUMENTO.AsString;
      end;
   except
     pnlCheque.Visible := False;
   end;

end;

procedure TformContaModelo.Label11Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formHistoricoPag := TformHistoricoPag.Create(Self);
    formHistoricoPag.AutoLoad := True;
    formHistoricoPag.Transferir := True;
    formHistoricoPag.MultiSelect := False;
    formHistoricoPag.Tag :=
      formPrincipal.actHistoricoPag.Tag;
    if formHistoricoPag.ShowModal = mrOk then
     if formHistoricoPag.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODHISTORICO').AsInteger :=
          formHistoricoPag.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('HISTORICOPAGAMENTO').AsString :=
          formHistoricoPag.cdsDados.FieldByName('DESCRICAO').AsString;
        cdsDados.FieldByName('CODCENTRO').AsInteger :=
          formHistoricoPag.cdsDados.FieldByName('CODCENTRO').AsInteger;
        cdsDados.FieldByName('CODPLANO').AsInteger :=
          formHistoricoPag.cdsDados.FieldByName('CODPLANO').AsInteger;
        cdsDados.FieldByName('PLANO').AsString :=
          formHistoricoPag.cdsDados.FieldByName('PLANO').AsString;
      end;
  finally
    try
      { destruo o form }
      formHistoricoPag.Release;
    except
    end
  end;

end;

procedure TformContaModelo.cxCentrosClick(Sender: TObject);
begin
  inherited;

  { exibo/oculto o painel conforme a marcação }
  pnlCentros.Visible := cxCentros.Checked;
  
  { desativo os controles de centros e plano de contas se houver histórico }
  dlbCentro.Enabled := (cdsDadosCODHISTORICO.AsInteger = 0);
  lbPlanConta.Enabled := (cdsDadosCODHISTORICO.AsInteger = 0);

end;

procedure TformContaModelo.cxButton1Click(Sender: TObject);
var
  dataini: TDateTime;
begin
  inherited;

  { pego a data inicial }
  dataini := dedDATAVENCIMENTO.Date;

  { pego a ultima data da tabela }
  if not cdsFuturos.Active then
    cdsFuturos.Active := True;

  { tenho registros? }
  if cdsFuturos.IsEmpty then
   begin
     dataini := dataini + 30;
   end else
   begin
     cdsFuturos.RecNo := cdsFuturos.RecordCount;
     dataini := cdsFuturos.fieldByName('DATA').AsDateTime + 30;
   end;

  { insiro a data }
  cdsFuturos.AppendRecord([nil, dataini]);

end;

procedure TformContaModelo.tmrCONDICAOTimer(Sender: TObject);
var
  dataini: TDateTime;
  dias: integer;
  condicao: string;
begin
  inherited;

  tmrCONDICAO.Enabled := False;

  { pego a data inicial }
  dataini := cdsDados.FieldByName('DATAVENCIMENTO').AsDateTime;

  { varro a tabela }
  with cdsFuturos do
   try
     condicao := '';
     disablecontrols;
     first;
     while not eof do
      begin
        dias := trunc(fieldByName('DATA').AsDateTime - dataini);
        condicao := condicao + IntToStr(dias) + '/';
        next;
      end;
     enablecontrols;
   except
     on exception do
       enablecontrols;
   end;

  { atualizo a condicao }
  cdsDados.FieldByName('CONDPAG').AsString := condicao;

end;

procedure TformContaModelo.memFuturosDATAChange(Sender: TField);
begin
  inherited;
  tmrCONDICAO.Enabled := True;
end;

procedure TformContaModelo.cdsFuturosDATAChange(Sender: TField);
begin
  inherited;
  tmrCONDICAO.Enabled := True;
end;

procedure TformContaModelo.cxGridDBColumn1SetStoredPropertyValue(
  Sender: TcxCustomGridTableItem; const AName: String;
  const AValue: Variant);
begin
  inherited;
  tmrCONDICAO.Enabled := True;
end;

procedure TformContaModelo.dxBarButton6Click(Sender: TObject);
begin
  inherited;
//  try
//    formReportContasPagas := TformReportContasPagas.Create(Self);
//    formReportContasPagas.ShowModal;
//  finally
//    formReportContasPagas.Release;
//  end;
end;

procedure TformContaModelo.cxButton2Click(Sender: TObject);
begin
  inherited;
  cdsFuturos.Delete;
end;

procedure TformContaModelo.btnExcluirClick(Sender: TObject);
begin

  if cdsDadosPAGO.AsInteger = 0 then
   begin
     Liberar;
     if cdsDadosES.AsInteger = 1 then
      begin
        cdsDadosES.AsInteger := 3;
        cdsDadosEXCLUSAO_NOMEUSER.AsString := formPrincipal.usuario;
        cdsDadosEXCLUSAO_DATAHORA.AsDateTime := formPrincipal.GetTime;
      end else
     if cdsDadosES.AsInteger = 2 then
      begin
        cdsDadosES.AsInteger := 4;
        cdsDadosEXCLUSAO_NOMEUSER.AsString := formPrincipal.usuario;
        cdsDadosEXCLUSAO_DATAHORA.AsDateTime := formPrincipal.GetTime;
      end else
     if cdsDadosES.AsInteger = 3 then
       cdsDadosES.AsInteger := 1 else
     if cdsDadosES.AsInteger = 4 then
       cdsDadosES.AsInteger := 2;
     btnSalvarClick(Sender);
     Recarregar('CODIGO');
   end else
   begin
     try
       btnCancelarClick(Sender);
       cdsEstornoFin.Params[0].AsInteger :=
         cdsDadosCODIGO.AsInteger;
       cdsEstornoFin.Params[1].AsInteger :=
         formPrincipal.codusuario;
       cdsEstornoFin.Execute;
       cdsEstornoFin.RemoteServer.Close;
       Recarregar('CODIGO');
     except
       on exception do
        begin
          raise;
        end;
     end;
   end;

//  inherited;

end;

procedure TformContaModelo.dxBarButton7Click(Sender: TObject);
var
  selecionados: string;
begin
  inherited;

  { monto a linha de selecionados }
  selecionados := '';
  SelectFilter;
  with cdsDados do
   try
     first;
     while not eof do
      begin
        if selecionados > '' then
          selecionados := selecionados + ',';
        selecionados := selecionados + fieldByName('CODIGO').AsString;
        next;
      end;
   except
   end;
  SelectRelease;

  { se não houver selecionados }
  if selecionados = '' then
   begin
     formPrincipal.MsgError(
       'Por favor, selecione as Duplicatas que deseja imprimir.',
       'Seleção');
     exit;
   end;

//  { relatórios customizados }
//  formPrincipal.ShowMsg(Self, 'Gerando Duplicata(s)...');
//  formPrincipal.reportPrepare('DuplicataModelo1');
//  formPrincipal.reportParam(
//    selecionados);
//  formPrincipal.reportOpen;

end;

end.
