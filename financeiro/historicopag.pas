unit historicopag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  dxPScxCommon, ExtCtrls, dxBarExtItems, dxStatusBar,
  DBCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxMemo, cxDBEdit, cxContainer, cxTextEdit, StdCtrls, thSequencia,
  cxCheckBox, dxmdaset, dxBarExtDBItems, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinOffice2007Blue, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformHistoricoPag = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCODCENTRO: TIntegerField;
    cdsDadosCODPLANO: TIntegerField;
    cdsDadosOBSERVACOES: TStringField;
    cdsDadosCENTRO: TStringField;
    cdsDadosPLANO: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CENTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PLANO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedHISTORICO: TcxDBTextEdit;
    dedCENTRO: TcxDBTextEdit;
    dedPLANO: TcxDBTextEdit;
    dedOBSERVACOES: TcxDBMemo;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cdsDadosCODNATUOPER: TStringField;
    cdsDadosNATUREZA: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    cdsDadosFATURA_CAIXAS: TStringField;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
  end;

var
  formHistoricoPag: TformHistoricoPag;

implementation

uses centros, plancontas, natuoper, principal;

{$R *.dfm}

procedure TformHistoricoPag.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDadosCODIGO.AsInteger  := sequencia;
end;

procedure TformHistoricoPag.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO', 'HI.CODIGO');
  AdicionarCampo('DESCRICAO', 'HI.DESCRICAO');
  AdicionarCampo('CENTRO', 'CE.DESCRICAO');
  AdicionarCampo('PLANO', 'PL.DESCRICAO');

  SetOrderBy('HI.CODIGO DESC');
end;

procedure TformHistoricoPag.Label3Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formCentros := TformCentros.Create(Self);
    formCentros.AutoLoad := True;
    formCentros.Transferir := True;
    formCentros.MultiSelect := False;
    formCentros.Tag := formPrincipal.actCentros.Tag;
    if formCentros.ShowModal = mrOk then
     if formCentros.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODCENTRO').AsInteger :=
          formCentros.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('CENTRO').AsString :=
          formCentros.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formCentros.Release;
    except
    end
  end

end;

procedure TformHistoricoPag.Label4Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPlanContas := TformPlanContas.Create(Self);
    formPlanContas.AutoLoad := True;
    formPlanContas.Transferir := True;
    formPlanContas.Tag := formPrincipal.actPlancontas.Tag;
    if formPlanContas.ShowModal = mrOk then
     if formPlanContas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODPLANO').AsInteger :=
          formPlanContas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('PLANO').AsString :=
          formPlanContas.cdsDados.FieldByName('SINTETICO').AsString;
      end;
  finally
    try
      { destruo o form }
      formPlanContas.Release;
    except
    end
  end

end;

procedure TformHistoricoPag.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  { sequencia }
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'HISTORICOPAG',
    LerSequencia);
  Dataset.FieldByName('FATURA_CAIXAS').AsString := 'N';

end;

procedure TformHistoricoPag.Label6Click(Sender: TObject);
begin
  inherited;
  try
    formNatuoper := TformNatuoper.Create(Self);
    formNatuoper.AutoLoad := True;
    formNatuoper.Transferir := True;
    formNatuoper.MultiSelect := False;
    formNatuoper.Tag := formPrincipal.actNatureza.Tag;
    if formNatuoper.ShowModal = mrOk then
     if formNatuoper.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODNATUOPER').AsString :=
          formNatuoper.cdsDados.FieldByName('CODIGO').AsString;
        cdsDados.FieldByName('NATUREZA').AsString :=
          formNatuoper.cdsDados.FieldByName('CODIGO').AsString + ' ' +
          formNatuoper.cdsDados.FieldByName('NATUREZA').AsString;
      end;
  finally
    try
      { destruo o form }
      formNatuoper.Release;
    except
    end
  end

end;

end.
