unit servicos;
                  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxmdaset, Menus, ActnList, dxBar, dxPSCore, ExtCtrls,
  DBClient, dxBarExtItems, cxClasses, dxStatusBar, DBCtrls, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCheckBox, cxDBEdit, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer,
  cxTextEdit, StdCtrls, thSequencia, dxPScxCommon,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxNavigator,
  dxSkinsdxRibbonPainter, dxSkinDevExpressStyle;

type
  TformServicos = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosUNIDADE: TStringField;
    cdsDadosGRUPO: TIntegerField;
    cdsDadosMINIMO: TFloatField;
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
    cdsDadosMARGEM: TFloatField;
    cdsDadosCODCENTRO: TIntegerField;
    cdsDadosPRECOSERVICO: TFloatField;
    cdsDadosPRECOTOTAL: TFloatField;
    cdsDadosATIVACAO: TStringField;
    cdsDadosCADEQUIPAMENTO: TStringField;
    cdsDadosTIPOPRODUTO: TStringField;
    cdsDadosCODMARCA: TIntegerField;
    cdsDadosCODMODELO: TIntegerField;
    cdsDadosGARANTIA: TIntegerField;
    cdsDadosLOG_USUARIO: TStringField;
    cdsDadosLOG_TIPO: TStringField;
    cdsDadosLOG_MAQUINA: TStringField;
    cdsDadosMATPRIMA: TStringField;
    cdsDadosCLASSFISCAL: TStringField;
    cdsDadosCAIXA_ITENS: TIntegerField;
    cdsDadosICMS_BASE: TFloatField;
    cdsDadosPRECOVENDA2: TFloatField;
    cdsDadosPRECOVENDA3: TFloatField;
    cdsDadosPESO: TFloatField;
    cdsDadosMARGEM2: TFloatField;
    cdsDadosMARGEM3: TFloatField;
    cdsDadosCENTRO: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedDESCRICAO: TcxDBTextEdit;
    dedPRECOVENDA: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dedBARRA: TcxDBTextEdit;
    dblUnidade: TcxDBLookupComboBox;
    dblGrupo: TcxDBLookupComboBox;
    tabCusto: TcxTabSheet;
    lbMargem: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    DEDMARGEM: TcxDBTextEdit;
    DEDVENDA: TcxDBTextEdit;
    DEDCUSTO: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    ckCOMISSIONADO: TcxDBCheckBox;
    cxTabSheet7: TcxTabSheet;
    Label22: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBCheckBox1: TcxDBCheckBox;
    cxTabSheet3: TcxTabSheet;
    Label21: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxTabSheet4: TcxTabSheet;
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
    cxGrid1DBTableView1OCULTO: TcxGridDBColumn;
    cdsDadosPRECOCUSTO: TFMTBCDField;
    cdsDadosPRECOVENDA: TFMTBCDField;
    cdsDadosICMS: TFloatField;
    cdsDadosDATACADAST: TSQLTimeStampField;
    cdsDadosLOG_DATAREMOTO: TSQLTimeStampField;
    lbTributos: TLabel;
    dedTributos: TcxDBTextEdit;
    cdsDadosCODNCM: TIntegerField;
    cdsDadosSITTRIBU: TStringField;
    cdsDadosPARTNUMBER: TStringField;
    cdsDadosTRIBUTOS: TFloatField;
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure cdsDadosCODIGOChange(Sender: TField);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint); virtual;
  public
    { Public declarations }
    procedure AlteraPreco(Sender: TField);
    procedure AlteraMargem(Sender: TField);
  end;

var
  formServicos: TformServicos;

implementation

uses principal, centros, funcoes, unidades, grupos;

{$R *.dfm}

procedure TformServicos.AlteraPreco(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho da margem }
  cdsDadosMARGEM.OnChange := nil;

  { calculo a margem }
  mora  := 0.0;
  custo := cdsDadosPRECOCUSTO.AsFloat;
  venda := cdsDadosPRECOVENDA.AsFloat;
  if (venda > custo) and (custo > 0.0) then
    mora := ((venda * 100) / custo) - 100 else
    if (custo = 0.0) and (venda > 0.0) then mora := (venda * 100) / venda;
  if (cdsDados.State in [dsEdit, dsInsert]) then
     cdsDadosMARGEM.AsFloat := mora;

  { reativo o gatilho da margem }
  cdsDadosMARGEM.OnChange := AlteraMargem;

end;

procedure TformServicos.AlteraMargem(Sender: TField);
var
  custo, venda, mora: extended;
begin

  { desativo o gatilho dos preços }
  cdsDadosPRECOCUSTO.OnChange := nil;
  cdsDadosPRECOVENDA.OnChange := nil;

  { calculo o preço de venda }
  mora  := cdsDadosMARGEM.AsFloat;
  custo := cdsDadosPRECOCUSTO.AsFloat;
  venda := custo * (1 + (mora / 100));
  if cdsDados.State in [dsEdit, dsInsert] then
     cdsDadosPRECOVENDA.AsFloat := venda;

  { reativo o gatilho dos preços }
  cdsDadosPRECOCUSTO.OnChange := AlteraPreco;
  cdsDadosPRECOVENDA.OnChange := AlteraPreco;

end;

procedure TformServicos.Label23Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formCentros := TformCentros.Create(Self);
    formCentros.AutoLoad := True;
    formCentros.Transferir := True;
    formCentros.MultiSelect := False;
    formCentros.Tag := formPrincipal.actServicos.Tag;
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

procedure TformServicos.Label8Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formUnidades := TformUnidades.Create(Self);
    formUnidades.AutoLoad := True;
    formUnidades.Transferir := True;
    formUnidades.MultiSelect := False;
    formUnidades.Tag := formPrincipal.actUnidades.Tag;
    if formUnidades.ShowModal = mrOk then
     if formUnidades.cdsDados.Active then
      begin
        Liberar;
        formPrincipal.dsrUnidades.DataSet.Refresh;
        cdsDados.FieldByName('UNIDADE').AsString :=
          formUnidades.cdsDados.FieldByName('SIGLA').AsString;
      end;
  finally
    try
      { destruo o form }
      formUnidades.Release;
    except
    end
  end

end;

procedure TformServicos.Label9Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formGrupos := TformGrupos.Create(Self);
    formGrupos.AutoLoad := True;
    formGrupos.Transferir := True;
    formGrupos.MultiSelect := False;
    formGrupos.Tag := formPrincipal.actGrupos.Tag;
    if formGrupos.ShowModal = mrOk then
     if formGrupos.cdsDados.Active then
      begin
        Liberar;
        formPrincipal.dsrGrupos.DataSet.Refresh;
        cdsDados.FieldByName('GRUPO').AsInteger :=
          formGrupos.cdsDados.FieldByName('CODIGO').AsInteger;
      end;
  finally
    try
      { destruo o form }
      formGrupos.Release;
    except
    end
  end

end;

procedure TformServicos.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

procedure TformServicos.btnAdicionarClick(Sender: TObject);
begin
  if not formPrincipal.cdsGrupos.Active then
    formPrincipal.cdsGrupos.Open;
  if not formPrincipal.cdsUnidades.Active then
    formPrincipal.cdsUnidades.Open;

  inherited;
  tabCusto.TabVisible := True;
  ckCOMISSIONADO.Enabled := True;
  pnlLog.Visible := False;
  if dedDescricao.CanFocus then
    dedDescricao.SetFocus;
end;

procedure TformServicos.btnModificarClick(Sender: TObject);
begin
  pnlLog.Visible := False;
  if not formPrincipal.cdsGrupos.Active then
    formPrincipal.cdsGrupos.Open;
  if not formPrincipal.cdsUnidades.Active then
    formPrincipal.cdsUnidades.Open;

  inherited;
  tabCusto.TabVisible :=
    formPrincipal.cdsUsuarios.fieldByName('CUSTO').AsString = 'S';
  ckCOMISSIONADO.Enabled :=
    formPrincipal.cdsUsuarios.fieldByName('FINANCEIRO').AsString = 'S';
  if dedDescricao.CanFocus then
    dedDescricao.SetFocus;
end;

procedure TformServicos.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  inherited;

  { gatilhos de preço e margem }
  with cdsDados do
   begin
     fieldByName('PRECOCUSTO').OnChange   := AlteraPreco;
     fieldByName('MARGEM').OnChange       := AlteraMargem;
   end;

end;

procedure TformServicos.cdsDadosCODIGOChange(Sender: TField);
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
          barra := '1' + barra;
        cdsDadosBARRA.AsString := funcoes.Ean13(
          barra + '00000');
      end;
   end;
end;

procedure TformServicos.cdsDadosNewRecord(DataSet: TDataSet);
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
     fieldByName('PS').AsString := 'S';
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
   end;

end;

procedure TformServicos.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO', 'PO.CODIGO');
  AdicionarCampo('DESCRICAO', 'PO.DESCRICAO');
  AdicionarCampo('BARRA', 'PO.BARRA');
  AdicionarCampo('LOCALIZACAO', 'PO.LOCALIZACAO');
  AdicionarCampo('OCULTO', 'PO.OCULTO');
  AdicionarCampo('MARCA', 'MA.DESCRICAO');
  SetCampoSoma('PRECOVENDA', 'Total');

  SetOrderBy('PO.CODIGO DESC');
end;

end.
