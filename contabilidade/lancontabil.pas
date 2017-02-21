unit lancontabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxmdaset, Menus, ActnList, dxBar, dxPSCore,
  dxPScxCommon, ExtCtrls, DBClient, dxBarExtDBItems,
  dxBarExtItems, dxStatusBar, DBCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCheckBox, cxMemo, cxDBEdit,
  cxContainer, cxTextEdit, StdCtrls, thsequencia,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TformLanContabil = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosOBSERVACOES: TStringField;
    cdsDadosCONTADEBITO: TIntegerField;
    cdsDadosCONTACREDITO: TIntegerField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTADEBITO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTACREDITO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cdsDadosDEBITO: TStringField;
    cdsDadosCREDITO: TStringField;
    cxGrid1DBTableView1DEBITO: TcxGridDBColumn;
    cxGrid1DBTableView1CREDITO: TcxGridDBColumn;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cdsPlanContas: TClientDataSet;
    cdsPlanContasCODIGO: TIntegerField;
    cdsPlanContasCODPAI: TIntegerField;
    cdsPlanContasCODPLANO: TStringField;
    cdsPlanContasDESCRICAO: TStringField;
    cdsPlanContasTIPO: TStringField;
    cdsPlanContasOBSERVACOES: TStringField;
    cdsPlanContasSINTETICO: TStringField;
    cdsPlanContasFINAL: TStringField;
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosCONTADEBITOChange(Sender: TField);
    procedure cdsDadosCONTACREDITOChange(Sender: TField);
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formLanContabil: TformLanContabil;

implementation

uses principal, plancontas;

{$R *.dfm}

procedure TformLanContabil.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

procedure TformLanContabil.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  { sequencia }
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'CONTABIL',
    LerSequencia);

end;

procedure TformLanContabil.Label4Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPlanContas := TformPlanContas.Create(Self);
    formPlanContas.AutoLoad := True;
    formPlanContas.Transferir := True;
    if formPlanContas.ShowModal = mrOk then
     if formPlanContas.cdsDados.Active then
      begin
        if formPlanContas.cdsDadosFINAL.AsString = 'S' then
         begin
           Liberar;
           cdsDados.FieldByName('CONTADEBITO').AsInteger :=
             formPlanContas.cdsDados.FieldByName('CODIGO').AsInteger;
           cdsDados.FieldByName('DEBITO').AsString :=
             formPlanContas.cdsDados.FieldByName('SINTETICO').AsString;
         end else
           formPrincipal.MsgError(
             'A conta deve ser analítica',
             'Conta');
      end;
  finally
    try
      { destruo o form }
      formPlanContas.Release;
    except
    end
  end

end;

procedure TformLanContabil.Label5Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPlanContas := TformPlanContas.Create(Self);
    formPlanContas.AutoLoad := True;
    formPlanContas.Transferir := True;
    if formPlanContas.ShowModal = mrOk then
     if formPlanContas.cdsDados.Active then
      begin
        if formPlanContas.cdsDadosFINAL.AsString = 'S' then
         begin
           Liberar;
           cdsDados.FieldByName('CONTACREDITO').AsInteger :=
             formPlanContas.cdsDados.FieldByName('CODIGO').AsInteger;
           cdsDados.FieldByName('CREDITO').AsString :=
             formPlanContas.cdsDados.FieldByName('SINTETICO').AsString;
         end else
           formPrincipal.MsgError(
             'A conta deve ser analítica',
             'Conta');
      end;
  finally
    try
      { destruo o form }
      formPlanContas.Release;
    except
    end
  end

end;

procedure TformLanContabil.FormCreate(Sender: TObject);
begin
  inherited;

  AdicionarCampo('DESCRICAO', 'CONTABIL.DESCRICAO');
  AdicionarCampo('CODIGO', 'CONTABIL.CODIGO');
end;

procedure TformLanContabil.cdsDadosCONTADEBITOChange(Sender: TField);
begin

  if pgcDados.ActivePage = tabDetalhe then
   try
     cdsDadosCONTADEBITO.OnChange := nil;
     if Sender.IsNull or (Sender.AsInteger = 0) then
      begin
        Liberar;
        cdsDadosDEBITO.Clear;
      end else
      begin
        if cdsPlanContas.Active then
          cdsPlanContas.Close;
        cdsPlanContas.Params[0].AsInteger := Sender.AsInteger;
        cdsPlanContas.Open;
        if cdsPlanContasFINAL.AsString = 'S' then
         begin
           Liberar;
           cdsDadosDEBITO.AsString := cdsPlanContasSINTETICO.AsString;
         end else
         begin
           formPrincipal.MsgError(
             'A conta deve ser analítica',
             'Conta');
           cdsDadosCONTADEBITO.Clear;
           FocusOnField('CONTADEBITO');
         end;
      end;
   finally
     cdsDadosCONTADEBITO.OnChange := cdsDadosCONTADEBITOChange;
   end;

end;

procedure TformLanContabil.cdsDadosCONTACREDITOChange(Sender: TField);
begin

  if pgcDados.ActivePage = tabDetalhe then
   try
     cdsDadosCONTACREDITO.OnChange := nil;
     if Sender.IsNull or (Sender.AsInteger = 0) then
      begin
        Liberar;
        cdsDadosCREDITO.Clear;
      end else
      begin
        if cdsPlanContas.Active then
          cdsPlanContas.Close;
        cdsPlanContas.Params[0].AsInteger := Sender.AsInteger;
        cdsPlanContas.Open;
        if cdsPlanContasFINAL.AsString = 'S' then
         begin
           Liberar;
           cdsDadosCREDITO.AsString := cdsPlanContasSINTETICO.AsString;
         end else
         begin
           formPrincipal.MsgError(
             'A conta deve ser analítica',
             'Conta');
           cdsDadosCONTACREDITO.Clear;
           FocusOnField('CONTACREDITO');
         end;
      end;
   finally
     cdsDadosCONTACREDITO.OnChange := cdsDadosCONTACREDITOChange;
   end;

end;

end.
