unit perfil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  dxPScxCommon, ExtCtrls, dxBarExtItems, dxStatusBar,
  DBCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxMemo, cxCheckBox,
  dxmdaset, dxBarExtDBItems, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
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
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformPerfil = class(TformCadModelo)
    cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1EMPRESA: TcxGridDBColumn;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosEMPRESA: TStringField;
    cdsDadosCODCLIENTE_PADRAO: TIntegerField;
    cdsDadosCONSUMIDOR: TStringField;
    cdsDadosICMSSIMPLES: TStringField;
    cdsDadosPADRAO: TStringField;
    cdsDadosMOEDASINGULAR: TStringField;
    cdsDadosMOEDAPLURAL: TStringField;
    cdsDadosCENTAVOSINGULAR: TStringField;
    cdsDadosCENTAVOPLURAL: TStringField;
    cdsDadosNOTA_PADRAO: TIntegerField;
    cdsDadosOSABERTA_PADRAO: TIntegerField;
    cdsDadosOSABERTA_PADRAO_2A: TIntegerField;
    cdsDadosOSFECHADA_PADRAO: TIntegerField;
    cdsDadosRECIBO_PADRAO: TIntegerField;
    cdsDadosLOGTIMEOFF: TIntegerField;
    cdsDadosOSCOND1: TStringField;
    cdsDadosOSCOND2: TStringField;
    cdsDadosBLOQUEIO_DIAS: TIntegerField;
    cdsDadosCODHISTORICO_COMPRA: TIntegerField;
    cdsDadosHISTORICOCOMPRA: TStringField;
    cdsDadosCODHISTORICO_VENDA: TIntegerField;
    cdsDadosHISTORICOVENDA: TStringField;
    cdsDadosMENSAGEM_OS: TStringField;
    cdsDadosMENSAGEM_VENDA: TStringField;
    cdsDadosSENHA_CLIENTES: TStringField;
    cdsDadosSENHA_PRODUTOS: TStringField;
    cdsDadosSENHA_OS: TStringField;
    cdsDadosSENHA_FECHAMENTO: TStringField;
    cdsDadosSENHA_BAIXA: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxTabSheet3: TcxTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxTabSheet4: TcxTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxTabSheet5: TcxTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxTabSheet6: TcxTabSheet;
    Label24: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cdsDadosVERIFICA_LIMITE: TStringField;
    Label14: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    Label27: TLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cdsDadosCOPIAS_OS: TIntegerField;
    cdsDadosCOPIAS_OS2: TIntegerField;
    cdsDadosCOPIAS_RECIBO: TIntegerField;
    cdsDadosPRECO_CLIENTE: TStringField;
    cxDBCheckBox3: TcxDBCheckBox;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cdsDadosVALOR_LIMITE: TFloatField;
    cdsDadosALIQUOTA_ISS: TFloatField;
    cdsDadosALIQUOTA_ICMSSIMPLES: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPerfil: TformPerfil;

implementation

uses pessoas, historicopag;

{$R *.dfm}

procedure TformPerfil.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO' , 'SI.CODIGO');
  AdicionarCampo('EMPRESA', 'C1.NOME');
  SetOrderBy('SI.CODIGO DESC');
end;

procedure TformPerfil.Label3Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPessoas := TformPessoas.Create(Self);
    formPessoas.Transferir := True;
    formPessoas.MultiSelect := False;
    if formPessoas.ShowModal = mrOk then
     if formPessoas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODCLIENTE_PADRAO').AsInteger :=
          formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('CONSUMIDOR').AsString :=
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

procedure TformPerfil.Label5Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formHistoricoPag := TformHistoricoPag.Create(Self);
    formHistoricoPag.AutoLoad := True;
    formHistoricoPag.Transferir := True;
    formHistoricoPag.MultiSelect := False;
    if formHistoricoPag.ShowModal = mrOk then
     if formHistoricoPag.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODHISTORICO_COMPRA').AsInteger :=
          formHistoricoPag.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('HISTORICOCOMPRA').AsString :=
          formHistoricoPag.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formHistoricoPag.Release;
    except
    end
  end

end;

procedure TformPerfil.Label6Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formHistoricoPag := TformHistoricoPag.Create(Self);
    formHistoricoPag.AutoLoad := True;
    formHistoricoPag.Transferir := True;
    formHistoricoPag.MultiSelect := False;
    if formHistoricoPag.ShowModal = mrOk then
     if formHistoricoPag.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODHISTORICO_VENDA').AsInteger :=
          formHistoricoPag.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('HISTORICOVENDA').AsString :=
          formHistoricoPag.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formHistoricoPag.Release;
    except
    end
  end

end;

end.
