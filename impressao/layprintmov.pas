unit layprintmov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxmdaset, Menus, ActnList, dxBar, dxPSCore, ExtCtrls,
  DBClient, dxBarExtItems, cxClasses, dxStatusBar, DBCtrls, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCheckBox, cxDBEdit, cxContainer,
  cxTextEdit, StdCtrls, dxPScxCommon, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformImpMov = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosNUMIMPNOTA: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosLINHA18: TStringField;
    cdsDadosALTURA: TSmallintField;
    cdsDadosDUP_LINHAINI: TSmallintField;
    cdsDadosDUP_COLUNAS: TSmallintField;
    cdsDadosDUP_TAMANHOCOL: TSmallintField;
    cdsDadosDUP_LINHAS: TSmallintField;
    cdsDadosPRO_LINHAINI: TSmallintField;
    cdsDadosPRO_LINHAS: TSmallintField;
    cdsDadosSER_LINHAINI: TSmallintField;
    cdsDadosSER_LINHAS: TSmallintField;
    cdsDadosEFEITOBASE: TStringField;
    cdsDadosDUP_COLUNAINI: TSmallintField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1NUMIMPNOTA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formImpMov: TformImpMov;

implementation

uses principal, layprintmovcorpo, layprintmovdup, layprintmovpro,
  layprintmovser;

{$R *.dfm}

procedure TformImpMov.dxBarButton6Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formImpMovCorpo := TformImpMovCorpo.Create(Self);
    formImpMovCorpo.SetWhereDynamic(
      Format('ITIMPNOTA.NUMIMPNOTA = %d', [cdsDadosNUMIMPNOTA.AsInteger]),
      Format('Corpo de %s', [cdsDadosDESCRICAO.AsString]));
    formImpMovCorpo.codImpMov := cdsDadosNUMIMPNOTA.AsInteger;
    formImpMovCorpo.AutoLoad := True;
    formImpMovCorpo.Tag := formPrincipal.actImpMov.Tag;
    formImpMovCorpo.ShowModal;
  finally
    try
      formImpMovCorpo.Release;
    except
    end
  end

end;

procedure TformImpMov.dxBarButton7Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formImpMovDup := TformImpMovDup.Create(Self);
    formImpMovDup.SetWhereDynamic(
      Format('ITIMPNOTADUP.NUMIMPNOTA = %d', [cdsDadosNUMIMPNOTA.AsInteger]),
      Format('Duplicatas de %s', [cdsDadosDESCRICAO.AsString]));
    formImpMovDup.codImpMov := cdsDadosNUMIMPNOTA.AsInteger;
    formImpMovDup.AutoLoad := True;
    formImpMovDup.Tag := formPrincipal.actImpMov.Tag;
    formImpMovDup.ShowModal;
  finally
    try
      formImpMovDup.Release;
    except
    end
  end

end;

procedure TformImpMov.dxBarButton8Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formImpMovPro := TformImpMovPro.Create(Self);
    formImpMovPro.SetWhereDynamic(
      Format('ITIMPNOTAPRO.NUMIMPNOTA = %d', [cdsDadosNUMIMPNOTA.AsInteger]),
      Format('Produtos de %s', [cdsDadosDESCRICAO.AsString]));
    formImpMovPro.codImpMov := cdsDadosNUMIMPNOTA.AsInteger;
    formImpMovPro.AutoLoad := True;
    formImpMovPro.Tag := formPrincipal.actImpMov.Tag;
    formImpMovPro.ShowModal;
  finally
    try
      formImpMovPro.Release;
    except
    end
  end

end;

procedure TformImpMov.dxBarButton9Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formImpMovSer := TformImpMovSer.Create(Self);
    formImpMovSer.SetWhereDynamic(
      Format('ITIMPNOTASER.NUMIMPNOTA = %d', [cdsDadosNUMIMPNOTA.AsInteger]),
      Format('Produtos de %s', [cdsDadosDESCRICAO.AsString]));
    formImpMovSer.codImpMov := cdsDadosNUMIMPNOTA.AsInteger;
    formImpMovSer.AutoLoad := True;
    formImpMovSer.Tag := formPrincipal.actImpMov.Tag;
    formImpMovSer.ShowModal;
  finally
    try
      formImpMovSer.Release;
    except
    end
  end

end;

end.
