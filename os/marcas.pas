unit marcas;

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
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, thSequencia, Menus,
  dxPScxCommon, dxmdaset, dxBarExtDBItems, cxCheckBox, 
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
  TformMarcas = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    dxBarButton6: TdxBarButton;
    lbCODIGO: TLabel;
    lbDESCRICAO: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedDESCRICAO: TcxDBTextEdit;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure dxBarButton6Click(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formMarcas: TformMarcas;

implementation

uses modelos, principal;

{$R *.dfm}

procedure TformMarcas.dxBarButton6Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formModelos := TformModelos.Create(Self);
    formModelos.SetWhereDynamic(
      Format('CODEQUIPAMENTO = %d', [cdsDadosCODIGO.AsInteger]),
      Format('Modelos da Marca %s', [cdsDadosDESCRICAO.AsString]));
    formModelos.codMarca := cdsDadosCODIGO.AsInteger;
    formModelos.Tag := formPrincipal.actMarcas.Tag;
    formModelos.AutoLoad := True;
    formModelos.ShowModal;
  finally
    try
      formModelos.Release;
    except
    end
  end
end;

procedure TformMarcas.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'MARCAS',
    LerSequencia);
end;

procedure TformMarcas.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

end.
