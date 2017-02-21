unit impressoras;

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
  cxCheckBox, cxDBEdit, cxContainer, cxTextEdit, StdCtrls, cxMaskEdit,
  cxDropDownEdit, Menus, dxPScxCommon, dxmdaset, dxBarExtDBItems,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
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
  TformImpressoras = class(TformCadModelo)   
    cdsDadosMAQUINA: TStringField;
    cdsDadosCODEMPRESA: TIntegerField;
    cdsDadosOS1: TStringField;
    cdsDadosOS2: TStringField;
    cdsDadosFECHAMENTO: TStringField;
    cdsDadosNF: TStringField;
    cdsDadosRECIBO: TStringField;
    cdsDadosBOLETO: TStringField;
    cdsDadosECF: TStringField;
    cdsDadosECF_NCC: TStringField;
    cxGrid1DBTableView1MAQUINA: TcxGridDBColumn;
    lbMaquina: TLabel;
    lbOS1: TLabel;
    lbOS2: TLabel;
    lbFECHAMENTO: TLabel;
    lbNF: TLabel;
    lbRECIBO: TLabel;
    lbBOLETO: TLabel;
    lbECF: TLabel;
    dedMAQUINA: TcxDBTextEdit;
    dedOS1: TcxDBTextEdit;
    dedOS2: TcxDBTextEdit;
    dedNF: TcxDBTextEdit;
    dedRECIBO: TcxDBTextEdit;
    dedBOLETO: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dedFECHAMENTO: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formImpressoras: TformImpressoras;

implementation

uses principal;

{$R *.dfm}

procedure TformImpressoras.FormCreate(Sender: TObject);
begin
  inherited;
  SetOrderBy('');
  WhereArgStatic := 'CODEMPRESA = ' +
    IntToStr(formPrincipal.codempresa);
end;

procedure TformImpressoras.Label1Click(Sender: TObject);
begin
  inherited;
  cdsDados.FieldByName('MAQUINA').AsString := formPrincipal.computador;
end;

procedure TformImpressoras.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('CODEMPRESA').AsInteger :=
    formPrincipal.codempresa;
  Dataset.FieldByName('ECF_NCC').AsString := 'N';
end;

end.
