unit layprintmovcorpo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxmdaset, Menus, ActnList, dxBar, dxPSCore, ExtCtrls,
  DBClient, dxBarExtItems, cxClasses, dxStatusBar, DBCtrls, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCheckBox, cxContainer, cxTextEdit,
  cxDBEdit, StdCtrls, dxPScxCommon, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformImpMovCorpo = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosNUMIMPNOTA: TIntegerField;
    cdsDadosLINHA: TSmallintField;
    cdsDadosCOLUNA: TSmallintField;
    cdsDadosCAMPO: TStringField;
    cdsDadosTAMANHO: TSmallintField;
    cdsDadosALTURA: TSmallintField;
    cdsDadosMASCARA: TStringField;
    cdsDadosALINHAMENTO: TStringField;
    cdsDadosEFEITO: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1LINHA: TcxGridDBColumn;
    cxGrid1DBTableView1COLUNA: TcxGridDBColumn;
    cxGrid1DBTableView1CAMPO: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codImpMov: longint;
  end;

var
  formImpMovCorpo: TformImpMovCorpo;

implementation

uses principal, laycorpocampos;

{$R *.dfm}

procedure TformImpMovCorpo.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDadosNUMIMPNOTA.AsInteger :=
    codImpMov;
end;

procedure TformImpMovCorpo.Label3Click(Sender: TObject);
begin
  inherited;
  { chamo o form }
  try
    formCorpoCampos := TformCorpoCampos.Create(Self);
    formCorpoCampos.Transferir := True;
    formCorpoCampos.MultiSelect := False;
    formCorpoCampos.AutoLoad := True;
    formCorpoCampos.Tag := formPrincipal.actImpMov.Tag;
    if formCorpoCampos.ShowModal = mrOk then
     if formCorpoCampos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CAMPO').AsString :=
          formCorpoCampos.cdsDados.FieldByName('NOME').AsString;
        cdsDados.FieldByName('TAMANHO').AsInteger :=
          formCorpoCampos.cdsDados.FieldByName('TAMANHO').AsInteger;
      end;
  finally
    try
      { destruo o form }
      formCorpoCampos.Release;
    except
    end
  end

end;

end.
