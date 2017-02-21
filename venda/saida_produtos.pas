unit saida_produtos;

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
  InvokeRegistry, Menus, cxCheckBox, dxPScxCommon,
  dxmdaset, dxBarExtDBItems, cxContainer, cxTextEdit, cxDBEdit,
  StdCtrls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2010Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinOffice2007Blue,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxNavigator,
  dxSkinsdxRibbonPainter;

type
  TformSaidaProdutos = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosBARRA: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCODSERVICO: TIntegerField;
    cdsDadosBARRA_1: TStringField;
    cdsDadosDESCRICAO_1: TStringField;
    cdsDadosATIVACAO: TStringField;
    cdsDadosSERIE: TStringField;
    cdsDadosSERIE2: TStringField;
    cdsDadosUNICO: TIntegerField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1BARRA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE2: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cdsDadosNUMERO_FONE: TStringField;
    cdsDadosOPERADORA: TStringField;
    cdsDadosPLANO: TStringField;
    cxGrid1DBTableView1NUMERO_FONE: TcxGridDBColumn;
    cxGrid1DBTableView1OPERADORA: TcxGridDBColumn;
    cxGrid1DBTableView1LINHA: TcxGridDBColumn;
    cdsDadosCONTRATO: TStringField;
    cdsDadosVOUCHER: TStringField;
    cdsDadosTIPOATIVACAO: TStringField;
    cdsDadosCAIXA_ITENS: TIntegerField;
    cxGrid1DBTableView1PRECOVENDA2: TcxGridDBColumn;
    cxGrid1DBTableView1PRECOVENDA3: TcxGridDBColumn;
    cdsDadosMARCA: TStringField;
    cxGrid1DBTableView1MARCA: TcxGridDBColumn;
    cdsDadosICMS: TFloatField;
    cdsDadosPRECOVENDA2: TFloatField;
    cdsDadosPRECOVENDA3: TFloatField;
    cdsDadosPRECOVENDA: TFMTBCDField;
    cdsDadosPRECOTOTAL: TFloatField;
    cdsDadosPRECOSERVICO: TFloatField;
    cdsDadosQUANTIDADE: TFMTBCDField;
    cdsDadosPRECOCUSTO: TFMTBCDField;
    cdsDadosMARGEM: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cdsDadosCODIGO: TIntegerField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cdsDadosPRECOVENDA4: TFloatField;
    cdsDadosPRECOVENDA5: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;
    procedure btnModificarClick(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSaidaProdutos: TformSaidaProdutos;

implementation

uses principal;

{$R *.dfm}

procedure TformSaidaProdutos.btnModificarClick(Sender: TObject);
begin
  inherited;

  if formPrincipal.cdsUsuarios.FieldByName('CUSTO').AsString = 'S' then
   begin
     Label17.Visible := True;
     cxDBTextEdit17.Visible := True;
     Label18.Visible := True;
     cxDBTextEdit18.Visible := True;
   end else
   begin
     Label17.Visible := False;
     cxDBTextEdit17.Visible := False;
     Label18.Visible := False;
     cxDBTextEdit18.Visible := False;
   end;

end;

procedure TformSaidaProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('BARRA',     'ID.BARRA');
  AdicionarCampo('SERIE',     'ID.SERIE');
  AdicionarCampo('DESCRICAO', 'PO.DESCRICAO');
  AdicionarCampo('ICMS',      'ID.ICMS');
  AdicionarCampo('MARCA',     'MA.DESCRICAO');
  AdicionarCampo('CODIGO',    'PO.CODIGO');
  WhereArgStatic := 'ID.CODEMPRESA = ' + inttostr(formprincipal.codempresa);
  btnAdicionar.Visible := ivNever;
  btnModificar.Visible := ivNever;
  SetOrderBy('');
end;

procedure TformSaidaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  barra: string;
  tecla: word;
begin
  inherited;

  { busca por código de barras }
  if (pgcDados.ActivePage = tabVisual) and (key = vk_F6) then
   begin
     barra := InputBox('Código de Barras', 'Use o leitor para ler o código:', '');
     if barra > '' then
      begin
        if length(barra) < 14 then
          cmbSelecionar.ItemIndex := 0 else
        if length(barra) < 20 then
          cmbSelecionar.ItemIndex := 8 else
          cmbSelecionar.ItemIndex := 9;
        edtSelecionar.Text := barra;
        tecla := 13;
        edtSelecionarKeyDown(nil, tecla, []);
      end;
   end;

end;

end.
