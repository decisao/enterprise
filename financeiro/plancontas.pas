unit plancontas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ComCtrls, cxMaskEdit, dxPScxCommon, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, cxMemo, cxDBEdit, cxTextEdit, StdCtrls, cxContainer,
  cxGroupBox, cxRadioGroup, thSequencia, dxmdaset, dxBarExtDBItems,
  cxCheckBox, Grids, DBGrids, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxTLdxBarBuiltInMenu,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformPlancontas = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosCODPAI: TIntegerField;
    cdsDadosCODPLANO: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosTIPO: TStringField;
    cdsDadosOBSERVACOES: TStringField;
    cxGrid1DBTableView1CODPLANO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cdsDadosSINTETICO: TStringField;
    rgPAI: TcxDBRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dedDESCRICAO: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cdsDadosFINAL: TStringField;
    procedure edtSelecionarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure btnSalvarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure tmrFocusTimer(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cdsDadosAfterScroll(DataSet: TDataSet); override;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Privarations }
    codplano: integer;
    codpai: string;
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formPlancontas: TformPlancontas;

implementation

uses principal;

{$R *.dfm}

procedure TformPlancontas.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

procedure TformPlancontas.edtSelecionarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  grdDados.Visible := True;
  cxDBTreeList1.Visible := not(cdsDados.IsEmpty);
end;

procedure TformPlancontas.btnAdicionarClick(Sender: TObject);
begin
  codpai := '';
  codplano := -1;
  if cdsDados.Active then
    if not cdsDados.IsEmpty then
     begin
       codplano := cdsDados.fieldByName('CODIGO').AsInteger;
       codpai := cdsDados.fieldByName('CODPLANO').AsString + '.';
     end;
  inherited;
  rgPAI.Visible := True;
  if dedDESCRICAO.CanFocus then
    dedDESCRICAO.SetFocus;
end;

procedure TformPlancontas.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  { sequencia }
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'PLANCONTAS',
    LerSequencia);

  cdsDados.FieldByName('CODPLANO').AsString := codpai;
  cdsDados.FieldByName('TIPO').AsString := 'C';
  cdsDados.FieldByName('FINAL').AsString := 'S';

  cdsDados.FieldByName('CODPAI').AsInteger := codplano;
  if codplano > -1 then
    rgPAI.Properties.Items[1].Value := codplano;

end;

procedure TformPlancontas.btnSalvarClick(Sender: TObject);
begin
  inherited;
//  Recarregar('CODIGO');
end;

procedure TformPlancontas.btnModificarClick(Sender: TObject);
begin
  rgPAI.Visible := False;

  inherited;
end;

procedure TformPlancontas.tmrFocusTimer(Sender: TObject);
begin
  if cdsDados.Active then
    cxDBTreeList1.Visible := True;

  inherited;
end;

procedure TformPlancontas.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnModificar.Enabled := True;
end;

procedure TformPlancontas.cdsDadosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnModificar.Enabled := True;
end;

procedure TformPlancontas.FormCreate(Sender: TObject);
begin
  inherited;
//  SetOrderBy('PLANCONTAS.CODPLANO');
end;

procedure TformPlancontas.FormShow(Sender: TObject);
begin
  inherited;
  fullrefresh := True;
end;

end.
