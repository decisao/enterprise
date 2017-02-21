unit ativacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, Menus, ActnList, dxBar, dxPSCore, dxPScxCommon, 
  ExtCtrls, DBClient, dxBarExtItems, cxClasses, dxStatusBar, DBCtrls,
  cxGridLevel, cxControls, cxGridCustomView, cxGrid, cxPC, cxCheckBox,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinOffice2010Silver, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinDevExpressStyle, cxNavigator, dxSkinsdxRibbonPainter;

type
  TformAtivacoes = class(TformCadModelo)
    cdsDadosBARRA: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosSERIE: TStringField;
    cdsDadosSERIE2: TStringField;
    cdsDadosQUANTIDADE: TFMTBCDField;
    cdsDadosNOTA_SAIDA: TIntegerField;
    cdsDadosDATA_SAIDA: TSQLTimeStampField;
    cdsDadosCLIENTE: TStringField;
    cdsDadosCPF: TStringField;
    cdsDadosVALOR_PAGO: TFloatField;
    cdsDadosNOTA_ENTRADA: TIntegerField;
    cdsDadosDATA_ENTRADA: TSQLTimeStampField;
    cdsDadosFORNECEDOR: TStringField;
    cdsDadosCNPJ: TStringField;
    cdsDadosCUSTO: TFMTBCDField;
    cdsDadosNUMERO_FONE: TStringField;
    cdsDadosPLANO: TStringField;
    cdsDadosCONTRATO: TStringField;
    cdsDadosVOUCHER: TStringField;
    cdsDadosTIPOATIVACAO: TStringField;
    cxGrid1DBTableView1BARRA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE2: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_SAIDA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_SAIDA: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1CPF: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FORNECEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_FONE: TcxGridDBColumn;
    cxGrid1DBTableView1PLANO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTRATO: TcxGridDBColumn;
    cxGrid1DBTableView1VOUCHER: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOATIVACAO: TcxGridDBColumn;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cdsDadosCODVENDA: TIntegerField;
    cdsDadosVENDEDOR: TStringField;
    cdsDadosCODEMPRESA: TIntegerField;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1CODEMPRESA: TcxGridDBColumn;
    cdsDadosDESCONTO_ADM: TFloatField;
    cxGrid1DBTableView1DESCONTO_ADM: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1TIPOATIVACAOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAtivacoes: TformAtivacoes;

implementation

{$R *.dfm}

procedure TformAtivacoes.cxGrid1DBTableView1TIPOATIVACAOGetDisplayText(
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

procedure TformAtivacoes.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('BARRA', 'INDIVIDUAIS.BARRA');
  AdicionarCampo('DESCRICAO', 'PRODUTOS.DESCRICAO');
  AdicionarCampo('SERIE', 'INDIVIDUAIS.SERIE');
  AdicionarCampo('SERIE2', 'INDIVIDUAIS.SERIE2');
  AdicionarCampo('QUANTIDADE', 'INDIVIDUAIS.QUANTIDADE');
  AdicionarCampo('NOTA_SAIDA', 'MOVSAIDA.NOTA_NUMERO');
  AdicionarCampo('DATA_SAIDA', 'CAST(MOVSAIDA.DATAFECHAMENTO AS DATE)');
  AdicionarCampo('CLIENTE', 'CLIENTES.NOME');
  AdicionarCampo('CPF', 'CLIENTES.CPF');
  AdicionarCampo('VALOR_PAGO', 'INDIVIDUAIS.VALOR_PAGO');
  AdicionarCampo('NOTA_ENTRADA', 'MOVENTRADA.NOTA_NUMERO');
  AdicionarCampo('DATA_ENTRADA', 'CAST(MOVENTRADA.DATA AS DATE)');
  AdicionarCampo('FORNECEDOR', 'FORNECEDORES.NOME');
  AdicionarCampo('CNPJ', 'FORNECEDORES.CGC');
  AdicionarCampo('CUSTO', 'INDIVIDUAIS.CUSTO_PRODUTO');
  AdicionarCampo('NUMERO_FONE', 'INDIVIDUAIS.NUMERO_FONE');
  AdicionarCampo('PLANO' , 'PLANOS.NOME');
  AdicionarCampo('CONTRATO', 'INDIVIDUAIS.CONTRATO');
  AdicionarCampo('VOUCHER', 'INDIVIDUAIS.VOUCHER');
  AdicionarCampo('TIPOATIVACAO', 'INDIVIDUAIS.TIPOATIVACAO');
  AdicionarCampo('CODVENDA', 'MOVSAIDA.CODIGO');
  AdicionarCampo('VENDEDOR', 'VENDEDORES.NOMEUSER');
  AdicionarCampo('CODEMPRESA', 'INDIVIDUAIS.CODEMPRESA');
  SetCampoRodape('BARRA', 'N=#', '');
  SetCampoRodape('VALOR_PAGO', 'P=#,##0.00', 'SUM');
  SetCampoRodape('CUSTO', 'C=#,##0.00', 'SUM');
  SetCampoRodape('DESCONTO_ADM', 'D=#,##0.00', 'SUM');
  SetEmpresaFilter('INDIVIDUAIS.CODEMPRESA');
end;

end.
