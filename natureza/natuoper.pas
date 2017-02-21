unit natuoper;

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
  cxCheckBox, cxDBEdit, cxContainer, cxTextEdit, StdCtrls, Menus,
  dxPScxCommon, dxmdaset, dxBarExtDBItems, cxLookAndFeels,
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
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformNatuoper = class(TformCadModelo)
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NATUREZA: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cdsDadosCODIGO: TStringField;
    cdsDadosNATUREZA: TStringField;
    cdsDadosVENDA: TStringField;
    cdsDadosESTOQUE: TStringField;
    cdsDadosICMS: TStringField;
    cdsDadosIPI: TStringField;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure Label4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formNatuoper: TformNatuoper;

implementation

uses historicopag;

{$R *.dfm}

procedure TformNatuoper.Label4Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formHistoricoPag := TformHistoricoPag.Create(Self);
    if formHistoricoPag.ShowModal = mrOk then
     if formHistoricoPag.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODHISTORICOPAG').AsInteger :=
          formHistoricoPag.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('HISTORICOPAG').AsString :=
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

procedure TformNatuoper.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDadosVENDA.AsString := 'S';
  cdsDadosESTOQUE.AsString := 'S';
  cdsDadosICMS.AsString := 'N';
  cdsDadosIPI.AsString := 'N';
end;

procedure TformNatuoper.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO', 'NA.CODIGO');
  AdicionarCampo('DESCRICAO', 'NA.DESCRICAO');
  SetOrderBy('NA.CODIGO DESC');
end;

end.
