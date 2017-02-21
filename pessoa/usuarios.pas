unit usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pessoas, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, cxTextEdit,
  cxDropDownEdit, cxDBEdit, cxCalendar, cxMaskEdit, cxRadioGroup,
  cxContainer, StdCtrls, DBCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxImage, cxCheckBox, ExtDlgs, ComCtrls,
  cxLookAndFeelPainters, cxButtons, dxPScxCommon, cxGroupBox, cxMemo,
  dxmdaset, dxBarExtDBItems, cxLookAndFeels, dxSkinsCore,
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
  TformUsuarios = class(TformPessoas)
    dsrPrivilegios: TDataSource;
    tmrPrivilegios: TTimer;
    cxTabSheet8: TcxTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView2VISIVEL: TcxGridDBColumn;
    cxGrid1DBTableView2NOVO: TcxGridDBColumn;
    cxGrid1DBTableView2DETALHES: TcxGridDBColumn;
    cxGrid1DBTableView2IMPRIMIR: TcxGridDBColumn;
    cxGrid1DBTableView2EXPORTAR: TcxGridDBColumn;
    cxGrid1DBTableView2AJUDA: TcxGridDBColumn;
    cxGrid1DBTableView2SALVAR: TcxGridDBColumn;
    cxGrid1DBTableView2EXCLUIR: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    Label33: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    Label34: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label35: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label36: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label37: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    lbNOMEUSER: TLabel;
    dedNOMEUSER: TcxDBTextEdit;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cdsPrivilegios: TClientDataSet;
    cdsPrivilegiosCODUSUARIO: TIntegerField;
    cdsPrivilegiosCODRESOURCE: TIntegerField;
    cdsPrivilegiosDESCRICAO: TStringField;
    cdsPrivilegiosVISIVEL: TStringField;
    cdsPrivilegiosNOVO: TStringField;
    cdsPrivilegiosDETALHES: TStringField;
    cdsPrivilegiosIMPRIMIR: TStringField;
    cdsPrivilegiosEXPORTAR: TStringField;
    cdsPrivilegiosAJUDA: TStringField;
    cdsPrivilegiosSALVAR: TStringField;
    cdsPrivilegiosEXCLUIR: TStringField;
    ckEstornoPeca: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure tmrPrivilegiosTimer(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject); override;
    procedure cdsPrivilegiosAfterEdit(DataSet: TDataSet);
    procedure dsrPrivilegiosStateChange(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formUsuarios: TformUsuarios;

implementation

uses principal;

{$R *.dfm}

procedure TformUsuarios.FormCreate(Sender: TObject);
begin
  inherited;

  { seleção de documentos a pagar }
  WhereArgStatic := 'TIPO = ''A'' AND OCULTO = ''N''';
end;

procedure TformUsuarios.cxPageControl1Change(Sender: TObject);
begin
  inherited;

  if pgcDetalhes.ActivePage = cxTabSheet8 then
   begin
     PageControl1.TabIndex := 0;
     Application.ProcessMessages;
   end;

end;

procedure TformUsuarios.PageControl1Change(Sender: TObject);
begin
  inherited;
  if (PageControl1.ActivePage = TabSheet2) and
     (not cxGrid1.Visible) then
    tmrPrivilegios.Enabled := True;
end;

procedure TformUsuarios.btnAdicionarClick(Sender: TObject);
begin
  cxGrid1.Visible := False;
  inherited;
end;

procedure TformUsuarios.btnModificarClick(Sender: TObject);
begin
  cxGrid1.Visible := False;
  inherited;
end;

procedure TformUsuarios.tmrPrivilegiosTimer(Sender: TObject);
begin
  inherited;
  tmrPrivilegios.Enabled := False;
  try
    formPrincipal.ShowMsg('Lendo privilégios...');
    with cdsPrivilegios do
     begin
       if active then close;
       Params[0].AsInteger := Self.cdsDados.fieldByName('CODIGO').AsInteger;
       open;
       RemoteServer.Close;
     end;
    cxGrid1.Visible := (not cdsPrivilegios.IsEmpty);
    formPrincipal.HideMsg;
  except
    formPrincipal.HideMsg;
    raise;
  end;

end;

procedure TformUsuarios.btnSalvarClick(Sender: TObject);
begin
  inherited;
  SalvarDataset(cdsPrivilegios, 'privilégios');
end;

procedure TformUsuarios.cdsPrivilegiosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if (btnSalvar.Visible = ivAlways) and (not btnSalvar.Enabled) then
    btnSalvar.Enabled := True;
end;

procedure TformUsuarios.dsrPrivilegiosStateChange(Sender: TObject);
begin
  inherited;

  if Assigned(dsrPrivilegios.DataSet) then
   if dsrPrivilegios.DataSet.State = dsEdit then
    cdsDados.Edit;
end;

procedure TformUsuarios.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDadosTIPO.AsString := 'A';
end;

end.
