unit MODELO_MOV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, ActnList, dxBarExtItems, dxBar, cxPC, cxControls,
  dxStatusBar, thSequencia, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxmdaset, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, StdCtrls, cxContainer, cxTextEdit, DBCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ActiveX, DBClient,
  dbcgrids, cxCalendar, cxLabel, cxDBLabel, strutils, Grids,
  DBGrids, Provider, cxCheckBox, cxMemo, principal, Menus, cxBarEditItem,
  dxSkinsCore, dxSkinOffice2007Silver, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinOffice2007Blue, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxPCdxBarPopupMenu, cxNavigator,
  dxSkinDevExpressStyle;

const
  CM_FORMSETUP  = WM_USER + 1;
  CM_FORMLOGOUT = WM_USER + 9;

type
  TformMODELO_MOV = class(TForm)
    dxBarManager: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    lblNumero: TdxBarStatic;
    actSaida: TActionList;
    actAjuda: TAction;
    actProduto: TAction;
    actServico: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    lblCliente: TdxBarStatic;
    actCliente: TAction;
    actOperacao: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    lblVendedor: TdxBarStatic;
    lblOperacao: TdxBarStatic;
    dxBarLargeButton6: TdxBarLargeButton;
    actVendedor: TAction;
    actSerie: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    actFaturar: TAction;
    actFechar: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    dxStatusBar: TdxStatusBar;
    dxBarLargeButton9: TdxBarLargeButton;
    dsrItens: TDataSource;
    dsrMovimento: TDataSource;
    memMovimento: TdxMemData;
    memItens: TdxMemData;
    provMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    provItens: TDataSetProvider;
    memMovimentoCODMOVIMENTO: TIntegerField;
    memMovimentoCODCLIENTE: TIntegerField;
    memMovimentoCODVENDEDOR: TIntegerField;
    memMovimentoCODRESPONSAVEL: TIntegerField;
    memMovimentoCODCONDPAG: TIntegerField;
    memMovimentoCODEMPRESA: TIntegerField;
    memMovimentoVALOR_DESCONTO: TFloatField;
    memMovimentoPERC_DESCONTO: TFloatField;
    memMovimentoVALOR_ACRESCIMO: TFloatField;
    memMovimentoPERC_ACRESCIMO: TFloatField;
    memMovimentoVALOR_JUROS: TFloatField;
    memMovimentoPERC_JUROS: TFloatField;
    cdsMovimentoRecId: TIntegerField;
    cdsMovimentoCODMOVIMENTO: TIntegerField;
    cdsMovimentoCODCLIENTE: TIntegerField;
    cdsMovimentoCODVENDEDOR: TIntegerField;
    cdsMovimentoCODRESPONSAVEL: TIntegerField;
    cdsMovimentoCODCONDPAG: TIntegerField;
    cdsMovimentoCODEMPRESA: TIntegerField;
    cdsMovimentoVALOR_DESCONTO: TFloatField;
    cdsMovimentoPERC_DESCONTO: TFloatField;
    cdsMovimentoVALOR_ACRESCIMO: TFloatField;
    cdsMovimentoPERC_ACRESCIMO: TFloatField;
    cdsMovimentoVALOR_JUROS: TFloatField;
    cdsMovimentoPERC_JUROS: TFloatField;
    memItensCODBARRA: TStringField;
    memItensDESCRICAO: TStringField;
    memItensQUANTIDADE: TFloatField;
    memItensVALOR_ORIGINAL: TFloatField;
    memItensICMS: TFloatField;
    memItensPERC_DESCONTO: TFloatField;
    memItensVALOR_UNITARIO: TFloatField;
    memItensOK: TStringField;
    memItensITEM: TIntegerField;
    memItensVALOR_TOTAL: TFloatField;
    memItensDESC2: TStringField;
    memMovimentoVALOR_ITENS: TFloatField;
    cdsMovimentoVALOR_ITENS: TFloatField;
    cdsMovimentoVALOR_TOTAL: TFloatField;
    cdsItens: TClientDataSet;
    cdsItensTOTAL: TAggregateField;
    tmrItens: TTimer;
    cdsItensDESCONTO: TAggregateField;
    cdsEstorno: TClientDataSet;
    memItensTOTAL_ORIGINAL: TFloatField;
    memItensTOTAL_DESCONTO: TFloatField;
    cdsItensRecId: TIntegerField;
    cdsItensCODBARRA: TStringField;
    cdsItensDESCRICAO: TStringField;
    cdsItensQUANTIDADE: TFloatField;
    cdsItensVALOR_ORIGINAL: TFloatField;
    cdsItensICMS: TFloatField;
    cdsItensPERC_DESCONTO: TFloatField;
    cdsItensVALOR_UNITARIO: TFloatField;
    cdsItensOK: TStringField;
    cdsItensITEM: TIntegerField;
    cdsItensVALOR_TOTAL: TFloatField;
    cdsItensDESC2: TStringField;
    cdsItensTOTAL_ORIGINAL: TFloatField;
    cdsItensTOTAL_DESCONTO: TFloatField;
    cdsItensTESTE: TFloatField;
    cdsVenda: TClientDataSet;
    cdsPagamento: TClientDataSet;
    dsrPagamento: TDataSource;
    cdsPagamentoCODIGO: TIntegerField;
    cdsPagamentoNUMERO: TSmallintField;
    cdsPagamentoCODDOCUMENTO: TIntegerField;
    cdsFechamento: TClientDataSet;
    cdsPagamentoTOTAL: TAggregateField;
    tmrPagamento: TTimer;
    tmrMovimento: TTimer;
    memMovimentoVALOR_PAGAMENTOS: TFloatField;
    cdsMovimentoVALOR_PAGAMENTOS: TFloatField;
    memMovimentoOBSERVACOES: TStringField;
    cdsMovimentoOBSERVACOES: TStringField;
    cdsPagamentoSEL: TStringField;
    memItensICMSCOMPRA: TFloatField;
    memItensIPI: TFloatField;
    memItensSITTRIBU: TStringField;
    cdsItensICMSCOMPRA: TFloatField;
    cdsItensIPI: TFloatField;
    cdsItensSITTRIBU: TStringField;
    cdsLoadMov: TClientDataSet;
    cdsLoadItens: TClientDataSet;
    memItensVALOR_CUSTO: TFloatField;
    memItensTOTAL_CUSTO: TFloatField;
    memMovimentoVALOR_CUSTO: TFloatField;
    cdsMovimentoVALOR_CUSTO: TFloatField;
    cdsItensVALOR_CUSTO: TFloatField;
    cdsItensTOTAL_CUSTO: TFloatField;
    cdsItensCUSTO: TAggregateField;
    memMovimentoMARGEM: TFloatField;
    cdsMovimentoMARGEM: TFloatField;
    memMovimentoNOTA_NUMERO: TIntegerField;
    cdsMovimentoNOTA_NUMERO: TIntegerField;
    Panel1: TPanel;
    pgcSaida: TcxPageControl;
    tabItens: TcxTabSheet;
    pnlTotal: TPanel;
    lblDesconto: TLabel;
    lblPerc_Desconto: TLabel;
    lblAcrescimo: TLabel;
    lblPerc_Acrescimo: TLabel;
    lblJuros: TLabel;
    lblCondPag: TLabel;
    lblTaxaJuros: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    dedDESCONTO: TcxDBTextEdit;
    dedPERC_DESCONTO: TcxDBTextEdit;
    dedACRESCIMO: TcxDBTextEdit;
    dedPERC_ACRESCIMO: TcxDBTextEdit;
    dedJUROS: TcxDBTextEdit;
    dedTaxaJuros: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1OK: TcxGridDBColumn;
    cxGridDBTableView1CODBARRA: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGridDBTableView1VALOR_UNITARIO: TcxGridDBColumn;
    cxGridDBTableView1VALOR_TOTAL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tabFatura: TcxTabSheet;
    pnlTotalFinal: TPanel;
    Label1: TLabel;
    DBText2: TDBText;
    cxDBMemo1: TcxDBMemo;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1SEL: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1CODDOCUMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1DATAVENCIMENTO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Bevel1: TBevel;
    memMovimentoCONDICOES1: TStringField;
    memMovimentoCONDICOES2: TStringField;
    memMovimentoOPCIONAIS: TStringField;
    cdsMovimentoCONDICOES1: TStringField;
    cdsMovimentoCONDICOES2: TStringField;
    cdsMovimentoOPCIONAIS: TStringField;
    memMovimentoDATA_EMISSAO: TDateTimeField;
    cdsMovimentoDATA_EMISSAO: TDateTimeField;
    cdsPagamentoSTATUS: TStringField;
    cdsPagamentoDOCUMENTO: TStringField;
    cdsPagamentoTIPO_DOC: TStringField;
    tmrAutoFecha: TTimer;
    tmrAutoContinua: TTimer;
    memMovimentoCODHISTORICOPAG: TIntegerField;
    cdsMovimentoCODHISTORICOPAG: TIntegerField;
    memItensCAIXA_ITENS: TIntegerField;
    memItensCAIXAS: TIntegerField;
    cdsItensCAIXA_ITENS: TIntegerField;
    cdsItensCAIXAS: TIntegerField;
    cxGridDBTableView1CAIXAS: TcxGridDBColumn;
    tmrCaixas: TTimer;
    memMovimentoVALOR_FRETE: TFloatField;
    cdsMovimentoVALOR_FRETE: TFloatField;
    lbFrete: TLabel;
    dedFrete: TcxDBTextEdit;
    menuGrid: TPopupMenu;
    CancelarItem1: TMenuItem;
    pnlServicosOpcionais: TPanel;
    dedDescricaoServ: TcxDBMemo;
    lbDescricaoDetalhada: TLabel;
    cdsVerifica: TClientDataSet;
    cdsLoadMovCODCLIENTE: TIntegerField;
    cdsLoadMovNOME: TStringField;
    cdsLoadMovCODHISTORICOPAG: TIntegerField;
    cdsLoadMovHISTORICOPAG: TStringField;
    cdsLoadMovCODVENDEDOR: TIntegerField;
    cdsLoadMovVENDEDOR: TStringField;
    cdsLoadMovCODRESPONSAVEL: TIntegerField;
    cdsLoadMovCONDICAO: TStringField;
    cdsLoadMovCODCONDPAG: TIntegerField;
    cdsLoadMovOBSERVACOES: TStringField;
    cdsLoadMovCPF: TStringField;
    cdsLoadMovCGC: TStringField;
    cdsLoadMovPESSOAFISICA: TStringField;
    cdsLoadMovCONDICOES1: TStringField;
    cdsLoadMovCONDICOES2: TStringField;
    cdsLoadMovOPCIONAIS: TStringField;
    cdsLoadMovSERVICOS: TStringField;
    cdsPagamentoVALOR: TFloatField;
    cdsPagamentoDATAVENCIMENTO: TSQLTimeStampField;
    cdsPagamentoDATAPAGO: TSQLTimeStampField;
    cdsNFEmissao: TClientDataSet;
    ckCMV: TcxCheckBox;
    cdsLoadMovLOGRADOURO: TStringField;
    cdsLoadMovNUMERO: TIntegerField;
    cdsLoadMovCOMPLEMENTO: TStringField;
    cdsLoadMovBAIRRO: TStringField;
    cdsLoadMovCIDADE: TStringField;
    cdsLoadMovESTADO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actVendedorExecute(Sender: TObject);
    procedure actFaturarExecute(Sender: TObject);
    procedure actAjudaExecute(Sender: TObject);
    procedure actOperacaoExecute(Sender: TObject);
    procedure pgcSaidaChange(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cdsMovimentoCalcFields(DataSet: TDataSet);
    procedure cdsItensAfterPost(DataSet: TDataSet);
    procedure cdsItensCalcFields(DataSet: TDataSet);
    procedure tmrItensTimer(Sender: TObject);
    procedure cdsItensQUANTIDADEChange(Sender: TField);
    procedure cdsMovimentoVALOR_DESCONTOChange(Sender: TField);
    procedure cdsMovimentoPERC_DESCONTOChange(Sender: TField);
    procedure cdsMovimentoVALOR_ACRESCIMOChange(Sender: TField);
    procedure cdsMovimentoPERC_ACRESCIMOChange(Sender: TField);
    procedure tmrPagamentoTimer(Sender: TObject);
    procedure cdsPagamentoVALORChange(Sender: TField);
    procedure tmrMovimentoTimer(Sender: TObject);
    procedure cdsMovimentoCODCONDPAGChange(Sender: TField);
    procedure cdsPagamentoAfterPost(DataSet: TDataSet);
    procedure cdsPagamentoAfterOpen(DataSet: TDataSet);
    procedure dedDESCONTOEnter(Sender: TObject);
    procedure dedDESCONTOExit(Sender: TObject);
    procedure actSerieExecute(Sender: TObject);
    procedure actProdutoExecute(Sender: TObject);
    procedure actServicoExecute(Sender: TObject);
    procedure cdsItensBeforeInsert(DataSet: TDataSet);
    procedure tmrAutoContinuaTimer(Sender: TObject);
    procedure tmrAutoFechaTimer(Sender: TObject);
    procedure tmrCaixasTimer(Sender: TObject);
    procedure cdsItensCAIXASChange(Sender: TField);
    procedure cxDBTextEdit4PropertiesEditValueChanged(Sender: TObject);
    procedure CancelarItem1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsrItensDataChange(Sender: TObject; Field: TField);
    procedure dsrMovimentoDataChange(Sender: TObject; Field: TField);
    procedure cdsPagamentoDATAVENCIMENTOChange(Sender: TField);
    procedure ckCMVClick(Sender: TObject);
    procedure menuGridPopup(Sender: TObject);
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    item: integer;
    recalculo_itens: boolean;
    recalculo_global: boolean;
    ecf_cupom: integer;
    ecf_serie: string;
    tempo1: currency;
    adrLOCALIZACAO: string;
    adrNUMERO: integer;
    adrCOMPLEMENTO: string;
    adrBAIRRO: string;
    adrCIDADE: string;
    adrESTADO: string;
    procedure Desconectar(var Message: TMessage); message CM_FORMLOGOUT;
    procedure FormStart(var Message: TMessage); message CM_FORMSETUP;
    procedure LerSequencia(var sequencia: longint);
    procedure AtualizaBarra;
    procedure DescontoItens(perc: currency);
    procedure AcrescimoItens(perc: currency);
  public
    { Public declarations }
    tempMovimento,
    codMovimento,
    codCliente,
    CodHistorico,
    codVendedor: longint;
    Historico,
    Cliente,
    CPF,
    Vendedor,
    Processo,
    ativa_numero,
    ativa_operadora,
    ativa_plano: string;
    Continuar: boolean;
    PularPagamentos: boolean;
    ativacao: boolean;
    Cloning: boolean;
    lancaPeca: boolean;
    movimentos: array[1..10] of longint;
    procedure AdicionarItem(codbarra, descricao, desc2, desc3, sittribu: string;
      valor, icms, icmscompra, ipi: currency);
  end;

var
  formMODELO_MOV: TformMODELO_MOV;

implementation

uses pessoas, servicos, natuoper, printmov, historicopag, funcoes, NFe_gerar;

{$R *.dfm}

const
  itmax = 150;

procedure TformMODELO_MOV.FormStart(var Message: TMessage);
var
  n, max: integer;
  icms: currency;
begin

  if not (Processo = 'VEN') then
    cxGridDBTableView1CAIXAS.Visible := False;

  if (not Continuar) and Cloning and (codMovimento > 100) then
   begin

     {******************************************************}
     {                                                      }
     {   C L O N I N G                                      }
     {                                                      }
     {******************************************************}
     try
       formPrincipal.ShowMsg('Verificando dados...');

       { alteração dos itens }
       ecf_cc := false;
       dsrItens.AutoEdit := true;

       { não pode mudar o cliente depois de iniciado }
       actCliente.Visible := True;

       { carregar dados do cabeçalho }
       with cdsLoadMov do
        begin
          if active then close;
          Params[0].AsInteger := codMovimento;
          open;
          if not IsEmpty then
           begin

             { cliente }
             codCliente  := fieldByName('CODCLIENTE').AsInteger;
             Cliente     := fieldByName('NOME').AsString;

             { vendedor }
             codVendedor := fieldByName('CODVENDEDOR').AsInteger;
             Vendedor    := fieldByName('VENDEDOR').AsString;

             { operação }
             CodHistorico := fieldByName('CODHISTORICOPAG').AsInteger;
             Historico    := fieldByName('HISTORICOPAG').AsString;

             { atualiza a barra }
             AtualizaBarra;

             { ativo o registro de saida }
             cdsMovimento.Open;

             { insiro dados teste }
             cdsMovimento.AppendRecord([
               nil,
               0,
               CodHistorico,
               codCliente,
               codVendedor,
               formPrincipal.codusuario,
               fieldByName('CODCONDPAG').AsInteger,
               formPrincipal.codempresa,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               nil,
               0,
               fieldByName('OBSERVACOES').AsString,
               nil,
               nil,
               nil,
               trim(fieldByName('CONDICOES1').AsString),
               trim(fieldByName('CONDICOES2').AsString),
               trim(fieldByName('OPCIONAIS').AsString),
               nil,
               0]);
             cdsMovimento.Edit;

             if fieldByName('PESSOAFISICA').AsString = 'F' then
               CPF := fieldByName('CPF').AsString
             else
               CPF := fieldByName('CGC').AsString;

             { endereço do cliente }
             adrLOCALIZACAO := cdsLoadMovLOGRADOURO.AsString;
             adrNUMERO      := cdsLoadMovNUMERO.AsInteger;
             adrCOMPLEMENTO := cdsLoadMovCOMPLEMENTO.AsString;
             adrBAIRRO      := cdsLoadMovBAIRRO.AsString;
             adrCIDADE      := cdsLoadMovCIDADE.AsString;
             adrESTADO      := cdsLoadMovESTADO.AsString;

             { sequencia }
             tempMovimento := codMovimento;
             codMovimento := 0;
             thObterSeq := ThreadSequencia.Create(
               formPrincipal.dbid,
               formPrincipal.midtier_host,
               'MOVIMENTOS',
               LerSequencia);
             repeat
               Application.ProcessMessages;
             until codMovimento > 0;

             cdsItens.Open;

           end;
        end;

       formPrincipal.HideMsg;

       { carregar itens do movimento antigo }
       formPrincipal.ShowMsg('Carregando itens...');
       with cdsLoadItens do
        begin
          if active then close;
          Params[0].AsInteger := tempMovimento;
          open;
          if not IsEmpty then
           begin

             first;
             while not eof do
              begin

                { icms }
                if formPrincipal.cdsPerfil.fieldByName('ICMSSIMPLES').AsString = 'S' then
                  icms := formPrincipal.cdsPerfil.fieldByName('ALIQUOTA_ICMSSIMPLES').AsCurrency
                else
                  icms := fieldByName('ICMS_VENDA').AsCurrency;

                { adiciono os itens }
                AdicionarItem(
                  fieldByName('BARRA').AsString,
                  fieldByName('DESCRICAO1').AsString,
                  fieldByName('SERIE').AsString,
                  fieldByName('SERIE2').AsString,
                  fieldByName('SITTRIBU').AsString,
                  fieldByName('VALOR_VENDA').AsCurrency,
                  icms,
                  0,
                  fieldByName('IPI').AsCurrency);

                { modifico os dados }
                if not (cdsItens.State = dsEdit) then
                  cdsItens.Edit;
                cdsItens.FieldByName('VALOR_UNITARIO').AsCurrency :=
                  fieldByName('VALOR_VENDA').AsCurrency -
                  fieldByName('DESCONTO').AsCurrency;
                cdsitens.FieldByName('QUANTIDADE').AsCurrency :=
                  fieldByname('QUANTIDADE').AsCurrency;
                cdsItens.FieldByName('VALOR_CUSTO').AsCurrency :=
                  fieldByName('VALOR_CUSTO').AsCurrency;
                cdsItens.Post;

                { ativação? }
                if (not ativacao) then
                  ativacao := (fieldByName('ATIVACAO').AsString = 'S');

                next;
              end;

           end;
        end;
       cdsLoadItens.RemoteServer.Close;
       formPrincipal.HideMsg;

     except
       cdsLoadItens.RemoteServer.Close;
       formPrincipal.HideMsg;
       raise;
     end;

   end; { cloning }

  if (not Continuar) and Cloning and (codMovimento <= 10) then
   begin

     {******************************************************}
     {                                                      }
     {   C L O N I N G    A G R U P A D O                   }
     {                                                      }
     {******************************************************}
     try
       formPrincipal.ShowMsg('Verificando dados...');

       max := codMovimento;
       codMovimento := 0;

       pnlServicosOpcionais.Visible := True;

       { alteração dos itens }
       ecf_cc := false;
       dsrItens.AutoEdit := true;

       { não pode mudar o cliente depois de iniciado }
       actCliente.Visible := True;

       { carregar dados do cabeçalho }
       with cdsLoadMov do
        begin
          if active then close;
          Params[0].AsInteger := movimentos[1];
          open;
          if not IsEmpty then
           begin

             { cliente }
             codCliente  := fieldByName('CODCLIENTE').AsInteger;
             Cliente     := fieldByName('NOME').AsString;

             { vendedor }
             codVendedor := fieldByName('CODVENDEDOR').AsInteger;
             Vendedor    := fieldByName('VENDEDOR').AsString;

             { operação }
             CodHistorico := fieldByName('CODHISTORICOPAG').AsInteger;
             Historico    := fieldByName('HISTORICOPAG').AsString;

             { atualiza a barra }
             AtualizaBarra;

             { ativo o registro de saida }
             cdsMovimento.Open;

             { insiro dados teste }
             cdsMovimento.AppendRecord([
               nil,
               0,
               CodHistorico,
               codCliente,
               codVendedor,
               formPrincipal.codusuario,
               fieldByName('CODCONDPAG').AsInteger,
               formPrincipal.codempresa,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               nil,
               0,
               fieldByName('OBSERVACOES').AsString,
               nil,
               nil,
               nil,
               trim(fieldByName('CONDICOES1').AsString),
               trim(fieldByName('CONDICOES2').AsString),
               trim(fieldByName('OPCIONAIS').AsString),
               nil,
               0]);
             cdsMovimento.Edit;

             if fieldByName('PESSOAFISICA').AsString = 'F' then
               CPF := fieldByName('CPF').AsString
             else
               CPF := fieldByName('CGC').AsString;

             { endereço do cliente }
             adrLOCALIZACAO := cdsLoadMovLOGRADOURO.AsString;
             adrNUMERO      := cdsLoadMovNUMERO.AsInteger;
             adrCOMPLEMENTO := cdsLoadMovCOMPLEMENTO.AsString;
             adrBAIRRO      := cdsLoadMovBAIRRO.AsString;
             adrCIDADE      := cdsLoadMovCIDADE.AsString;
             adrESTADO      := cdsLoadMovESTADO.AsString;

             { sequencia }
             tempMovimento := codMovimento;
             codMovimento := 0;
             thObterSeq := ThreadSequencia.Create(
               formPrincipal.dbid,
               formPrincipal.midtier_host,
               'MOVIMENTOS',
               LerSequencia);
             repeat
               Application.ProcessMessages;
             until codMovimento > 0;

             cdsItens.Open;

           end;
        end;

       formPrincipal.HideMsg;

       { carregar itens do movimento antigo }
       formPrincipal.ShowMsg('Carregando itens...');

       for n := 1 to max do
        begin

         with cdsLoadItens do
          begin
            if active then close;
            Params[0].AsInteger := movimentos[n];
            open;
            if not IsEmpty then
             begin

               first;
               while not eof do
                begin

                  if cdsItens.Locate('CODBARRA', fieldByName('BARRA').AsString, []) then
                   begin
                     if not (cdsItens.State = dsEdit) then
                       cdsItens.Edit;
                     cdsitens.FieldByName('QUANTIDADE').AsCurrency :=
                       cdsitens.FieldByName('QUANTIDADE').AsCurrency +
                       fieldByname('QUANTIDADE').AsCurrency;
                   end else
                   begin

                      { icms }
                      if formPrincipal.cdsPerfil.fieldByName('ICMSSIMPLES').AsString = 'S' then
                        icms := formPrincipal.cdsPerfil.fieldByName('ALIQUOTA_ICMSSIMPLES').AsCurrency
                      else
                        icms := fieldByName('ICMS_VENDA').AsCurrency;

                      { adiciono os itens }
                      AdicionarItem(
                        fieldByName('BARRA').AsString,
                        fieldByName('DESCRICAO1').AsString,
                        fieldByName('SERIE').AsString,
                        fieldByName('SERIE2').AsString,
                        fieldByName('SITTRIBU').AsString,
                        fieldByName('VALOR_VENDA').AsCurrency,
                        icms,
                        0,
                        fieldByName('IPI').AsCurrency);

                      { modifico os dados }
                      if not (cdsItens.State = dsEdit) then
                        cdsItens.Edit;
                      cdsItens.FieldByName('VALOR_UNITARIO').AsCurrency :=
                        fieldByName('VALOR_VENDA').AsCurrency -
                        fieldByName('DESCONTO').AsCurrency;
                      cdsitens.FieldByName('QUANTIDADE').AsCurrency :=
                        fieldByname('QUANTIDADE').AsCurrency;
                      cdsItens.FieldByName('VALOR_CUSTO').AsCurrency :=
                        fieldByName('VALOR_CUSTO').AsCurrency;
                      cdsItens.Post;

                   end;

                  ativacao := False;

                  next;
                end;

             end;
          end;

        end;
       cdsLoadItens.RemoteServer.Close;
       formPrincipal.HideMsg;

     except
       cdsLoadItens.RemoteServer.Close;
       formPrincipal.HideMsg;
       raise;
     end;

   end; { cloning }

  if Continuar then
   begin

     {******************************************************}
     {                                                      }
     {   C O N T I N U A R                                  }
     {                                                      }
     {******************************************************}
     try
       formPrincipal.ShowMsg('Verificando dados...');

       { alteração dos itens }
       ecf_cc := false;
       dsrItens.AutoEdit := true;

       { não pode mudar o cliente depois de iniciado }
       actCliente.Visible := True;

       { carregar dados do cabeçalho }
       with cdsLoadMov do
        begin
          if active then close;
          Params[0].AsInteger := codMovimento;
          open;
          if not IsEmpty then
           begin

             { cliente }
             codCliente  := fieldByName('CODCLIENTE').AsInteger;
             Cliente     := fieldByName('NOME').AsString;

             { vendedor }
             if trim(fieldByName('VENDEDOR').AsString) > '' then
              begin
                codVendedor := fieldByName('CODVENDEDOR').AsInteger;
                Vendedor    := fieldByName('VENDEDOR').AsString;
              end else
              begin
                codVendedor := formPrincipal.codusuario;
                Vendedor    := formPrincipal.usuario;
              end;

             { operação }
             if trim(fieldByName('HISTORICOPAG').AsString) > '' then
              begin
                CodHistorico := fieldByName('CODHISTORICOPAG').AsInteger;
                Historico    := fieldByName('HISTORICOPAG').AsString;
              end else
              begin
                if processo = 'COM' then
                 begin
                   CodHistorico := formPrincipal.cdsPerfil.fieldByName('CODHISTORICO_COMPRA').AsInteger;
                   Historico    := formPrincipal.cdsPerfil.fieldByName('HISTORICOCOMPRA').AsString;
                 end else
                 begin
                   CodHistorico := formPrincipal.cdsPerfil.fieldByName('CODHISTORICO_VENDA').AsInteger;
                   Historico    := formPrincipal.cdsPerfil.fieldByName('HISTORICOVENDA').AsString;
                 end;
              end;

             { atualiza a barra }
             AtualizaBarra;

             { ativo o registro de saida }
             cdsMovimento.Open;

             { insiro dados teste }
             cdsMovimento.AppendRecord([
               nil,
               0,
               CodHistorico,
               codCliente,
               codVendedor,
               formPrincipal.codusuario,
               fieldByName('CODCONDPAG').AsInteger,
               formPrincipal.codempresa,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               nil,
               0,
               fieldByName('OBSERVACOES').AsString,
               nil,
               nil,
               nil,
               trim(fieldByName('CONDICOES1').AsString),
               trim(fieldByName('CONDICOES2').AsString),
               trim(fieldByName('OPCIONAIS').AsString),
               nil,
               0]);
             cdsMovimento.Edit;

             if fieldByName('PESSOAFISICA').AsString = 'F' then
               CPF := fieldByName('CPF').AsString
             else
               CPF := fieldByName('CGC').AsString;

             { endereço do cliente }
             adrLOCALIZACAO := cdsLoadMovLOGRADOURO.AsString;
             adrNUMERO      := cdsLoadMovNUMERO.AsInteger;
             adrCOMPLEMENTO := cdsLoadMovCOMPLEMENTO.AsString;
             adrBAIRRO      := cdsLoadMovBAIRRO.AsString;
             adrCIDADE      := cdsLoadMovCIDADE.AsString;
             adrESTADO      := cdsLoadMovESTADO.AsString;

             LerSequencia(codMovimento);

             cdsItens.Open;
             Application.ProcessMessages;

           end;
        end;

       formPrincipal.HideMsg;

       { carregar itens }
       formPrincipal.ShowMsg('Carregando itens...');
       with cdsLoadItens do
        begin
          if active then close;
          Params[0].AsInteger := codMovimento;
          open;
          if not IsEmpty then
           begin

             first;
             while not eof do
              begin

                { icms }
                if formPrincipal.cdsPerfil.fieldByName('ICMSSIMPLES').AsString = 'S' then
                  icms := formPrincipal.cdsPerfil.fieldByName('ALIQUOTA_ICMSSIMPLES').AsCurrency
                else
                  icms := fieldByName('ICMS_VENDA').AsCurrency;

                { adiciono os itens }
                AdicionarItem(
                  fieldByName('BARRA').AsString,
                  fieldByName('DESCRICAO1').AsString,
                  fieldByName('SERIE').AsString,
                  fieldByName('SERIE2').AsString,
                  fieldByName('SITTRIBU').AsString,
                  fieldByName('VALOR_VENDA').AsCurrency,
                  icms,
                  0,
                  fieldByName('IPI').AsCurrency);

                { modifico os dados }
                if not (cdsItens.State = dsEdit) then
                  cdsItens.Edit;
                cdsItens.FieldByName('VALOR_UNITARIO').AsCurrency :=
                  fieldByName('VALOR_VENDA').AsCurrency -
                  fieldByName('DESCONTO').AsCurrency;
                cdsitens.FieldByName('QUANTIDADE').AsCurrency :=
                  fieldByname('QUANTIDADE').AsCurrency;
                cdsItens.FieldByName('VALOR_CUSTO').AsCurrency :=
                  fieldByName('VALOR_CUSTO').AsCurrency;
                cdsItens.Post;

                { ativação? }
                if (not ativacao) then
                  ativacao := (fieldByName('ATIVACAO').AsString = 'S');

                next;
              end;

           end;
        end;
       cdsLoadItens.RemoteServer.Close;
       formPrincipal.HideMsg;

     except
       cdsLoadItens.RemoteServer.Close;
       formPrincipal.HideMsg;
       raise;
     end;

   end { continuar } else
   begin

     {******************************************************}
     {                                                      }
     {   N O V O                                            }
     {                                                      }
     {******************************************************}
     with formPrincipal.cdsPerfil do
      begin

        { cliente }
        if codCliente = 0 then
         begin
           codCliente  := fieldByName('CODCLIENTE_PADRAO').AsInteger;
           Cliente     := fieldByName('CONSUMIDOR').AsString;
         end;

        { vendedor }
        codVendedor := formPrincipal.codusuario;
        Vendedor    := formPrincipal.usuario;

        { operação }
        if processo = 'COM' then
         begin
           CodHistorico := fieldByName('CODHISTORICO_COMPRA').AsInteger;
           Historico    := fieldByName('HISTORICOCOMPRA').AsString;
         end else
         begin
           CodHistorico := fieldByName('CODHISTORICO_VENDA').AsInteger;
           Historico    := fieldByName('HISTORICOVENDA').AsString;
         end;

      end;

     AtualizaBarra;

     if not Cloning then
      begin

         { ativo o registro de saida }
         cdsMovimento.Open;

         { insiro dados teste }
         cdsMovimento.AppendRecord([
           nil,
           0,
           CodHistorico,
           codCliente,
           codVendedor,
           formPrincipal.codusuario,
           1,
           formPrincipal.codempresa,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           '',
           0,
           0,
           nil,
           formPrincipal.cdsPerfil.FieldByName('OSCOND1').AsString,
           formPrincipal.cdsPerfil.FieldByName('OSCOND2').AsString,
           '',
           nil,
           0]);
         cdsMovimento.Edit;

         { sequencia }
         thObterSeq := ThreadSequencia.Create(
           formPrincipal.dbid,
           formPrincipal.midtier_host,
           'MOVIMENTOS',
           LerSequencia);

         cdsItens.Open;

      end;

     dsrItens.AutoEdit := true;
     Application.ProcessMessages;

     { abertura do cupom }
     if ecf_cc then
      begin
//        dsrItens.AutoEdit := (ecf_class = 'ECF');

        ECFX.Inicializar;
        ECFX.DadosEmpresa(
          formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString,        // nome
          formPrincipal.cdsPerfil.FieldByName('EMP_CNPJ').AsString,        // cnpj
          formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString,        // telefone
          historico,                                                       // historico
          formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString, // impressora
          formPrincipal.cdsPerfil.fieldByName('COPIAS_OS2').AsInteger      // copias
        );
        ECFX.NumeroSerie(ecf_serie);
        ECFX.AbrirCupomFiscal(ecf_cupom, '');
      end;

   end; { novo }

  { se for cupom gráfico ou texto modelado, é concomitante }
  //ecf_cc := (ecf_class = 'SEM ECF');

  { clonagem de OS }
  if Cloning and (Processo = 'OSA') then
    tmrAutoContinua.Enabled := True;

  if not formPrincipal.cdsCondicoes.Active then
    formPrincipal.cdsCondicoes.Open;

  formPrincipal.cdsCondicoes.RemoteServer.Close;

end;

procedure TformMODELO_MOV.AtualizaBarra;
begin

  { consumidor }
  lblCliente.Caption := Format('%d - %s',
    [codCliente,
     Cliente]);

  { vendedor }
  lblVendedor.Caption := Format('%s',
    [Vendedor]);

  { operação }
  lblOperacao.Caption := Format('%s',
    [Historico]);

end;

procedure TformMODELO_MOV.LerSequencia(var sequencia: longint);
begin
  codMovimento := sequencia;
  lblNumero.Caption := IntToStr(sequencia);
end;

procedure TformMODELO_MOV.menuGridPopup(Sender: TObject);
begin
  if cdsItens.Active then
   begin
     if not cdsItens.IsEmpty then
      begin
        if copy(cdsItensCODBARRA.AsString, 1, 3) <> '111' then
         begin
            if lancaPeca and (formPrincipal.cdsUsuarios.FieldByName('ESTORNO_PECA').AsString = 'N') then
              CancelarItem1.Enabled := False
            else
              CancelarItem1.Enabled := True;
         end else CancelarItem1.Enabled := True;
      end else CancelarItem1.Enabled := False;
   end else CancelarItem1.Enabled := False;
end;

procedure TformMODELO_MOV.Desconectar(var Message: TMessage);
var
  i: word;
begin

  { termino a edição }
  tag := 66;

  { fecho o formulários pai deste }
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TForm then
      if (TForm(Components[i]).Owner = (Self as TForm)) and
         (TForm(Components[i]) <> Application.MainForm) then
       begin
         PostMessage(TForm(Components[i]).Handle, CM_FORMLOGOUT, 0, 0);
         Application.ProcessMessages;
       end;

  { fecho ele mesmo }
  modalresult := mrCancel;
end;

procedure TformMODELO_MOV.AdicionarItem(codbarra, descricao, desc2, desc3, sittribu: string;
      valor, icms, icmscompra, ipi: currency);
var
  sicms: currency;
begin

  desc2 := trim(desc2);
  if (desc2 > '') and (desc2 <> 'N/F') then
    desc2 := ' SERIE/IMEI ' + desc2 + ' '
  else
    desc2 := '';

  desc3 := trim(desc3);
  if (desc3 > '') and (desc3 <> 'N/F') then
    desc2 := desc2 + ' ICCID ' + desc3 + ' ';

  inc(item);
  cdsItens.AppendRecord([
    nil,
    codbarra,
    descricao,
    1,
    valor,
    icms,
    0,
    valor,
    'S',
    item,
    valor,
    desc2,
    nil,
    nil,
    nil,
    icmscompra,
    ipi,
    sittribu
    ]);
  cdsItens.Last;

  { ECF }
  if ecf_cc then
   begin
     if cdsItens.FieldByName('SITTRIBU').AsString = '060' then
       sicms := -1 else
     if cdsItens.FieldByName('SITTRIBU').AsString = '041' then
       sicms := 0 else
       sicms := cdsItens.fieldByName('ICMS').AsCurrency;

     if (ecf_class = 'DARUMA345') or
        (ecf_class = 'BEMATECH20') then
       { valor liquido }
       ECFX.LancarItem(
         cdsItens.fieldByName('CODBARRA').AsString,
         cdsItens.fieldByName('VALOR_UNITARIO').AsCurrency,
         cdsItens.fieldByName('QUANTIDADE').AsCurrency,
         0,
         'UN',
         cdsItens.fieldByName('DESCRICAO').AsString,
         cdsItens.fieldByName('DESC2').AsString,
         sicms
       ) else
       { valor bruto }
       ECFX.LancarItem(
         cdsItens.fieldByName('CODBARRA').AsString,
         cdsItens.fieldByName('VALOR_ORIGINAL').AsCurrency,
         cdsItens.fieldByName('QUANTIDADE').AsCurrency,
         0,
         'UN',
         cdsItens.fieldByName('DESCRICAO').AsString,
         cdsItens.fieldByName('DESC2').AsString,
         cdsItens.fieldByName('ICMS').AsCurrency
       );
   end;

end;

procedure TformMODELO_MOV.FormShow(Sender: TObject);
begin
  pgcSaida.ActivePage := tabItens;
  CPF := '';
  PostMessage(Handle, CM_FORMSETUP, 0, 0);
end;

procedure TformMODELO_MOV.actClienteExecute(Sender: TObject);
begin

  if not Continuar then
   begin

      try
        formPessoas := TformPessoas.Create(Self);
        formPessoas.Tag := formPrincipal.actPessoas.Tag;
        formPessoas.Transferir := True;
        formPessoas.MultiSelect := False;
        if formPessoas.ShowModal = mrOk then
         begin

           { histórico }
           if Processo <> 'COM' then
            begin
             formPrincipal.ShowMsg('Consultando cliente...');
             if cdsVerifica.Active then
               cdsVerifica.Close;
             cdsVerifica.FetchParams;
             cdsVerifica.Params.ParamByName('CODCLIENTE').AsInteger :=
               formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
             cdsVerifica.Params.ParamByName('CODEMPRESA').AsInteger :=
               formPrincipal.codempresa;
             cdsVerifica.Execute;
             cdsVerifica.RemoteServer.Close;
             formPrincipal.HideMsg;
             if cdsVerifica.Params.ParamByName('BLOQUEIO').AsString = 'N' then
              begin

                { posso usar esse cliente }
                codCliente := formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
                Cliente    := formPessoas.cdsDados.fieldByName('NOME').AsString;
                if formPessoas.cdsDados.FieldByName('PESSOAFISICA').AsString = 'F' then
                   CPF := formPessoas.cdsDados.fieldByName('CPF').AsString
                else
                   CPF := formPessoas.cdsDados.fieldByName('CGC').AsString;

                { endereço do cliente }
                adrLOCALIZACAO := formPessoas.cdsDadosLOGRADOURO.AsString;
                adrNUMERO      := formPessoas.cdsDadosNUMERO.AsInteger;
                adrCOMPLEMENTO := formPessoas.cdsDadosCOMPLEMENTO.AsString;
                adrBAIRRO      := formPessoas.cdsDadosBAIRRO.AsString;
                adrCIDADE      := formPessoas.cdsDadosCIDADE.AsString;
                adrESTADO      := formPessoas.cdsDadosESTADO.AsString;

                AtualizaBarra;

              end else
              begin

                formPrincipal.MsgError(
                  cdsVerifica.Params.ParamByName('MENSAGEM').AsString,
                  'Bloqueio');

                { tipo do bloqueio }
                if cdsVerifica.Params.ParamByName('BLOQUEIO').AsString = 'A' then
                 begin
                   codCliente := formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
                   Cliente    := formPessoas.cdsDados.fieldByName('NOME').AsString;
                   if formPessoas.cdsDados.FieldByName('PESSOAFISICA').AsString = 'F' then
                      CPF := formPessoas.cdsDados.fieldByName('CPF').AsString
                   else
                      CPF := formPessoas.cdsDados.fieldByName('CGC').AsString;
                   AtualizaBarra;
                 end else
                 begin
                   codCliente  :=
                     formPrincipal.cdsPerfil.fieldByName('CODCLIENTE_PADRAO').AsInteger;
                   Cliente     :=
                     formPrincipal.cdsPerfil.fieldByName('CONSUMIDOR').AsString;
                 end;

              end;

            end else
            begin

                { posso usar esse cliente }
                codCliente := formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
                Cliente    := formPessoas.cdsDados.fieldByName('NOME').AsString;
                if formPessoas.cdsDados.FieldByName('PESSOAFISICA').AsString = 'F' then
                   CPF := formPessoas.cdsDados.fieldByName('CPF').AsString
                else
                   CPF := formPessoas.cdsDados.fieldByName('CGC').AsString;

                { endereço do cliente }
                adrLOCALIZACAO := formPessoas.cdsDadosLOGRADOURO.AsString;
                adrNUMERO      := formPessoas.cdsDadosNUMERO.AsInteger;
                adrCOMPLEMENTO := formPessoas.cdsDadosCOMPLEMENTO.AsString;
                adrBAIRRO      := formPessoas.cdsDadosBAIRRO.AsString;
                adrCIDADE      := formPessoas.cdsDadosCIDADE.AsString;
                adrESTADO      := formPessoas.cdsDadosESTADO.AsString;

                AtualizaBarra;

            end;

         end
      finally
        try
          formPessoas.Release;
          formPrincipal.HideMsg;
        except
        end
      end

   end else
   begin

      { chamo o form }
      try
        formPessoas := TformPessoas.Create(Self);
        formPessoas.Transferir := False;
        formPessoas.MultiSelect := False;
        formPessoas.AutoLoad := True;
        formPessoas.SetWhereDynamic(
          Format('CLIENTES.CODIGO = %d', [codCliente]),
          Format('Cliente %d - %s', [codCliente, Cliente]));
        formPessoas.codCliente := Self.codCliente;
        formPessoas.Tag := formPrincipal.actPessoas.Tag;
        formPessoas.ShowModal;
      finally
        formPessoas.Release;
      end;

   end;

end;

procedure TformMODELO_MOV.actVendedorExecute(Sender: TObject);
begin
  try
    formPessoas := TformPessoas.Create(Self);
    formPessoas.Tag := formPrincipal.actPessoas.Tag;
    formPessoas.AutoLoad := True;
    formPessoas.Transferir := True;
    formPessoas.MultiSelect := False;
    formPessoas.SetWhereDynamic(
      'CLIENTES.TIPO = ''A''',
      'Somente Associados');
    if formPessoas.ShowModal = mrOk then
     begin
       codVendedor := formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
       Vendedor    := formPessoas.cdsDados.fieldByName('NOMEUSER').AsString;
       AtualizaBarra;
     end
  finally
    try
      formPessoas.Release;
    except
    end
  end
end;

procedure TformMODELO_MOV.actFaturarExecute(Sender: TObject);
var
  i, j, offset, grupo: integer;
  sti, stj: string;
//  teste: string;
  erros: integer;
  marca: String;
  final: boolean;

  function padleft(s1, s2: string; n: integer): string;
  begin
    while length(s1) < n do
      s1 := s2 + s1;
    Result := s1;
  end;

  procedure ConfigurarPassagem(pass: integer; ultima: boolean);
  var
    x: integer;
  begin

    { inicializo os procedimentos }
    with cdsVenda do
     begin

       if active then close;
       fetchparams;

       with Params do
        begin

          { passagem dos parametros da venda - gerais }
          ParamByName('CODMOVIMENTO').AsInteger   := codMovimento;
          ParamByName('CODEMPRESA').AsInteger     := formPrincipal.codempresa;
          ParamByName('CODCLIENTE').AsInteger     := codCliente;
          ParamByName('CODRESPONSAVEL').AsInteger := formPrincipal.codusuario;
          ParamByName('CODVENDEDOR').AsInteger    := codVendedor;
          ParamByName('CODCONDPAG').AsInteger     := cdsMovimento.fieldByName('CODCONDPAG').AsInteger;
          ParamByName('CODHISTORICOPAG').AsInteger:= CodHistorico;
          ParamByName('PROCESSO').AsString        := Processo;
          ParamByName('NUMDOC').AsInteger         := cdsMovimento.fieldByName('NOTA_NUMERO').AsInteger;
          ParamByName('DATADOC').AsDate           := cdsMovimento.fieldByName('DATA_EMISSAO').AsDateTime;
          ParamByName('FRETE').AsCurrency         := cdsMovimento.fieldByName('VALOR_FRETE').AsCurrency;
          ParamByName('TOTAL').AsCurrency         := cdsMovimento.fieldByName('VALOR_TOTAL').AsCurrency;

          { sinalização da última iteração }
          if ultima then
           begin
             if pass = 1 then
              begin
                ParamByName('PASSAGEM').AsInteger := 1;
                ParamByName('TIPODOC').AsString   := 'XXX';
              end else
                ParamByName('PASSAGEM').AsInteger := 99;
           end else
           begin
             ParamByName('PASSAGEM').AsInteger    := pass;
             ParamByName('TIPODOC').AsString      := Processo;
           end;

          { reseto os parametros dos itens - todos os itens }
          for x := 1 to 3 do
           begin

             { string com o número do item }
             sti := padleft(inttostr(x), '0', 2);
             sti := 'I' + sti + '_';

             { passagem de parametros para 1 item }
             ParamByName(sti + 'CODBARRA'  ).AsString := '';
             ParamByName(sti + 'QUANTIDADE').AsCurrency  := 0;
             ParamByName(sti + 'VALOR'     ).AsCurrency  := 0;
             ParamByName(sti + 'DESCONTO'  ).AsCurrency  := 0;
             ParamByName(sti + 'ICMS'      ).AsCurrency  := 0;
             ParamByName(sti + 'ICMSCOMPRA').AsCurrency  := 0;
             ParamByName(sti + 'IPI'       ).AsCurrency  := 0;
             ParamByName(sti + 'SITTRIBU'  ).AsString := '';

           end;

        end;

     end;

  end;

begin

  { mudança de foco somente para salvar alterações }
  if cxGrid1.CanFocus then
    cxGrid1.SetFocus;

  { modo de consulta }
  if not formPrincipal.GetLicence then
   begin
     formPrincipal.MsgError(
       'O sistema está no modo de consulta. Entre em contato com a área Comercial.',
       'Modo de Consulta');
     exit;
   end;

  if pgcSaida.ActivePage = tabFatura then
   begin
     if dsrItens.AutoEdit then
      begin
        pgcSaida.ActivePage := tabItens;
        actFaturar.Caption := '&Continuar [Alt+C]';
        dxBarLargeButton9.LargeImageIndex := 92;
        Application.ProcessMessages;
      end;
   end else

  try

    { aviso de espera na tela }
    formPrincipal.ShowMsg('Gravando itens...');

    { passagem dos itens }
    with cdsItens do
     begin

       { começo do primeiro }
//       marca := BookMark;
       disablecontrols;
       grupo := 0;
       i := 1;
       j := RecordCount;
       first;
       erros := 0;
       final := false;

       while (not final) and (i <= itmax) do
        begin

          { primeira de três - configuro a passagem }
          if (((i - 1) mod 3) + 1) = 1 then
           begin
             grupo := ((i - 1) div 3) + 1;
             ConfigurarPassagem(grupo, (j<=(grupo*3)));
           end;

          { string com o número do item }
          sti := padleft(inttostr(((i - 1) mod 3) + 1), '0', 2);
          sti := 'I' + sti + '_';

          { passagem de parametros para 1 item }
          cdsVenda.Params.ParamByName(sti + 'CODBARRA'  ).AsString :=
             cdsItens.fieldByName('CODBARRA').AsString;

          cdsVenda.Params.ParamByName(sti + 'QUANTIDADE').AsCurrency  :=
             cdsItens.fieldByName('QUANTIDADE').AsCurrency;

          cdsVenda.Params.ParamByName(sti + 'VALOR'     ).AsCurrency  :=
             cdsItens.fieldByName('VALOR_ORIGINAL').AsCurrency;

          cdsVenda.Params.ParamByName(sti + 'DESCONTO'  ).AsCurrency  :=
             cdsItens.fieldByName('VALOR_ORIGINAL').AsCurrency -
             cdsItens.fieldByName('VALOR_UNITARIO').AsCurrency;

          cdsVenda.Params.ParamByName(sti + 'ICMS'      ).AsCurrency  :=
             cdsItens.fieldByName('ICMS').AsCurrency;

          cdsVenda.Params.ParamByName(sti + 'ICMSCOMPRA').AsCurrency  :=
             cdsItens.fieldByName('ICMSCOMPRA').AsCurrency;

          cdsVenda.Params.ParamByName(sti + 'IPI'       ).AsCurrency  :=
             cdsItens.fieldByName('IPI').AsCurrency;

          cdsVenda.Params.ParamByName(sti + 'SITTRIBU'  ).AsString :=
             cdsItens.fieldByName('SITTRIBU').AsString;

          { proximo registro }
          inc(i);
          next;

          final := eof;

//          { marca de final de tabela }
//          if eof then
//           begin
//             final := true;
//             ConfigurarPassagem(grupo, true);
//           end else final := false;
//
          { se atingiu 3 itens ou o fim - chamo a rotina }
          if ((((i - 1) mod 3) + 1) = 1) or final then
           begin

//             { debug }
//             teste := '';
//             for j := 0 to cdsVenda.Params.Count -1 do
//               teste := teste + cdsVenda.Params[j].Name + ' = [' + cdsVenda.Params[j].AsString + ']; ';
//             formPrincipal.MsgError(teste, 'DEBUG');

             tempo1 := now;

             { executo a procedure }
             cdsVenda.Execute;

             { monitora o tempo de execução da pesquisa }
             tempo1 := (now - tempo1) * 86400;
             if Round(tempo1) > 3 then
               formPrincipal.CONN_DBLento(
                 Self.Name + ' Continuar',
                 IntToStr(codMovimento),
                 IntToStr(Round(tempo1)));

//             { debug }
//             teste := '';
//             for j := 0 to cdsVenda.Params.Count -1 do
//               teste := teste + cdsVenda.Params[j].Name + ' = [' + cdsVenda.Params[j].AsString + ']; ';
//             formPrincipal.MsgError(teste, 'DEBUG');
//             teste := '';
//             for j := 0 to cdsVenda.FieldDefs.Count -1 do
//               teste := teste + cdsVenda.FieldDefs[j].Name + ' = [' + cdsVenda.fieldByName(cdsVenda.FieldDefs[j].Name).AsString + ']; ';
//             formPrincipal.MsgError(teste, 'DEBUG');

             { calculo o deslocamento do último grupo }
             offset := i - ((3 * (grupo - 1)) + 1);

             { testo se cada item foi vendido com sucesso }
             j := i;
             repeat

               { registro imediatamente anterior }
               moveby(-1);

               { string com o número do item }
               stj := padleft(inttostr(((j - 2) mod 3) + 1), '0', 2);
               stj := 'RE_' + stj;

               { verifico o resultado }
               if (cdsVenda.Params.ParamByName(stj).AsInteger = 1) or
                  (cdsVenda.Params.ParamByName('RE_MOVIMENTO').AsInteger = 1) then
                begin
                  edit;
                  fieldByname('OK').AsString := 'N';
                  post;
                  inc(erros);
                end;

               dec(j);

             until j = (i - offset);

             { volto a posição original }
             moveby(offset);

           end;

        end;

       { fim dos itens }
       cdsVenda.RemoteServer.Close;
//       BookMark := marca;
       enablecontrols;

     end;

    { problemas }
    if (cdsVenda.Params.ParamByName('RE_MOVIMENTO').AsInteger = 1) or
        (erros > 0) then
     begin
       formPrincipal.HideMsg;
       formPrincipal.MsgError(
         'Atenção!'+ #13#10#13#10 +
         'Algum(s) item(s) não puderam ser processados.',
         'Problemas');
     end else
     begin
       pgcSaida.ActivePage := tabFatura;
       actFaturar.Caption := '&Voltar [Alt+C]';
       dxBarLargeButton9.LargeImageIndex := 6;
       Application.ProcessMessages;

       with cdsPagamento do
        begin
          if active then close;
          Params.ParamByName('CODMOVIMENTO').AsInteger := codMovimento;
          open;
          cdsPagamento.RemoteServer.Close;
          cdsMovimento.Edit;
          cdsMovimento.fieldByName('VALOR_PAGAMENTOS').AsCurrency :=
            cdsMovimento.fieldByName('VALOR_TOTAL').AsCurrency;
          cdsMovimento.Post;
        end;

       { ECF }
       if ecf_cc then
        begin
          if (ecf_class = 'DARUMA345') or
             (ecf_class = 'BEMATECH20') then
            { valor liquido }
            ECFX.TotalizaCupomFiscal(
              0,
              0) else
            { valor bruto }
            ECFX.TotalizaCupomFiscal(
              cdsMovimento.fieldByName('VALOR_DESCONTO').AsCurrency,
              cdsMovimento.fieldByName('VALOR_ACRESCIMO').AsCurrency);
        end;

     end;

    if not formPrincipal.cdsDocumentos.Active then
     begin
       formPrincipal.cdsDocumentos.Open;
       formPrincipal.cdsDocumentos.RemoteServer.Close;
     end;

    { retiro o aviso }
    formPrincipal.HideMsg;

  except
    on e: exception do
     begin
       cdsVenda.RemoteServer.Close;
       cdsItens.EnableControls;
       formPrincipal.CONN_DBError(
         Self.Caption + ' Continuar',
         IntToStr(codMovimento),
         e.message);

       { debug }
       formPrincipal.MsgError(
         e.message,
         'Erro');
       cxGrid1.SetFocus;

     end;
  end;

//  { se não for ecf, adiciono os dados das séries as observações }
//  if ecf_cc and (ecf_class = 'SEM ECF') and (self.Processo = 'VEN') then
//   begin
//     if trim(ECFX.LerDesc2) > '' then
//      begin
//        if not (cdsMovimento.State = dsEdit) then
//          cdsMovimento.Edit;
//        cdsMovimento.FieldByName('OBSERVACOES').AsString :=
//          '##' + ECFX.LerDesc2 + '## ' +
//          cdsMovimento.FieldByName('OBSERVACOES').AsString;
//        cdsMovimento.Post;
//      end;
//   end;

  if PularPagamentos or (Cloning and (Processo = 'OSA')) then
   begin
     cdsFechamento.Tag := 1;
     modalresult := mrOk;
   end;

end;

procedure TformMODELO_MOV.actAjudaExecute(Sender: TObject);
begin
  formPrincipal.MsgError(
    'Implementar Ajuda!',
    'Ajuda');
end;

procedure TformMODELO_MOV.actOperacaoExecute(Sender: TObject);
begin
  try
    formHistoricoPag := TformHistoricoPag.Create(Self);
    formHistoricoPag.Tag := formPrincipal.actHistoricoPag.Tag;
    formHistoricoPag.AutoLoad := True;
    formHistoricoPag.Transferir := True;
    formHistoricoPag.MultiSelect := False;
    if formHistoricoPag.ShowModal = mrOk then
     if not formHistoricoPag.cdsDados.IsEmpty then
      begin
        CodHistorico := formHistoricoPag.cdsDados.fieldByName('CODIGO').AsInteger;
        Historico    := formHistoricoPag.cdsDados.fieldByName('DESCRICAO').AsString;
        AtualizaBarra;
      end;
  finally
    try
      formHistoricoPag.Release;
    except
    end
  end
end;

procedure TformMODELO_MOV.pgcSaidaChange(Sender: TObject);
begin
  if pgcSaida.ActivePage = tabFatura then
   begin
     actSerie.Visible    := False;
     actServico.Visible  := False;
     actProduto.Visible  := False;
     actVendedor.Visible := False;
     actCliente.Visible  := False;
     actOperacao.Visible := False;
     actFechar.Visible   := True;
   end else
   begin
     if Processo = 'COM' then
      begin
        actFechar.Visible   := False;
        actOperacao.Visible := True;
        actCliente.Visible  := True;
        actProduto.Visible  := True;
      end;

     if (Processo = 'VEN') or (Processo = 'ORC') then
      begin
        actFechar.Visible   := False;
        if Continuar then
        begin
          actCliente.Visible := False;
          actOperacao.Visible := False;
        end else
        begin
          actOperacao.Visible := True;
          actCliente.Visible := True;
        end;
        actVendedor.Visible := True;
        actProduto.Visible  := True;
        if Processo = 'ORC' then
          actServico.Visible := True
        else
          actServico.Visible := False;
        if Processo = 'VEN' then
          actServico.Visible := True;
        actSerie.Visible    := False;
      end;
   end;
end;

procedure TformMODELO_MOV.actFecharExecute(Sender: TObject);
var
  cupom: integer;
  marca: TBookMark;
  i: integer;
  fechar: Boolean;
  State: TKeyBoardState;
  endereco: string;
  ServerTime: TDateTime;
  cupomstr: string;
  sicms: currency;
begin
  cupom := 0;

  if pgcSaida.ActivePage = tabItens then
    exit;

  GetKeyboardState(State);

  { fechamento ou só saída? }
  if formPrincipal.cdsUsuarios.FieldByName('FECHAMENTO').AsString = 'S' then
   begin
     fechar := True;
     if not ecf_cc then
       fechar := formPrincipal.Pergunta(
         'Deseja fazer o fechamento deste movimento?',
         'Fechamento') = IDYES;
   end else fechar := False;

  { mudança de foco somente para salvar alterações }
  if cxGrid2.CanFocus then
    cxGrid2.SetFocus;

  if cdsMovimento.state = dsEdit then
    cdsMovimento.post;

  try

   if cdsPagamento.ChangeCount > 0 then
    begin
      formPrincipal.ShowMsg('Gravando pagamentos...');
      cdsPagamento.ApplyUpdates(-1);
      cdsPagamento.RemoteServer.Close;
      formPrincipal.HideMsg;
    end;

   { aviso de espera na tela }
   if fechar then
    begin
      { verificação de senha }
      if not formPrincipal.VerificaSenha(Self, 'Concluir') then
        exit;
      formPrincipal.ShowMsg('Fechando...')
    end else
      formPrincipal.ShowMsg('Concluindo...');

   if fechar then
    begin

       cdsFechamento.FetchParams;
       cdsFechamento.Params.ParamByName('CODMOVIMENTO').AsInteger := codMovimento;
       cdsFechamento.Params.ParamByName('USUARIOFECHAMENTO').AsString :=
         formPrincipal.usuario;
       cdsFechamento.Params.ParamByName('OBSERVACOES').AsString :=
         cdsMovimento.fieldByName('OBSERVACOES').AsString;
       cdsFechamento.Params.ParamByName('CONDICOES1').AsString :=
         cdsMovimento.fieldByName('CONDICOES1').AsString;
       cdsFechamento.Params.ParamByName('CONDICOES2').AsString :=
         cdsMovimento.fieldByName('CONDICOES2').AsString;
       cdsFechamento.Params.ParamByName('OPCIONAIS').AsString :=
         cdsMovimento.fieldByName('OPCIONAIS').AsString;

       tempo1 := now;

       cdsFechamento.execute;
       cdsFechamento.RemoteServer.Close;

       { monitora o tempo de execução da pesquisa }
       tempo1 := (now - tempo1) * 86400;
       if Round(tempo1) > 3 then
         formPrincipal.CONN_DBLento(
           Self.Name + ' Fechar',
           IntToStr(codMovimento),
           IntToStr(Round(tempo1)));

       if cdsFechamento.Params.ParamByName('RE_MOVIMENTO').AsInteger = 0 then
         cdsFechamento.tag := 1 else
        begin
          cdsFechamento.tag := 0;
          if cdsFechamento.Params.ParamByName('RE_MOVIMENTO').AsInteger = 2 then
           begin
             formPrincipal.HideMsg;
             formPrincipal.MsgError(
               'Limite de Crédito excedido.',
               'Limite');
             exit;
           end;
          if cdsFechamento.Params.ParamByName('RE_MOVIMENTO').AsInteger = 3 then
           begin
             formPrincipal.HideMsg;
             formPrincipal.MsgError(
               'Cliente possui débitos a prazo. Bloqueado.',
               'Bloqueio');
             exit;
           end;
        end;

       { ECF não concomitante }
       if (not ecf_cc) and (self.Processo = 'VEN') then
        begin
          ECFX.Inicializar;
          ECFX.DadosEmpresa(
            formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString,        // nome
            formPrincipal.cdsPerfil.FieldByName('EMP_CNPJ').AsString,        // cnpj
            formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString,        // telefone
            historico,                                                       // historico
            formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString, // impressora
            formPrincipal.cdsPerfil.fieldByName('COPIAS_OS2').AsInteger                                                                // copias
          );
          ECFX.AbrirCupomFiscal(cupom, funcoes.LimpaNumStr(CPF));
          with cdsItens do
           begin
             marca := BookMark;
             disablecontrols;
             first;
             while not eof do
              begin
                if fieldByName('OK').AsString = 'S' then
                 begin
                   if fieldByName('SITTRIBU').AsString = '060' then
                     sicms := -1 else
                   if fieldByName('SITTRIBU').AsString = '041' then
                     sicms := 0 else
                     sicms := fieldByName('ICMS').AsCurrency;

                   if (ecf_class = 'DARUMA345') or
                      (ecf_class = 'BEMATECH20') then
                     { valor liquido }
                     ECFX.LancarItem(
                       fieldByName('CODBARRA').AsString,
                       fieldByName('VALOR_UNITARIO').AsCurrency,
                       fieldByName('QUANTIDADE').AsCurrency,
                       0,
                       'UN',
                       fieldByName('DESCRICAO').AsString,
                       fieldByName('DESC2').AsString,
                       sicms
                     ) else
                     { valor bruto }
                     ECFX.LancarItem(
                       fieldByName('CODBARRA').AsString,
                       fieldByName('VALOR_ORIGINAL').AsCurrency,
                       fieldByName('QUANTIDADE').AsCurrency,
                       0,
                       'UN',
                       fieldByName('DESCRICAO').AsString,
                       fieldByName('DESC2').AsString,
                       fieldByName('ICMS').AsCurrency
                     );
                 end;
                next;
              end;
             BookMark := marca;
             enablecontrols;
           end;
          if (ecf_class = 'DARUMA345') or
             (ecf_class = 'BEMATECH20') then
            { valor liquido }
            ECFX.TotalizaCupomFiscal(
              0,
              0
            ) else
            { valor bruto }
            ECFX.TotalizaCupomFiscal(
              cdsMovimento.FieldByName('VALOR_DESCONTO').AsCurrency,
              cdsMovimento.FieldByName('VALOR_ACRESCIMO').AsCurrency
            );


//          { se não for ecf, adiciono os dados das séries as observações }
//          if (ecf_class = 'SEM ECF') then
//           begin
//             if trim(ECFX.LerDesc2) > '' then
//              begin
//                if not (cdsMovimento.State = dsEdit) then
//                  cdsMovimento.Edit;
//                cdsMovimento.FieldByName('OBSERVACOES').AsString :=
//                  '##' + ECFX.LerDesc2 + '## ' +
//                  cdsMovimento.FieldByName('OBSERVACOES').AsString;
//                cdsMovimento.Post;
//              end;
//           end;

        end;

       if self.Processo = 'VEN' then
        begin

          { ECF comum - pagamentos }
          formPrincipal.dsrDocumentos.DataSet.Open;

          cdsPagamento.DisableControls;
          for i := 1 to cdsPagamento.RecordCount do
           begin

             cdsPagamento.RecNo := i;

             formPrincipal.dsrDocumentos.DataSet.Locate('CODIGO',
               cdsPagamento.FieldByName('CODDOCUMENTO').AsInteger, []);

             ECFX.FormaPagamento(
               codMovimento,
               cdsPagamento.fieldByName('NUMERO').AsInteger,
               '01',
               formPrincipal.dsrDocumentos.DataSet.FieldByName('DOCUMENTO').AsString,
               cdsPagamento.fieldByName('DATAVENCIMENTO').AsDateTime,
               cdsPagamento.fieldByName('VALOR').AsCurrency
             );

           end;
          cdsPagamento.EnableControls;

          { endereço do cliente }
          endereco := trim(adrLOCALIZACAO) + ', ' +
            IntToStr(adrNUMERO) + ' ' +
            trim(adrCOMPLEMENTO) + ' - ' +
            trim(adrBAIRRO) + ' - ' +
            trim(adrCIDADE) + ', ' +
            adrESTADO;

          { fechamento }
          if ativa_numero > '' then
           begin

             ECFX.Fechamento(
               Cliente,
               'CNPJ/CPF: ' + CPF + ' - ' + endereco,
               'LINHA: ' + ativa_numero + ' PLANO: ' + ativa_operadora + ' ' +
                  ativa_plano,
               Trim(cdsMovimento.fieldByName('OBSERVACOES').AsString) + ' ** ' +
                 formPrincipal.cdsPerfil.fieldByName('MENSAGEM_VENDA').AsString,
               'VENDEDOR: ' + Vendedor + ' - ' +
               'VENDA: ' + IntToStr(codMovimento)
             );

           end else
           begin

             ECFX.Fechamento(
               Cliente,
               'CNPJ/CPF: ' + CPF + ' - ' + endereco,
               '',
               Trim(cdsMovimento.fieldByName('OBSERVACOES').AsString) + ' ** ' +
                 formPrincipal.cdsPerfil.fieldByName('MENSAGEM_VENDA').AsString,
               'VENDEDOR: ' + Vendedor + ' - ' +
               'VENDA: ' + IntToStr(codMovimento)
             );

           end;

          { gravação do número do cupom }
          if (ecf_class = 'DARUMA345') or
             (ecf_class = 'BEMATECH20') then
           begin
             ServerTime := formPrincipal.GetTime;
             if cdsNFEmissao.active then
               cdsNFEmissao.close;
             try
               ECFX.NumeroCupom(cupomstr);
               ecf_cupom := StrToInt(cupomstr);
             except
               ecf_cupom := 1;
             end;
             cdsNFEmissao.fetchParams;
             cdsNFEmissao.Params[0].AsInteger := codMovimento;
             cdsNFEmissao.Params[1].AsInteger := ecf_cupom;
             cdsNFEmissao.Params[2].AsString := 'ECF';
             cdsNFEmissao.Params[3].Value := ServerTime;
             cdsNFEmissao.Params[4].Value := ServerTime;
             cdsNFEmissao.Params[5].Value := '';
             cdsNFEmissao.execute;
             cdsNFEmissao.RemoteServer.Close;
           end;

        end;

     { impressão do fechamento }
     if ((ecf_class = 'SEM ECF') or (ecf_class = 'NFE')) and (self.Processo = 'VEN') then
       try

         if ((State[vk_Shift] and 128) <> 0) then
          begin
            if (formPrincipal.cdsPerfil.fieldByName('OSFECHADA_PADRAO').AsInteger > 0) and
               (formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString > '') then
             begin
               formPrintmov := TformPrintmov.Create(Self);
               formPrintmov.codMovimento :=
                 Self.codMovimento;
               formPrintmov.Caption := 'PEDIDO DE VENDA';
               formPrintmov.numImpMov :=
                 formPrincipal.cdsPerfil.fieldByName('OSFECHADA_PADRAO').AsInteger;
               formPrintmov.impressora :=
                 formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString;
               formPrincipal.HideMsg;
               formPrintmov.showmodal;
               formPrintmov.Release;
             end;
          end; { else }
//          begin
//
//            if trim(formPrincipal.cdsImpressoras.FieldByName('ECF').AsString) <> 'NFE' then
//             begin
//
//               { nota de formulário }
//               if (formPrincipal.cdsPerfil.fieldByName('NOTA_PADRAO').AsInteger > 0) and
//                  (formPrincipal.cdsImpressoras.fieldByName('NF').AsString > '') then
//                begin
//                  formPrintmov := TformPrintmov.Create(Self);
//                  formPrintmov.codMovimento :=
//                    Self.codMovimento;
//                  formPrintmov.Caption := 'NOTA FISCAL';
//                  formPrintmov.nf := True;
//                  formPrintmov.numImpMov :=
//                    formPrincipal.cdsPerfil.fieldByName('NOTA_PADRAO').AsInteger;
//                  formPrintmov.impressora :=
//                    formPrincipal.cdsImpressoras.fieldByName('NF').AsString;
//                  formPrincipal.HideMsg;
//                  formPrintmov.showmodal;
//                  formPrintmov.Release;
//                end;
//
//             end else
//             begin
//
//               { nota fiscal eletrônica }
//               try
//                 formNFeGerar := TformNFeGerar.Create(Self);
//                 formNFeGerar.codMovimento :=
//                   Self.codMovimento;
//                 formNFeGerar.showmodal;
//               finally
//                 try
//                   { destruo o form }
//                   formNFeGerar.Release;
//                 except
//                 end
//               end
//
//             end;
//
//          end;

       except
       end;

     { impressão do fechamento }
     if ((self.Processo = 'COM') and (cdsMovimento.FieldByName('NOTA_NUMERO').AsInteger = 0)) then

       if formPrincipal.Pergunta(
            'Deseja emitir uma Nota Fiscal de Entrada para esta compra?',
            'Compra') = IDYES then

         if trim(formPrincipal.cdsImpressoras.FieldByName('ECF').AsString) <> 'NFE' then
          begin

             try
               formPrintmov := TformPrintmov.Create(Self);
               formPrintmov.codMovimento :=
                 Self.codMovimento;

               if not ((State[vk_Shift] and 128) <> 0) then
                begin
                  if (formPrincipal.cdsPerfil.fieldByName('NOTA_PADRAO').AsInteger > 0) and
                     (formPrincipal.cdsImpressoras.fieldByName('NF').AsString > '') then
                   begin
                     formPrintmov.nf := True;
                     formPrintmov.Caption := 'NOTA FISCAL';
                     formPrintmov.numImpMov :=
                       formPrincipal.cdsPerfil.fieldByName('NOTA_PADRAO').AsInteger;
                     formPrintmov.impressora :=
                       formPrincipal.cdsImpressoras.fieldByName('NF').AsString;
                   end;
                end;

               formPrincipal.HideMsg;
               formPrintmov.showmodal;
             finally
               try
                 { destruo o form }
                 formPrintMov.Release;
               except
               end
             end;

          end else
          begin

              { nota fiscal eletrônica }
              try
                formNFeGerar := TformNFeGerar.Create(Self);
                formNFeGerar.codMovimento :=Self.codMovimento;
                formNFeGerar.showmodal;
              finally
                try
                  { destruo o form }
                  formNFeGerar.Release;
                except
                end
              end;

          end;

    end else
    begin
      cdsFechamento.FetchParams;
      cdsFechamento.Params.ParamByName('CODMOVIMENTO').AsInteger := codMovimento;
      cdsFechamento.Params.ParamByName('USUARIOFECHAMENTO').Clear;
      cdsFechamento.Params.ParamByName('OBSERVACOES').AsString :=
        cdsMovimento.fieldByName('OBSERVACOES').AsString;
      cdsFechamento.Params.ParamByName('CONDICOES1').AsString :=
        cdsMovimento.fieldByName('CONDICOES1').AsString;
      cdsFechamento.Params.ParamByName('CONDICOES2').AsString :=
        cdsMovimento.fieldByName('CONDICOES2').AsString;
      cdsFechamento.Params.ParamByName('OPCIONAIS').AsString :=
        cdsMovimento.fieldByName('OPCIONAIS').AsString;

      tempo1 := now;

      cdsFechamento.execute;
      cdsFechamento.RemoteServer.Close;

      { monitora o tempo de execução da pesquisa }
      tempo1 := (now - tempo1) * 86400;
      if Round(tempo1) > 3 then
        formPrincipal.CONN_DBLento(
          Self.Name + ' Gravar',
          IntToStr(codMovimento),
          IntToStr(Round(tempo1)));

      cdsFechamento.tag := 1;
    end;

   formPrincipal.SocketConnection.Close;

   formPrincipal.HideMsg;

   Self.ModalResult := mrOk;

  except
    on e: exception do
     begin
       formPrincipal.CONN_DBError(
         Self.Name + ' Fechar',
         IntToStr(codMovimento),
         e.message);
       formPrincipal.SocketConnection.Close;
       formPrincipal.HideMsg;
       formPrincipal.MsgError(
         e.message,
         'Erro');
     end;
  end;

end;

procedure TformMODELO_MOV.FormCreate(Sender: TObject);
var
  i: word;
begin
  item := 0;
  recalculo_itens   := false;
  recalculo_global  := false;
  codMovimento := 0;
  codCliente := 0;
  Processo := 'VEN';
  Continuar := False;
  ativa_numero := '';
  ativa_operadora := '';
  ativa_plano := '';
  PularPagamentos := False;
  Cloning := False;
  tempMovimento := 0;
  lancaPeca := False;
  
  { estilo do formulário Principal }
  dxBarManager.Style := formPrincipal.dxBarManager.Style;
  dxStatusBar.PaintStyle := formPrincipal.dxStatusBar.PaintStyle;

  { desativo o dragging das barras }
  for i := 0 to dxBarManager.Bars.Count - 1 do
    dxBarManager.Bars[i].NotDocking := [dsNone, dsLeft, dsTop, dsRight, dsBottom];

end;

procedure TformMODELO_MOV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { desconectar }
  if key = vk_F11 then
   begin
     PostMessage(Handle, CM_FORMLOGOUT, 0, 0);
     PostMessage(formPrincipal.Handle, CM_FORMLOGOUT, 0, 0);
   end;
end;

procedure TformMODELO_MOV.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if not Continuar then
   begin

     if not (cdsFechamento.Tag = 1) then
      begin

        if Self.Tag = 66 then
          CanClose := True
        else
          CanClose := formPrincipal.Pergunta(
            'Se você fechar a janela agora, o movimento será Estornado. Continuar?',
            'Estorno') = IDYES;

        if CanClose then
         try

           if Self.Tag <> 66 then
             formPrincipal.ShowMsg('Estornando...');

           with cdsEstorno do
            begin
              FetchParams;
              Params.ParamByName('CODMOVIMENTO').AsInteger :=
                codMovimento;
              Params.ParamByName('USUARIOESTORNO').AsString :=
                formPrincipal.usuario;
              execute;
              RemoteServer.Close;
            end;

           if ecf_cc then
             ECFX.CancelarCupom;

           formPrincipal.HideMsg;

         except

           on e: exception do
            begin
              cdsEstorno.RemoteServer.Close;
              formPrincipal.CONN_DBError(
                Self.Name + ' Estornar',
                IntToStr(codMovimento),
                e.message);
              formPrincipal.HideMsg;
            end;

         end;
      end;

   end else
   begin
     CanClose := True;
   end;
end;

procedure TformMODELO_MOV.cdsMovimentoCalcFields(DataSet: TDataSet);
begin

  cdsMovimento.OnCalcFields := nil;

  with dataset do
   begin

     { calculo do valor total }
     fieldByName('VALOR_TOTAL').AsCurrency :=
       fieldByName('VALOR_ITENS').AsCurrency -
       fieldByName('VALOR_DESCONTO').AsCurrency +
       fieldByName('VALOR_ACRESCIMO').AsCurrency +
       fieldByName('VALOR_JUROS').AsCurrency +
       fieldByName('VALOR_FRETE').AsCurrency;

     { calculo da margem de contribuição }
     if fieldByName('VALOR_CUSTO').AsCurrency > 0 then
       fieldByName('MARGEM').AsCurrency :=
         ((fieldByName('VALOR_TOTAL').AsCurrency /
         fieldByName('VALOR_CUSTO').AsCurrency) - 1) * 100
     else
       fieldByName('MARGEM').AsCurrency := 100;

   end;

  cdsMovimento.OnCalcFields := cdsMovimentoCalcFields; 
end;

procedure TformMODELO_MOV.cdsItensAfterPost(DataSet: TDataSet);
var
  desconto: currency;
begin
  with cdsMovimento do
    try

      { desconto nos itens atualiza desconto global }
      if not recalculo_global then
       begin
         recalculo_itens := True;

         if not (state = dsEdit) then edit;

         fieldByName('VALOR_ITENS').AsCurrency :=
           StrToFloat(DataSet.fieldByName('TOTAL').AsString);

         fieldByName('VALOR_CUSTO').AsCurrency :=
           StrToFloat(DataSet.fieldByName('CUSTO').AsString);

         desconto := StrToFloat(DataSet.fieldByName('DESCONTO').AsString);

         if desconto > 0 then
          begin
            fieldByName('VALOR_ACRESCIMO').AsCurrency := 0;
            fieldByName('VALOR_DESCONTO').AsCurrency  := desconto;
          end else
          begin
            fieldByName('VALOR_DESCONTO').AsCurrency  := 0;
            fieldByName('VALOR_ACRESCIMO').AsCurrency := (desconto * -1);
          end;

         recalculo_itens := False;

         post;
       end;

    except
      on exception do
        fieldByName('VALOR_ITENS').AsCurrency := 0;
    end;
end;

procedure TformMODELO_MOV.cdsItensCalcFields(DataSet: TDataSet);
begin
  cdsItens.AutoCalcFields := False;
  with DataSet do
   begin

     { percentual de desconto }
     if fieldByName('VALOR_ORIGINAL').AsCurrency > 0 then
       fieldByName('PERC_DESCONTO').AsCurrency :=
         100 - ((fieldByName('VALOR_UNITARIO').AsCurrency * 100) /
         fieldByName('VALOR_ORIGINAL').AsCurrency)
     else
       fieldByName('PERC_DESCONTO').AsCurrency := 0;

     { valor total - se for marcado }
     if fieldByName('OK').AsString = 'S' then
      begin
        fieldByName('VALOR_TOTAL').AsCurrency :=
          fieldByName('VALOR_UNITARIO').AsCurrency *
          fieldByName('QUANTIDADE').AsCurrency;
        fieldByName('TOTAL_ORIGINAL').AsCurrency :=
          fieldByName('VALOR_ORIGINAL').AsCurrency *
          fieldByName('QUANTIDADE').AsCurrency;
        fieldByName('TOTAL_DESCONTO').AsCurrency :=
          (fieldByName('VALOR_ORIGINAL').AsCurrency -
          fieldByName('VALOR_UNITARIO').AsCurrency) *
          fieldByName('QUANTIDADE').AsCurrency;
        fieldByName('TOTAL_CUSTO').AsCurrency :=
          fieldByName('VALOR_CUSTO').AsCurrency *
          fieldByName('QUANTIDADE').AsCurrency;
      end else
      begin
        fieldByName('VALOR_TOTAL').AsCurrency    := 0;
        fieldByName('TOTAL_ORIGINAL').AsCurrency := 0;
        fieldByName('TOTAL_DESCONTO').AsCurrency := 0;
        fieldByName('TOTAL_CUSTO').AsCurrency    := 0;
      end;

   end;
  cdsItens.AutoCalcFields := True;
end;

procedure TformMODELO_MOV.tmrItensTimer(Sender: TObject);
begin
  tmrItens.Enabled := False;
  if cdsItens.state in [dsInsert, dsEdit] then
    cdsItens.Post;
end;

procedure TformMODELO_MOV.cdsItensQUANTIDADEChange(Sender: TField);
begin
  if cdsItensVALOR_UNITARIO.AsCurrency > cdsItensVALOR_ORIGINAL.AsCurrency then
    cdsItensVALOR_ORIGINAL.AsCurrency := cdsItensVALOR_UNITARIO.AsCurrency;
  tmrItens.Enabled := True;
end;

procedure TformMODELO_MOV.cdsMovimentoVALOR_DESCONTOChange(Sender: TField);
var
  total: currency;
begin
  try
    cdsMovimento.FieldByName('PERC_DESCONTO').OnChange := nil;

    total := StrToFloat(cdsItens.fieldByName('TOTAL').AsString);

    cdsMovimento.fieldByName('PERC_DESCONTO').AsCurrency :=
      (Sender.AsCurrency * 100) / total;

    { zero o acrescimo }
    cdsMovimento.FieldByName('VALOR_ACRESCIMO').OnChange := nil;
    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange  := nil;
    cdsMovimento.fieldByName('VALOR_ACRESCIMO').AsCurrency  := 0;
    cdsMovimento.fieldByName('PERC_ACRESCIMO').AsCurrency   := 0;
    cdsMovimento.FieldByName('VALOR_ACRESCIMO').OnChange :=
      cdsMovimentoVALOR_ACRESCIMOChange;
    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange  :=
      cdsMovimentoPERC_ACRESCIMOChange;

    cdsMovimento.FieldByName('PERC_DESCONTO').OnChange :=
      cdsMovimentoPERC_DESCONTOChange;

    if not recalculo_itens then
      DescontoItens(cdsMovimento.fieldByName('PERC_DESCONTO').AsCurrency);
  except
    cdsMovimento.FieldByName('PERC_DESCONTO').OnChange :=
      cdsMovimentoPERC_DESCONTOChange;
  end;
end;

procedure TformMODELO_MOV.cdsMovimentoPERC_DESCONTOChange(Sender: TField);
var
  total: currency;
begin
  try
    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange := nil;

    total := StrToFloat(cdsItens.fieldByName('TOTAL').AsString);

    cdsMovimento.fieldByName('VALOR_DESCONTO').AsCurrency :=
      (total * Sender.AsCurrency) / 100;

    { zero o acrescimo }
    cdsMovimento.FieldByName('VALOR_ACRESCIMO').OnChange := nil;
    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange  := nil;
    cdsMovimento.fieldByName('VALOR_ACRESCIMO').AsCurrency  := 0;
    cdsMovimento.fieldByName('PERC_ACRESCIMO').AsCurrency   := 0;
    cdsMovimento.FieldByName('VALOR_ACRESCIMO').OnChange :=
      cdsMovimentoVALOR_ACRESCIMOChange;
    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange  :=
      cdsMovimentoPERC_ACRESCIMOChange;

    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange :=
      cdsMovimentoVALOR_DESCONTOChange;

    if not recalculo_itens then
      DescontoItens(Sender.AsCurrency);
  except
    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange :=
      cdsMovimentoVALOR_DESCONTOChange;
  end;
end;

procedure TformMODELO_MOV.DescontoItens(perc: currency);
var
  marca: TBookMark;
begin
  recalculo_global := True;
  with cdsItens do
   begin
     marca := BookMark;
     disablecontrols;
     first;
     while not eof do
      begin
        if not (state = dsEdit) then edit;
        fieldByName('VALOR_UNITARIO').AsCurrency :=
          ((100 - perc) * fieldByName('VALOR_ORIGINAL').AsCurrency) / 100;
        post;
        next;
      end;
     BookMark := marca;
     enablecontrols;
   end;
  recalculo_global := False;
end;

procedure TformMODELO_MOV.dsrItensDataChange(Sender: TObject; Field: TField);
begin
  formPrincipal.ReiniciarRelogio;
end;

procedure TformMODELO_MOV.dsrMovimentoDataChange(Sender: TObject;
  Field: TField);
begin
  formPrincipal.ReiniciarRelogio;
end;

procedure TformMODELO_MOV.cdsMovimentoVALOR_ACRESCIMOChange(
  Sender: TField);
var
  total: currency;
begin
  try
    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange := nil;

    total := StrToFloat(cdsItens.fieldByName('TOTAL').AsString);

    cdsMovimento.fieldByName('PERC_ACRESCIMO').AsCurrency :=
      ((Sender.AsCurrency * 100) / total);

    { zero o desconto }
    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange := nil;
    cdsMovimento.fieldByName('PERC_DESCONTO').OnChange  := nil;
    cdsMovimento.fieldByName('VALOR_DESCONTO').AsCurrency  := 0;
    cdsMovimento.fieldByName('PERC_DESCONTO').AsCurrency   := 0;
    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange :=
      cdsMovimentoVALOR_DESCONTOChange;
    cdsMovimento.fieldByName('PERC_DESCONTO').OnChange  :=
      cdsMovimentoPERC_DESCONTOChange;

    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange :=
      cdsMovimentoPERC_ACRESCIMOChange;

    if not recalculo_itens then
      AcrescimoItens(cdsMovimento.fieldByName('PERC_ACRESCIMO').AsCurrency);
  except
    cdsMovimento.FieldByName('PERC_ACRESCIMO').OnChange :=
      cdsMovimentoPERC_ACRESCIMOChange;
  end;
end;

procedure TformMODELO_MOV.cdsMovimentoPERC_ACRESCIMOChange(Sender: TField);
var
  total: currency;
begin
  try
    cdsMovimento.fieldByName('VALOR_ACRESCIMO').OnChange := nil;

    total := StrToFloat(cdsItens.fieldByName('TOTAL').AsString);

    cdsMovimento.fieldByName('VALOR_ACRESCIMO').AsCurrency :=
      ((total * Sender.AsCurrency) / 100);

    { zero o desconto }
    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange := nil;
    cdsMovimento.fieldByName('PERC_DESCONTO').OnChange  := nil;
    cdsMovimento.fieldByName('VALOR_DESCONTO').AsCurrency  := 0;
    cdsMovimento.fieldByName('PERC_DESCONTO').AsCurrency   := 0;
    cdsMovimento.fieldByName('VALOR_DESCONTO').OnChange :=
      cdsMovimentoVALOR_DESCONTOChange;
    cdsMovimento.fieldByName('PERC_DESCONTO').OnChange  :=
      cdsMovimentoPERC_DESCONTOChange;

    cdsMovimento.fieldByName('VALOR_ACRESCIMO').OnChange :=
      cdsMovimentoVALOR_ACRESCIMOChange;

    if not recalculo_itens then
      AcrescimoItens(Sender.AsCurrency);
  except
    cdsMovimento.fieldByName('VALOR_ACRESCIMO').OnChange :=
      cdsMovimentoVALOR_ACRESCIMOChange;
  end;
end;

procedure TformMODELO_MOV.AcrescimoItens(perc: currency);
var
  marca: TBookMark;
begin
  recalculo_global := True;
  with cdsItens do
   begin
     marca := BookMark;
     disablecontrols;
     first;
     while not eof do
      begin
        if not (state = dsEdit) then edit;
        fieldByName('VALOR_UNITARIO').AsCurrency :=
          ((100 + perc) * fieldByName('VALOR_ORIGINAL').AsCurrency) / 100;
        post;
        next;
      end;
     BookMark := marca;
     enablecontrols;
   end;
  recalculo_global := False;
end;

procedure TformMODELO_MOV.tmrPagamentoTimer(Sender: TObject);
begin
  tmrPagamento.Enabled := False;
  if cdsPagamento.State = dsEdit then
    cdsPagamento.Post;
end;

procedure TformMODELO_MOV.cdsPagamentoVALORChange(Sender: TField);
begin
  tmrPagamento.Enabled := True;
end;

procedure TformMODELO_MOV.ckCMVClick(Sender: TObject);
begin
  cxDBTextEdit1.Visible := ckCMV.Checked;
  cxDBTextEdit2.Visible := ckCMV.Checked;
  Label3.Visible        := ckCMV.Checked;
end;

procedure TformMODELO_MOV.tmrMovimentoTimer(Sender: TObject);
begin
  tmrMovimento.Enabled := False;
  if cdsMovimento.state = dsEdit then
    cdsMovimento.Post;
end;

procedure TformMODELO_MOV.cdsMovimentoCODCONDPAGChange(Sender: TField);
begin
  tmrMovimento.Enabled := True;
end;

procedure TformMODELO_MOV.cdsPagamentoAfterPost(DataSet: TDataSet);
begin
  with cdsMovimento do
   begin
     if not (state = dsEdit) then edit;

     fieldByName('VALOR_PAGAMENTOS').AsCurrency :=
       formPrincipal.StringToFloat(DataSet.fieldByName('TOTAL').AsString) +
       cdsMovimento.fieldByName('VALOR_FRETE').AsCurrency;

     post;
   end;
end;

procedure TformMODELO_MOV.cdsPagamentoDATAVENCIMENTOChange(Sender: TField);
begin
  tmrPagamento.Enabled := True;
end;

procedure TformMODELO_MOV.cdsPagamentoAfterOpen(DataSet: TDataSet);
begin
  cdsPagamentoAfterPost(DataSet);
end;

procedure TformMODELO_MOV.dedDESCONTOEnter(Sender: TObject);
var
  i: word;
begin
   if Sender is TEdit then
    begin
     TEdit(Sender).Color := clInfoBK;
     TEdit(Sender).Font.Style := [fsBold];
    end;
   if Sender is TDBEdit then
    begin
     TDBEdit(Sender).Color := clInfoBK;
     TDBEdit(Sender).Font.Style := [fsBold];
    end;
   if Sender is TcxDBMemo then
    begin
     TcxDBMemo(Sender).Style.Color := clInfoBK;
     TcxDBMemo(Sender).Style.Font.Style := [fsBold];
    end;
   if Sender is TcxDBTextEdit then
    begin
     TcxDBTextEdit(Sender).Style.Color := clInfoBK;
     TcxDBTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBTextEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBMaskEdit then
    begin
     TcxDBMaskEdit(Sender).Style.Color := clInfoBK;
     TcxDBMaskEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBMaskEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBDateEdit then
    begin
     TcxDBDateEdit(Sender).Style.Color := clInfoBk;
     TcxDBDateEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBDateEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBLookupComboBox then
    begin
     TcxDBLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBLookupComboBox(Sender).Style.Shadow := True;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsBold, fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [fsBold];
end;

procedure TformMODELO_MOV.dedDESCONTOExit(Sender: TObject);
var
  i: word;
begin
   if Sender is TEdit then
    begin
     TEdit(Sender).Color := clWindow;
     TEdit(Sender).Font.Style := [];
    end;
   if Sender is TDBEdit then
    begin
     TDBEdit(Sender).Color := clWindow;
     TDBEdit(Sender).Font.Style := [];
    end;
   if Sender is TcxDBMemo then
    begin
     TcxDBMemo(Sender).Style.Color := clWindow;
     TcxDBMemo(Sender).Style.Font.Style := [];
    end;
   if Sender is TcxDBTextEdit then
    begin
     TcxDBTextEdit(Sender).Style.Color := clWindow;
     TcxDBTextEdit(Sender).Style.Font.Style := [];
     TcxDBTextEdit(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBMaskEdit then
    begin
     TcxDBMaskEdit(Sender).Style.Color := clWindow;
     TcxDBMaskEdit(Sender).Style.Font.Style := [];
     TcxDBMaskEdit(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBDateEdit then
    begin
     TcxDBDateEdit(Sender).Style.Color := clWindow;
     TcxDBDateEdit(Sender).Style.Font.Style := [];
     TcxDBDateEdit(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBLookupComboBox then
    begin
     TcxDBLookupComboBox(Sender).Style.Color := clWindow;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [];
     TcxDBLookupComboBox(Sender).Style.Shadow := False;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [];
end;

procedure TformMODELO_MOV.actSerieExecute(Sender: TObject);
begin
  { enrolação de linguiça }
  if cxGrid1.CanFocus then
    cxGrid1.SetFocus;
end;

procedure TformMODELO_MOV.actProdutoExecute(Sender: TObject);
begin
  { enrolação de linguiça }
  if cxGrid1.CanFocus then
    cxGrid1.SetFocus;
end;

procedure TformMODELO_MOV.actServicoExecute(Sender: TObject);
begin
  { enrolação de linguiça }
  if cxGrid1.CanFocus then
    cxGrid1.SetFocus;
end;

procedure TformMODELO_MOV.cdsItensBeforeInsert(DataSet: TDataSet);
begin

  { limitação de itens }
  if item > itmax then
   begin
     formPrincipal.MsgError(
       Format('O limite atual de lançamento é de %d itens.', [itmax]),
       'Número de itens');
     abort;
   end;

end;

procedure TformMODELO_MOV.tmrAutoContinuaTimer(Sender: TObject);
begin
  tmrAutoContinua.Enabled := False;
  actFaturarExecute(Sender);
end;

procedure TformMODELO_MOV.tmrAutoFechaTimer(Sender: TObject);
begin
  tmrAutoFecha.Enabled := False;
  actFecharExecute(Sender);
end;

procedure TformMODELO_MOV.tmrCaixasTimer(Sender: TObject);
begin

  tmrCaixas.Enabled := False;
  with cdsItens do
   begin
     if (fieldByName('CAIXA_ITENS').AsInteger > 0) and
        (fieldByName('CAIXAS').AsInteger > 0) and
        (Processo = 'VEN') then
      begin
        fieldByName('QUANTIDADE').AsCurrency :=
          fieldByName('CAIXA_ITENS').AsCurrency *
          fieldByName('CAIXAS').AsCurrency;
      end;
   end;

end;

procedure TformMODELO_MOV.cdsItensCAIXASChange(Sender: TField);
begin
  tmrCaixas.Enabled := True;
end;

procedure TformMODELO_MOV.cxDBTextEdit4PropertiesEditValueChanged(
  Sender: TObject);
begin
  if pgcSaida.ActivePage = tabFatura then
    cdsPagamentoAfterPost(TDataSet(cdsPagamento));
end;

procedure TformMODELO_MOV.CancelarItem1Click(Sender: TObject);
begin
  cdsItens.Delete;
  cdsItensAfterPost(cdsItens as TDataSet);
end;

end.
