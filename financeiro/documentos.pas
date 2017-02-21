unit documentos;

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
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, Menus, cxRadioGroup,
  cxCheckBox, cxMemo, cxGroupBox, dxPScxCommon, thSequencia, dxmdaset,
  dxBarExtDBItems, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxSkinOffice2007Blue, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk;

type
  TformDocumentos = class(TformCadModelo)
    pnlData: TPanel;
    lbCODIGO: TLabel;
    dedCODIGO: TcxDBTextEdit;
    lbDOCUMENTO: TLabel;
    dedDOCUMENTO: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxTabSheet4: TcxTabSheet;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Label10: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    Label11: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDOCUMENTO: TStringField;
    cdsDadosINFORMACOES: TStringField;
    cdsDadosSISTEMA: TStringField;
    cdsDadosNUMIMPBOLETO: TIntegerField;
    cdsDadosTIPO_PAG: TStringField;
    cdsDadosTIPO_DOC: TStringField;
    cdsDadosCODBANCO: TIntegerField;
    cdsDadosNOSSONUMERO: TIntegerField;
    cdsDadosNOSSONUMERO_DIGITO: TIntegerField;
    cdsDadosACEITE: TStringField;
    cdsDadosCODIGOCEDENTE: TIntegerField;
    cdsDadosCODIGOCEDENTE_DIGITO: TIntegerField;
    cdsDadosCODIGOAGENCIA: TIntegerField;
    cdsDadosCODIGOAGENCIA_DIGITO: TIntegerField;
    cdsDadosCODIGOCONTA: TIntegerField;
    cdsDadosCARTEIRA: TIntegerField;
    cdsDadosLOCALPAGAMENTO: TStringField;
    cdsDadosINSTRUCOES: TStringField;
    cdsDadosIMPRESSAO: TStringField;
    cdsDadosNOMEBANCO: TStringField;
    cdsDadosNOMECEDENTE: TStringField;
    cdsDadosLAYOUT: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn;
    cdsDadosREMESSA_REGISTRO: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formDocumentos: TformDocumentos;

implementation

uses pessoas, bancos, principal;

{$R *.dfm}

procedure TformDocumentos.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDados.fieldByName('CODIGO').AsInteger  := sequencia;
end;

procedure TformDocumentos.Label3Click(Sender: TObject);
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
        cdsDados.FieldByName('CODIGOCEDENTE').AsInteger :=
          formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('NOMECEDENTE').AsString :=
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

procedure TformDocumentos.Label2Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formBancos := TformBancos.Create(Self);
    formBancos.AutoLoad := True;
    formBancos.Transferir := True;
    formBancos.MultiSelect := False;
    if formBancos.ShowModal = mrOk then
     if formBancos.cdsDados.Active then
      begin
        cdsDados.FieldByName('CODBANCO').AsInteger :=
          formBancos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('NOMEBANCO').AsString :=
          formBancos.cdsDados.FieldByName('NOME').AsString;
      end;
  finally
    try
      { destruo o form }
      formBancos.Release;
    except
    end
  end
end;

procedure TformDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO',     'DOC.CODIGO');
  AdicionarCampo('DOCUMENTO',  'DOC.DOCUMENTO');
  SetOrderBy('DOC.CODIGO DESC');
end;

procedure TformDocumentos.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid, 
    formPrincipal.midtier_host,
    'DOCUMENTOS',
    LerSequencia);
  DataSet.FieldByName('SISTEMA').AsString := 'N';
  DataSet.FieldByName('ACEITE').AsString := 'N';
  DataSet.FieldByName('IMPRESSAO').AsString := 'N';
  DataSet.FieldByName('REMESSA_REGISTRO').AsString := 'N';
end;

end.
