unit formapagamento;

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
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, Menus, cxCheckBox,
  dxPScxCommon, thSequencia, dxmdaset, dxBarExtDBItems, 
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformFormaPagamento = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCONDICAO: TStringField;
    cdsDadosQUANTIDADE: TIntegerField;
    cdsDadosPRAZOMEDIO: TIntegerField;
    cdsDadosCODDOC_AVISTA: TIntegerField;
    cdsDadosCODDOC_PRAZO: TIntegerField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    lbCODIGO: TLabel;
    lbDESCRICAO: TLabel;
    lbCONDICAO: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedDESCRICAO: TcxDBTextEdit;
    dedCONDICAO: TcxDBTextEdit;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cdsDadosSEL: TStringField;
    cdsDadosCADASTRAR_CLIENTES: TStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cdsDadosDOCVISTA: TStringField;
    cdsDadosDOCPRAZO: TStringField;
    cdsDadosTAXAJUROS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formFormaPagamento: TformFormaPagamento;

implementation

uses documentos, principal;

{$R *.dfm}

procedure TformFormaPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO', 'CONDPAG.CODIGO');
  SetOrderBy('CONDPAG.CODIGO DESC');
end;

procedure TformFormaPagamento.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDados.fieldByName('CODIGO').AsInteger  := sequencia;
end;

procedure TformFormaPagamento.Label1Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formDocumentos := TformDocumentos.Create(Self);
    formDocumentos.AutoLoad := True;
    formDocumentos.Transferir := True;
    formDocumentos.MultiSelect := False;
    formDocumentos.Tag :=
      formPrincipal.actFormaPagamento.Tag;
    formDocumentos.SetWhereDynamic('DOC.TIPO_PAG = ''A''', 'Escolha um documento à vista');
    if formDocumentos.ShowModal = mrOk then
     if formDocumentos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODDOC_AVISTA').AsInteger :=
          formDocumentos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('DOCVISTA').AsString :=
          formDocumentos.cdsDados.FieldByName('DOCUMENTO').AsString;
      end;
  finally
    try
      { destruo o form }
      formDocumentos.Release;
    except
    end
  end

end;

procedure TformFormaPagamento.Label2Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formDocumentos := TformDocumentos.Create(Self);
    formDocumentos.AutoLoad := True;
    formDocumentos.Transferir := True;
    formDocumentos.MultiSelect := False;
    formDocumentos.Tag :=
      formPrincipal.actFormaPagamento.Tag;
    formDocumentos.SetWhereDynamic('DOC.TIPO_PAG = ''V''', 'Escolha um documento à prazo');
    if formDocumentos.ShowModal = mrOk then
     if formDocumentos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODDOC_PRAZO').AsInteger :=
          formDocumentos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('DOCPRAZO').AsString :=
          formDocumentos.cdsDados.FieldByName('DOCUMENTO').AsString;
      end;
  finally
    try
      { destruo o form }
      formDocumentos.Release;
    except
    end
  end

end;

procedure TformFormaPagamento.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'CONDPAG',
    LerSequencia);
  Dataset.fieldByName('CADASTRAR_CLIENTES').AsString := 'S';
  Dataset.fieldByName('TAXAJUROS').AsFloat := 0;
end;

end.
