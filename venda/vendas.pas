unit vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_VENDAS, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, Menus, DBClient, ActnList,
  dxBar, dxPSCore, ExtCtrls, dxBarExtItems, dxStatusBar,
  cxMemo, cxDBEdit, cxContainer, cxTextEdit, StdCtrls, DBCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, dxPScxCommon,
  dxmdaset, dxBarExtDBItems, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxGroupBox, cxRadioGroup,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, cxNavigator, dxSkinsdxRibbonPainter;

type
  TformVendas = class(TformModeloVendas)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATA: TDateField;
    cdsDadosHORA: TTimeField;
    cdsDadosSTATUS: TStringField;
    cdsDadosNOME: TStringField;
    cdsDadosNOMEUSER: TStringField;
    cdsDadosUSUARIOFECHAMENTO: TStringField;
    cdsDadosDATAFECHA: TDateField;
    cdsDadosOBSERVACOES: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAFECHA: TcxGridDBColumn;
    cdsDadosCODCLIENTE: TIntegerField;
    grdItensDBTableView2OPERADORA: TcxGridDBColumn;
    grdItensDBTableView2PLANO: TcxGridDBColumn;
    grdItensDBTableView2LINHA: TcxGridDBColumn;
    cdsDadosCONDICAOPAGAMENTO: TStringField;
    cxGrid1DBTableView1CONDICAOPAGAMENTO: TcxGridDBColumn;
    cdsDadosFECHADO: TStringField;
    cdsDadosNOTA_NUMERO: TIntegerField;
    cdsDadosCODCOMPRA: TIntegerField;
    grdItensDBTableView2CONTRATO: TcxGridDBColumn;
    grdItensDBTableView2VOUCHER: TcxGridDBColumn;
    grdItensDBTableView2TIPOATIVACAO: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_NUMERO: TcxGridDBColumn;
    cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField;
    cdsDadosABERTO: TFMTBCDField;
    cxGrid1DBTableView1ABERTO: TcxGridDBColumn;
    lbQUEM_RECEBEU: TLabel;
    dedQUEM_RECEBEU: TcxDBTextEdit;
    grdItensDBTableView2DESCONTO_ADM: TcxGridDBColumn;
    cdsDadosNOTA_CODTRANSPORTADOR: TIntegerField;
    cdsDadosNOTA_PLACAVEICULO: TStringField;
    cdsDadosNOTA_UFVEICULO: TStringField;
    cdsDadosNOTA_FRETE: TSmallintField;
    cdsDadosNOTA_QUANTIDADE: TFloatField;
    cdsDadosNOTA_PESOBRUTO: TFloatField;
    cdsDadosNOTA_PESOLIQUIDO: TFloatField;
    cdsDadosCHNFE: TStringField;
    lbCHNFE: TLabel;
    dedCHNFE: TcxDBTextEdit;
    btnCancelarNFe: TdxBarButton;
    cxTabSheet1: TcxTabSheet;
    lbTransportador: TLabel;
    lbPlaca: TLabel;
    lbPlacaUF: TLabel;
    lbVolumes: TLabel;
    lbPesoBruto: TLabel;
    lbPesoLiquido: TLabel;
    dedTransportador: TcxDBTextEdit;
    dedPlaca: TcxDBTextEdit;
    dedPlacaUF: TcxDBTextEdit;
    rbFrete: TcxDBRadioGroup;
    dedVolumes: TcxDBTextEdit;
    dedPesoBruto: TcxDBTextEdit;
    dedPesoLiquido: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject); override;
    procedure grdItensDBTableView2TIPOATIVACAOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnCancelarNFeClick(Sender: TObject);
    procedure lbTransportadorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formVendas: TformVendas;

implementation

uses principal, NFe_cancelar, pessoas;

{$R *.dfm}

procedure TformVendas.btnCancelarNFeClick(Sender: TObject);
begin
  inherited;
  if trim(cdsDadosCHNFE.AsString) > '' then
   begin
     try
       formNFeCancelar := TformNFeCancelar.Create(Self);
       formNFeCancelar.codMovimento := cdsDadosCODIGO.AsInteger;
       formNFeCancelar.nf_numero := cdsDadosNOTA_NUMERO.AsInteger;
       formNFeCancelar.chave := trim(cdsDadosCHNFE.AsString);
       formNFeCancelar.ShowModal;
       Recarregar('CODIGO');
     finally
       formNFeCancelar.Release;
     end;
   end else
     formPrincipal.MsgError('O movimento selecionado não possui NFe emitida.', 'Erro');
end;

procedure TformVendas.FormCreate(Sender: TObject);
begin
  inherited;

  { campos de pesquisa }
  AdicionarCampo('CODIGO',                'MO.CODIGO');
  AdicionarCampo('DATA',                  'CAST(MO.DATA AS DATE)');
  AdicionarCampo('HORA',                  'CAST(MO.DATA AS TIME)');
  AdicionarCampo('DATAFECHA',             'CAST(MO.DATAFECHAMENTO AS DATE)');
  AdicionarCampo('NOMEUSER',              'VE.NOMEUSER');
  AdicionarCampo('NOME',                  'CL.NOME');

end;

procedure TformVendas.grdItensDBTableView2TIPOATIVACAOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  if AText = 'N' then
    AText := 'NOVA ATIVAÇÃO' else
  if AText = 'B' then
    AText := 'CLIENTE DA BASE' else
  if AText = 'R' then
    AText := 'REFIDELIZAÇÃO' else
  if AText = 'T' then
    AText := 'TROCA DE CHIP' else
  if AText = 'M' then
    AText := 'MIGRAÇÃO';
end;

procedure TformVendas.lbTransportadorClick(Sender: TObject);
begin
  inherited;

  try
    formPessoas := TformPessoas.Create(Self);
    formPessoas.Tag := formPrincipal.actPessoas.Tag;
    formPessoas.Transferir := True;
    formPessoas.MultiSelect := False;
    if formPessoas.ShowModal = mrOk then
     begin
       Liberar;
       cdsDadosNOTA_CODTRANSPORTADOR.AsInteger := formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
     end
  finally
    try
      formPessoas.Release;
      formPrincipal.HideMsg;
    except
    end
  end

end;

procedure TformVendas.btnExcluirClick(Sender: TObject);
begin

  if (cdsDadosCHNFE.AsString) = '' then
   begin
     inherited;
   end else
     formPrincipal.MsgError('Existe NFe emitida. Não é possível estornar.', 'Erro');
end;

end.
