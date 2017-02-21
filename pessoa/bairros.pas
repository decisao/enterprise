unit bairros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, thSequencia,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, Menus, dxPScxCommon,
  dxmdaset, dxBarExtDBItems, cxCheckBox,  cxLookAndFeels,
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
  TformBairros = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosBAIRRO: TStringField;
    cdsDadosCIDADE: TIntegerField;
    cdsDadosNOMECIDADE: TStringField;
    cdsDadosESTADO: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedBAIRRO: TcxDBTextEdit;
    dedESTADO: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formBairros: TformBairros;

implementation

uses cidades, principal;

{$R *.dfm}

procedure TformBairros.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
   begin
     cdsDadosCODIGO.AsInteger  := sequencia;
   end;
end;

procedure TformBairros.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO',     'BA.CODIGO');
  AdicionarCampo('BAIRRO',     'BA.BAIRRO');
  AdicionarCampo('CIDADE',     'BA.CIDADE');
  AdicionarCampo('NOMECIDADE', 'CI.CIDADE');
  AdicionarCampo('ESTADO',     'BA.ESTADO');

  SetOrderBy('BA.CODIGO DESC');
end;

procedure TformBairros.Label3Click(Sender: TObject);
begin
  inherited;
  try
    formCidades := TformCidades.Create(Self);
    formCidades.Transferir := True;
    formCidades.MultiSelect := False;
    if formCidades.ShowModal = mrOk then
     if formCidades.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CIDADE').AsInteger :=
          formCidades.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('NOMECIDADE').AsString :=
          formCidades.cdsDados.FieldByName('CIDADE').AsString;
        cdsDados.FieldByName('ESTADO').AsString :=
          formCidades.cdsDados.FieldByName('ESTADO').AsString;
      end;
  finally
    try
      { destruo o form }
      formCidades.Release;
    except
    end
  end
end;

procedure TformBairros.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'BAIRROS',
    LerSequencia);
end;

end.
