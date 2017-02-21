unit layprintmovpro;

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
  TformImpMovPro = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosNUMIMPNOTA: TIntegerField;
    cdsDadosCOLUNA: TSmallintField;
    cdsDadosCAMPO: TStringField;
    cdsDadosTAMANHO: TSmallintField;
    cdsDadosALTURA: TSmallintField;
    cdsDadosMASCARA: TStringField;
    cdsDadosALINHAMENTO: TStringField;
    cdsDadosEFEITO: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
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
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codImpMov: longint;
  end;

var
  formImpMovPro: TformImpMovPro;

implementation

uses principal, layprocampos;

{$R *.dfm}

procedure TformImpMovPro.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDadosNUMIMPNOTA.AsInteger :=
    codImpMov;
end;

procedure TformImpMovPro.Label2Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formProCampos := TformProCampos.Create(Self);
    formProCampos.Transferir := True;
    formProCampos.MultiSelect := False;
    formProCampos.AutoLoad := True;
    formProCampos.Tag := formPrincipal.actImpMov.Tag;
    if formProCampos.ShowModal = mrOk then
     if formProCampos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CAMPO').AsString :=
          formProCampos.cdsDados.FieldByName('NOME').AsString;
        cdsDados.FieldByName('TAMANHO').AsInteger :=
          formProCampos.cdsDados.FieldByName('TAMANHO').AsInteger;
      end;
  finally
    try
      { destruo o form }
      formProCampos.Release;
    except
    end
  end

end;

end.
