unit cidades;
                 
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
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls,
  principal, ActiveX, Menus, thSequencia, dxPScxCommon, cxCheckBox,
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
  TformCidades = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosCIDADE: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosSID: TStringField;
    cdsDadosDDD: TStringField;
    cdsDadosCEP: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    lbEstado: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedCIDADE: TcxDBTextEdit;
    dedESTADO: TcxDBTextEdit;
    dedDDD: TcxDBTextEdit;
    dedCEP: TcxDBTextEdit;
    dedSID: TcxDBTextEdit;
    dsrEstado: TDataSource;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cdsDadosMUNIBGE: TStringField;
    Label3: TLabel;
    dedMUNIBGE: TcxDBTextEdit;
    procedure lbEstadoClick(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
    procedure AtualizaEstado(estado: string);
  end;

var
  formCidades: TformCidades;

implementation

uses estados;

{$R *.dfm}

{####################################################################}
{##                                                                ##}
{##  FORMULARIO                                                    ##}
{##                                                                ##}
{####################################################################}

procedure TformCidades.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
   begin
     cdsDadosCODIGO.AsInteger  := sequencia;
   end;
end;

procedure TformCidades.AtualizaEstado(estado: string);
begin

end;

procedure TformCidades.lbEstadoClick(Sender: TObject);
begin
  inherited;
  { chamado }
  try
    formEstados := TformEstados.Create(Self);
    formEstados.AutoLoad := True;
    formEstados.Transferir := True;
    formEstados.MultiSelect := False;
    if formEstados.ShowModal = mrOk then
     if formEstados.cdsDados.Active then
      begin
        Liberar;
        Self.cdsDados.FieldByName('ESTADO').AsString :=
          formEstados.cdsDados.FieldByName('SIGLA').AsString;
      end;
  finally
    try
      formEstados.Release;
    except
    end
  end
end;

procedure TformCidades.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'CIDADES',
    LerSequencia);
end;

end.
