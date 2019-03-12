unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, 
  DB, DBClient, ExtCtrls, IniFiles, ImgList,
  dxBarExtItems, StdCtrls, SyncObjs, cxStyles, StrUtils, ecf,
  ActiveX, TConnect, dxNavBarCollns, dxNavBarBase, dxNavBar,
  cxPC, Menus, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerWeekView,
  cxSchedulerDBStorage, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMemo, cxDBEdit, cxCheckBox,
  cxDBLookupComboBox, cxCalendar, Tlhelp32, jpeg,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerYearView,
  Grids, DBGrids, MConnect, SConnect,
  dxSkinsCore, dxSkinOffice2007Silver, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, cxLookAndFeels, dxSkinsForm, cxGraphics, dxBar,
  cxControls, dxStatusBar, dxSkinOffice2007Blue, cxLocalization,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxGDIPlusClasses, dxSkinOffice2010Blue,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, AppEvnts, dxSkinDevExpressStyle,
  ShellApi;

const
  CM_FORMSETUP  = WM_USER + 1;
  CM_FORMLOGOUT = WM_USER + 9;

type
  {####################################################################}
  {##                                                                ##}
  {##  FORMULARIO                                                    ##}
  {##                                                                ##}
  {####################################################################}
  TformPrincipal = class(TForm)
    actMenu: TActionList;
    actSobre: TAction;
    dxStatusBar: TdxStatusBar;
    dxBarManager: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxMudaEmpresa: TdxBarButton;
    actSelecionarEmpresa: TAction;
    actDesconectar: TAction;
    dxBarButton1: TdxBarButton;
    actSair: TAction;
    dxBarButton2: TdxBarButton;
    tmrRelogio: TTimer;
    dxBarButton5: TdxBarButton;
    actAtualizar: TAction;
    actPessoas: TAction;
    actEstados: TAction;
    actCidades: TAction;
    actBairros: TAction;
    actLogradouros: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cdsUsuarios: TClientDataSet;
    dsrUsuarios: TDataSource;
    actAjuda: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    actRelatorios: TAction;
    cdsPerfil: TClientDataSet;
    dxBarButton14: TdxBarButton;
    actProdutos: TAction;
    actUnidades: TAction;
    actGrupos: TAction;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    actSaida: TAction;
    dxBarButton18: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    actTrocaSenha: TAction;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    cdsEmpresas: TClientDataSet;
    cdsEmpresasCODIGO: TIntegerField;
    cdsEmpresasNOME: TStringField;
    dxBarLargeButton5: TdxBarLargeButton;
    actNatureza: TAction;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    actServicos: TAction;
    actImpressoras: TAction;
    dxBarButton23: TdxBarButton;
    cdsImpressoras: TClientDataSet;
    cdsImpressorasMAQUINA: TStringField;
    cdsImpressorasCODEMPRESA: TIntegerField;
    cdsImpressorasOS1: TStringField;
    cdsImpressorasOS2: TStringField;
    cdsImpressorasFECHAMENTO: TStringField;
    cdsImpressorasNF: TStringField;
    cdsImpressorasRECIBO: TStringField;
    cdsImpressorasBOLETO: TStringField;
    cdsImpressorasECF: TStringField;
    cdsImpressorasECF_NCC: TStringField;
    dxBarSubItem6: TdxBarSubItem;
    dxBarECF: TdxBarSubItem;
    actLeituraX: TAction;
    actReducaoZ: TAction;
    actNumeroSerie: TAction;
    actOutrasInformacoes: TAction;
    dxBarButton24: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    actCancelaUltimoCupom: TAction;
    dxBarButton20: TdxBarButton;
    actCondicaoPagamento: TAction;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    actFormaPagamento: TAction;
    dxBarButton28: TdxBarButton;
    actCentros: TAction;
    dxBarButton29: TdxBarButton;
    actContaReceber: TAction;
    dxBarButton30: TdxBarButton;
    actContaPagar: TAction;
    dxBarButton31: TdxBarButton;
    actContasRecebidas: TAction;
    actContasPagas: TAction;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    actExtrato: TAction;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dsrDocumentos: TDataSource;
    dsrCondicoes: TDataSource;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    actMarcas: TAction;
    dxBarButton37: TdxBarButton;
    actModelos: TAction;
    dxBarButton38: TdxBarButton;
    actOcorrencias: TAction;
    dxBarButton39: TdxBarButton;
    actOSTipos: TAction;
    dxBarButton40: TdxBarButton;
    actOS: TAction;
    dxBarButton41: TdxBarButton;
    actConexao: TAction;
    dxBarButton42: TdxBarButton;
    actReiniciarConfig: TAction;
    dxBarButton43: TdxBarButton;
    actBancos: TAction;
    dxBarButton44: TdxBarButton;
    actContas: TAction;
    dxBarButton45: TdxBarButton;
    actPlancontas: TAction;
    dxBarButton46: TdxBarButton;
    dsrPerfil: TDataSource;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    actEstornoOS: TAction;
    actEstornoVendas: TAction;
    actLixeiraReceber: TAction;
    actLixeiraPagar: TAction;
    cdsUserAccess: TClientDataSet;
    actUsuarios: TAction;
    dxBarButton51: TdxBarButton;
    actOrcamento: TAction;
    dxBarButton52: TdxBarButton;
    actCompra: TAction;
    dxBarButton53: TdxBarButton;
    actVeiculos: TAction;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    actPedidoCompra: TAction;
    dxBarSubItem14: TdxBarSubItem;
    actMatPrima: TAction;
    dxBarButton56: TdxBarButton;
    actLinha: TAction;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    actCompraMatPrima: TAction;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    actProducao: TAction;
    actBackup: TAction;
    dxBarButton62: TdxBarButton;
    actRegistro: TAction;
    dxBarButton63: TdxBarButton;
    actUsuariosAtivos: TAction;
    dxBarButton64: TdxBarButton;
    actAutoDestruir: TAction;
    dxBarButton65: TdxBarButton;
    actOperadoras: TAction;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton68: TdxBarButton;
    actCompraMatPrima1Prod: TAction;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    actBI_Vendas: TAction;
    dxBarButton71: TdxBarButton;
    actIndividuais: TAction;
    dxBarButton72: TdxBarButton;
    actHistoricoPag: TAction;
    dxBarButton73: TdxBarButton;
    Bevel1: TBevel;
    actAgendaHoje: TAction;
    actAgendaSemanaTrabalho: TAction;
    actAgendaSemana: TAction;
    actAgendaMes: TAction;
    actMensagensEntrada: TAction;
    actMensagensSaida: TAction;
    actMensagensNova: TAction;
    actMensagensResponder: TAction;
    actMensagensExcluir: TAction;
    actPerfil: TAction;
    dxBarButton74: TdxBarButton;
    actSequencias: TAction;
    dxBarButton75: TdxBarButton;
    menuCaixa: TdxBarSubItem;
    actCaixaVerifica: TAction;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    actContaPagaEstorno: TAction;
    actContaRecebidaEstorno: TAction;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    actOSvender: TAction;
    dxBarButton80: TdxBarButton;
    actTransferencias: TAction;
    dxBarButton81: TdxBarButton;
    cxStyleRepository: TcxStyleRepository;
    HeaderNegrito: TcxStyle;
    ColunaImpar: TcxStyle;
    ColunaOculta: TcxStyle;
    ColunaMarcada: TcxStyle;
    ColunaSelecionada: TcxStyle;
    GrupoCaixa: TcxStyle;
    FiltroCaixa: TcxStyle;
    dxBarButton82: TdxBarButton;
    actLanContabil: TAction;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton83: TdxBarButton;
    barReports: TdxBarPopupMenu;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    actRegua: TAction;
    dxBarButton86: TdxBarButton;
    actImpMov: TAction;
    dxBarButton87: TdxBarButton;
    dxBarSubItem20: TdxBarSubItem;
    cdsUserAccessCODUSUARIO: TIntegerField;
    cdsUserAccessCODRESOURCE: TIntegerField;
    cdsUserAccessDESCRICAO: TStringField;
    cdsUserAccessVISIVEL: TStringField;
    cdsUserAccessNOVO: TStringField;
    cdsUserAccessDETALHES: TStringField;
    cdsUserAccessIMPRIMIR: TStringField;
    cdsUserAccessEXPORTAR: TStringField;
    cdsUserAccessAJUDA: TStringField;
    cdsUserAccessSALVAR: TStringField;
    cdsUserAccessEXCLUIR: TStringField;
    dsrGrupos: TDataSource;
    dsrUnidades: TDataSource;
    tmrClose: TTimer;
    tmrUpdate: TTimer;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    SocketConnection: TSocketConnection;
    dsrOperadoras: TDataSource;
    cdsDatahora: TClientDataSet;
    cdsDatahoraDATAHORA: TSQLTimeStampField;
    dxBarButton88: TdxBarButton;
    actAtivacoes: TAction;
    dxBarButton90: TdxBarButton;
    actNFP: TAction;
    dxBarButton91: TdxBarButton;
    cdsUnidades: TClientDataSet;
    cdsUnidadesSIGLA: TStringField;
    cdsUnidadesUNIDADE: TStringField;
    cdsGrupos: TClientDataSet;
    cdsGruposCODIGO: TIntegerField;
    cdsGruposGRUPO: TStringField;
    cdsOperadoras: TClientDataSet;
    cdsOperadorasCODIGO: TIntegerField;
    cdsOperadorasNOME: TStringField;
    cdsCondicoes: TClientDataSet;
    cdsCondicoesCODIGO: TIntegerField;
    cdsCondicoesDESCRICAO: TStringField;
    cdsDocumentos: TClientDataSet;
    cdsDocumentosCODIGO: TIntegerField;
    cdsDocumentosDOCUMENTO: TStringField;
    cdsDocumentosTIPO_PAG: TStringField;
    cdsDocumentosTIPO_DOC: TStringField;
    cdsDocumentosCODBANCO: TIntegerField;
    tmrPronto: TTimer;
    dxSkinController: TdxSkinController;
    cxLocalizer: TcxLocalizer;
    actSuporte: TAction;
    dxBarButton92: TdxBarButton;
    actNCM: TAction;
    dxBarButton93: TdxBarButton;
    actRelEstoque: TAction;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton94: TdxBarButton;
    actRelEstoqueData: TAction;
    dxBarButton95: TdxBarButton;
    actRelEstoqueMinimo: TAction;
    dxBarButton96: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    actProsoft: TAction;
    dxBarButton97: TdxBarButton;
    actNFeInstalar: TAction;
    dxBarButton98: TdxBarButton;
    imgToolbar: TcxImageList;
    imgMenu: TcxImageList;
    ApplicationEvents: TApplicationEvents;
    dxBarButton99: TdxBarButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    actStatus: TAction;
    dxBarButton17: TdxBarButton;
    actLocaliza: TAction;
    dxBarButton100: TdxBarButton;
    Fundo: TcxStyle;
    pnllogo: TPanel;
    imgFundo: TImage;
    SaveDialog: TSaveDialog;
    dxBarButton89: TdxBarButton;
    actRelEstoqueReposicao: TAction;
    procedure actSobreExecute(Sender: TObject);
    procedure actSelecionarEmpresaExecute(Sender: TObject);
    procedure actDesconectarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tmrRelogioTimer(Sender: TObject);
    procedure actPessoasExecute(Sender: TObject);
    procedure actEstadosExecute(Sender: TObject);
    procedure actCidadesExecute(Sender: TObject);
    procedure actBairrosExecute(Sender: TObject);
    procedure actLogradourosExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAjudaExecute(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
    procedure actUnidadesExecute(Sender: TObject);
    procedure actGruposExecute(Sender: TObject);
    procedure actSaidaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actTrocaSenhaExecute(Sender: TObject);
    procedure actNaturezaExecute(Sender: TObject);
    procedure actServicosExecute(Sender: TObject);
    procedure actImpressorasExecute(Sender: TObject);
    procedure actLeituraXExecute(Sender: TObject);
    procedure actReducaoZExecute(Sender: TObject);
    procedure actNumeroSerieExecute(Sender: TObject);
    procedure actCancelaUltimoCupomExecute(Sender: TObject);
    procedure actCondicaoPagamentoExecute(Sender: TObject);
    procedure actFormaPagamentoExecute(Sender: TObject);
    procedure actCentrosExecute(Sender: TObject);
    procedure actContaReceberExecute(Sender: TObject);
    procedure actContaPagarExecute(Sender: TObject);
    procedure actContasRecebidasExecute(Sender: TObject);
    procedure actContasPagasExecute(Sender: TObject);
    procedure actExtratoExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure actMarcasExecute(Sender: TObject);
    procedure actModelosExecute(Sender: TObject);
    procedure actOcorrenciasExecute(Sender: TObject);
    procedure actOSTiposExecute(Sender: TObject);
    procedure actOSExecute(Sender: TObject);
    procedure actConexaoExecute(Sender: TObject);
    procedure actReiniciarConfigExecute(Sender: TObject);
    procedure actBancosExecute(Sender: TObject);
    procedure actContasExecute(Sender: TObject);
    procedure actPlancontasExecute(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure actEstornoVendasExecute(Sender: TObject);
    procedure actLixeiraReceberExecute(Sender: TObject);
    procedure actLixeiraPagarExecute(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure actEstornoOSExecute(Sender: TObject);
    procedure actOrcamentoExecute(Sender: TObject);
    procedure actCompraExecute(Sender: TObject);
    procedure actVeiculosExecute(Sender: TObject);
    procedure actOperadorasExecute(Sender: TObject);
    procedure actIndividuaisExecute(Sender: TObject);
    procedure actHistoricoPagExecute(Sender: TObject);
    procedure actPerfilExecute(Sender: TObject);
    procedure actSequenciasExecute(Sender: TObject);
    procedure actContaRecebidaEstornoExecute(Sender: TObject);
    procedure actContaPagaEstornoExecute(Sender: TObject);
    procedure actTransferenciasExecute(Sender: TObject);
    procedure actLanContabilExecute(Sender: TObject);
    procedure repProdutosAbcExecute(Sender: TObject);
    procedure repProdutosAbcGrupoExecute(Sender: TObject);
    procedure actReguaExecute(Sender: TObject);
    procedure actImpMovExecute(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure tmrCloseTimer(Sender: TObject);
    procedure tmrUpdateTimer(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actRelatoriosExecute(Sender: TObject);
    procedure actAtivacoesExecute(Sender: TObject);
    procedure actNFPExecute(Sender: TObject);
    procedure tmrProntoTimer(Sender: TObject);
    procedure actNCMExecute(Sender: TObject);
    procedure actSuporteExecute(Sender: TObject);
    procedure actRelEstoqueExecute(Sender: TObject);
    procedure actRelEstoqueDataExecute(Sender: TObject);
    procedure actRelEstoqueMinimoExecute(Sender: TObject);
    procedure actProsoftExecute(Sender: TObject);
    procedure actNFeInstalarExecute(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure actStatusExecute(Sender: TObject);
    procedure actLocalizaExecute(Sender: TObject);
    procedure actRelEstoqueReposicaoExecute(Sender: TObject);
  private
    { Private declarations }
    counterdown,
    upd,
    updant: word;
    msgon: boolean;
    AnchorDate: TDateTime;
    timeup: word;
    formSysOK: TForm;
    formSysWait: TForm;
    procedure FormStart(var Message: TMessage); message CM_FORMSETUP;
    function DetectZebedee: boolean;
    procedure Login;
    procedure Desconectar(var Message: TMessage); message CM_FORMLOGOUT;
    procedure GetServer(var host, servertype, id: string);
    procedure DisplayHint(Sender: TObject);
    function RemoveE(s: string): string;
    procedure DefinirAcessos;
  public
    { Public declarations }
    stAguarde,
    appdir,
    usuario,
    senha,
    computador,
    ID,
    dbid: string;
    codusuario,
    codempresa: longint;
    midtier_host,
    midtier_servertype: string;
    licence,
    update,
    CaptShift: boolean;
    procedure MsgError(msg, titulo: string);
    function Pergunta(msg, titulo: string): integer;
    function VerificaSenha(_Parent: TForm; s: string): boolean;
    function GetLicence: boolean;
    procedure GetLogData(l, u: boolean);
    function UserIn(act: TAction): boolean;
    procedure UserOut;
    function GetINIConnect: string;
    function StringToFloat(s: string): extended;
    function GetTime: TDateTime;
    procedure ShowMsg(Msg: string);
    procedure HideMsg;
    procedure DefinirEmpresa(codemp: longint);
    procedure CONN_DBError(form, chaves, msg: string);
    procedure CONN_DBLento(form, comando, tempo: string);
    function GetAccess(act: integer): string;
    procedure Pronto(msg: string);
    procedure ReiniciarRelogio;
    function GetServerPath: string;
  end;

var
  formPrincipal: TformPrincipal;
  CS: TCriticalSection;
  ECFX: TECF;
  ecf_class: string;
  ecf_cc: boolean;

implementation

uses login, logradouros, pessoas,
  unidades, grupos, produtos, saida, trocasenha, selecionarempresa,
  natuoper, servicos, impressoras, formapagamento, documentos, centros,
  contareceber, contapagar, contasrecebidas, contaspagas, extrato,
  marcas, modelos, defeitos, ostipos, os, vendas, bancos, contas,
  plancontas, contapagarlixo, contareceberlixo, estornovendas, estornoos,
  usuarios, orcamentos, veiculos, compras,
  connconfig, operadoras, individuais, historicopag,
  perfil,
  sequencias, DOSPrint, contapagaestorno,
  contarecebidaestorno, senha, transferencias,
  funcoes, lancontabil, produtos_abc, rep_procurvagrupo, regua, layprintmov,
  ativacoes, ncm, rel_estoque, rel_estoquedata, rel_estoqueminimo, prosoft,
  estados, cidades, bairros, status, oslocaliza, update, rel_estoquereposicao;

{$R *.dfm}

{####################################################################}
{##                                                                ##}
{##  CONSTANTES                                                    ##}
{##                                                                ##}
{####################################################################}

const
  CoringaDefault = '*';
  CoringaDireita = True;

{####################################################################}
{##                                                                ##}
{##  FORMULARIO                                                    ##}
{##                                                                ##}
{####################################################################}

{####################################################################}
{##                                                                ##}
{##  ROTINAS PUBLICAS                                              ##}
{##                                                                ##}
{####################################################################}

{ status da licen�a }
function TformPrincipal.GetLicence: boolean;
begin
  result := licence;
end;

{ mostro o formul�rio de erro }
procedure TformPrincipal.MsgError(msg, titulo: string);
var
  formSysError: TForm;
begin
  HideMsg;
  formSysError := CreateMessageDialog(msg, mtWarning, [mbOk]);
  try
    TButton(formSysError.FindComponent('Ok')).Caption := 'Fechar';
    TButton(formSysError.FindComponent('Ok')).Cursor := crHandPoint;
    formSysError.Caption := titulo;
    formSysError.Color := clWhite;
    formSysError.ShowModal;
  finally
    try
      formSysError.Release;
    finally
      formSysError := nil;
    end;
  end;
end;

{ mostro o formul�rio de pergunta }
function TformPrincipal.Pergunta(msg, titulo: string): integer;
var
  formSysPergunta: TForm;
begin
  HideMsg;
  formSysPergunta := CreateMessageDialog(msg, mtConfirmation, [mbYes, mbNo], mbNo);
  try
    TButton(formSysPergunta.FindComponent('Yes')).Caption := 'Sim';
    TButton(formSysPergunta.FindComponent('Yes')).Cursor := crHandPoint;
    TButton(formSysPergunta.FindComponent('No')).Caption := 'N�o';
    TButton(formSysPergunta.FindComponent('No')).Cursor := crHandPoint;
    formSysPergunta.Caption := titulo;
    formSysPergunta.Color := clWhite;
    result := formSysPergunta.ShowModal;
  finally
    try
      formSysPergunta.Release;
    finally
      formSysPergunta := nil;
    end;
  end;
end;

function TformPrincipal.VerificaSenha(_Parent: TForm; s: string): boolean;
begin
//  if cdsPerfil.fieldByName('SENHA_BAIXA').AsString = 'N' then
    Result := True
//  else
//  try
//    formSenha := TformSenha.Create(_Parent);
//    formSenha.Caption := 'Confirmar senha para ' + s;
//    formSenha.dedusuario.Text := usuario;
//    formSenha.dedsenha.Text := '';
//    if formSenha.ShowModal = mrOk then
//     begin
//       if formSenha.dedsenha.Text <> cdsUsuarios.fieldByName('SENHAWEB').AsString then
//        begin
//          Result := False;
//          MsgError(Self,
//            'A senha digitada n�o confere. A opera��o n�o poder� ser confirmada.',
//            'A Verifica��o Falhou!');
//        end else Result := True;
//     end else Result := False;
//    formSenha.Release;
//    formSenha := nil;
//  except
//    on exception do
//      Result := False;
//  end;
end;

function TformPrincipal.GetINIConnect: string;
var
  arquivo: string;
begin
  arquivo := 'connect.ini';
  arquivo := ChangeFileExt(arquivo, '.ini');
  Result  := GetTempDir + '\' + arquivo;
end;

function TformPrincipal.RemoveE(s: string): string;
var
  i: integer;
begin
  i := 1;
  while i < length(s) do
   begin
     if s[i] = '&' then
       if s[i + 1] <> '&' then
        begin
          delete(s, i, 1);
          i := i + 2;
        end else i := i + 2
     else
       i := i + 1;
   end;
  Result := s;
end;

procedure TformPrincipal.DefinirAcessos;
var
  i: integer;
begin

  { abro a base de direitos de acesso }
  with cdsUserAccess do
   begin
     if active then close;
     Params.ParamByName('CODUSUARIO').AsInteger := codusuario;
     open;
   end;

  { busco as a��es }
  for i := 0 to Self.ComponentCount - 1 do
   if Components[i] is TAction then
    begin

      { encontro o direito correspondente }
      if cdsUserAccess.Locate('CODRESOURCE', TAction(Components[i]).Tag, []) then
       begin

         { verifico se a descricao � a mesma }
         if cdsUserAccess.FieldByName('DESCRICAO').AsString <>
            RemoveE(TAction(Components[i]).Caption) then
          begin
            cdsUserAccess.Edit;
            cdsUserAccess.FieldByName('DESCRICAO').AsString :=
              RemoveE(TAction(Components[i]).Caption);
            cdsUserAccess.Post;
          end

       end else
       begin

         { insiro o registro novo }
         cdsUserAccess.InsertRecord([
           codusuario,
           TAction(Components[i]).Tag,
           RemoveE(TAction(Components[i]).Caption),
           'S',
           'S',
           'S',
           'S',
           'S',
           'S',
           'N',
           'N']);

       end;

      { verifico a ativa��o }
      TAction(Components[i]).Visible :=
        (cdsUserAccess.FieldByName('VISIVEL').AsString = 'S');

    end;

  { verifico se houve altera��es e salvo }
  if cdsUserAccess.ChangeCount > 0 then
    cdsUserAccess.ApplyUpdates(-1);

end;

function TformPrincipal.GetAccess(act: integer): string;
begin
  Result := '';
  with cdsUserAccess do
   if Locate('CODRESOURCE', act, []) then
    begin
      if fieldByName('VISIVEL').AsString  = 'S' then
        Result := Result + 'V';
      if fieldByName('NOVO').AsString     = 'S' then
        Result := Result + 'N';
      if fieldByName('DETALHES').AsString = 'S' then
        Result := Result + 'D';
      if fieldByName('IMPRIMIR').AsString = 'S' then
        Result := Result + 'I';
      if fieldByName('EXPORTAR').AsString = 'S' then
        Result := Result + 'E';
      if fieldByName('AJUDA').AsString    = 'S' then
        Result := Result + 'A';
      if fieldByName('SALVAR').AsString   = 'S' then
        Result := Result + 'S';
      if fieldByName('EXCLUIR').AsString  = 'S' then
        Result := Result + 'X';
    end;
end;

function TformPrincipal.StringToFloat(s: string): extended;
begin
  try
    s := AnsiReplaceText(s, ',', '.');
    Result := StrToFloat(s);
  except
    Result := 0;
  end;
end;

procedure TformPrincipal.ShowMsg(Msg: string);
begin
  if msgon then exit else
   try
     formSysWait := CreateMessageDialog(msg, mtInformation, []);
     formSysWait.FormStyle := fsNormal;
     formSysWait.BorderIcons := [biSystemMenu];
     formSysWait.BorderStyle := bsDialog;
     formSysWait.Caption := '';
     formSysWait.Height := formSysWait.Height - 40;
     formSysWait.Color := clWhite;
     formSysWait.Show;
     msgon := true;
     Application.ProcessMessages;
   except
     formSysWait := nil;
   end
end;

procedure TformPrincipal.HideMsg;
begin
  if msgon then
   begin
     msgon := false;
     if formSysWait <> nil then
      try
        formSysWait.Close;
      finally
        formSysWait.Release;
        formSysWait := nil;
      end;
   end;
end;

procedure TformPrincipal.Pronto(msg: string);
begin
  try
    HideMsg;
    formSysOK := CreateMessageDialog(msg, mtInformation, []);
    formSysOK.FormStyle := fsNormal;
    formSysOK.BorderIcons := [];
    formSysOK.BorderStyle := bsDialog;
    formSysOK.Caption := '';
    formSysOK.Height := formSysOK.Height - 40;
    formSysOK.Color := clWhite;
    formSysOK.Show;
    tmrPronto.Enabled := True;
  except
    formSysOK := nil;
  end
end;

procedure TformPrincipal.ReiniciarRelogio;
begin
  counterdown := timeup;
end;

function TformPrincipal.GetServerPath: string;
var
  s: string;
begin
  if not SocketConnection.Connected then
    SocketConnection.Open;
  if SocketConnection.Connected then
   begin
     s := SocketConnection.AppServer.GetServerPath;
     s := midtier_host+':'+s;
     Result := s;
   end;
  if SocketConnection.Connected then
    SocketConnection.Close;
end;

procedure TformPrincipal.DefinirEmpresa(codemp: longint);
var
  mr: integer;
  b: TStream;
  jpg: TJpegImage;
begin

  { perfil da empresa }
  if cdsPerfil.Active then
    if cdsPerfil.FieldByName('CODIGO').AsInteger = codemp then
      mr := 0
    else
      mr := 1
  else mr := 1;

  if mr = 1 then
   begin

     { destruo o objeto ECF }
     try
       ECFX.Free;
     except
     end;

     try
       ShowMsg('Carregando Perfil...');

       { PERFIL DA EMPRESA }
       if cdsPerfil.Active then
         cdsPerfil.Close;
       cdsPerfil.params[0].AsInteger := codemp;
       cdsPerfil.Open;
       Caption := cdsPerfil.fieldByName('EMP_NOME').AsString;
       ID := cdsPerfil.fieldByName('ID').AsString;
       timeup := cdsPerfil.FieldByName('LOGTIMEOFF').AsInteger;
       ReiniciarRelogio;
       codempresa := codemp;

       { logotipo }
       if not cdsPerfil.FieldByName('LOGOTIPO').IsNull then
        try
          { tranfiro a figura para o stream }
          b := cdsPerfil.CreateBlobStream(cdsPerfil.FieldByName('LOGOTIPO'), bmRead);

          { tem figura mesmo? }
          if b.Size > 0 then
            try
              jpg := TJpegImage.Create;
              jpg.LoadFromStream(b);
              imgFundo.Picture.Assign(jpg);
              jpg.Free;
            except
            end
          else
            imgFundo.Picture.Assign(nil);

          { destruo as vari�veis }
          b.Destroy;
        except
        end;

       { IMPRESSORAS DO COMPUTADOR }
       if cdsImpressoras.Active then
         cdsImpressoras.Close;
       cdsImpressoras.Params[0].AsString :=
         funcoes.GetMachine;
       cdsImpressoras.Params[1].AsInteger :=
         codempresa;
       cdsImpressoras.Open;

       { configura��es ecf }
       ecf_class := trim(cdsImpressoras.fieldByName('ECF').AsString);
       if ecf_class = '' then
         ecf_class := 'SEM ECF';

       { classe ecf }
       if ecf_class = 'DARUMA345' then
         ECFX := TDarumaECF.Create
       else if ecf_class = 'BEMATECH20' then
         ECFX := TBematechECF.Create
       else if ecf_class = 'DEBUG' then
         ECFX := TDebugECF.Create
       else if ecf_class = 'CUPOM' then
         ECFX := TCupomECF.Create
       else
         ECFX := TECF.Create;

       if (ecf_class = 'BEMATECH20') or (ecf_class = 'DARUMA345') then
         ecf_cc :=
           (cdsImpressoras.fieldByName('ECF_NCC').AsString = 'N')
       else
         ecf_cc := false;

       { menu ECF }
       if (ecf_class = 'DARUMA345') or (ecf_class = 'BEMATECH20') then
         dxBarECF.Visible := ivAlways
       else
         dxBarECF.Visible := ivNever;

       { muda de empresa }
       if cdsUsuarios.fieldByName('MUDAEMPRESA').AsString = 'S' then
         dxMudaEmpresa.Visible := ivAlways
       else
         dxMudaEmpresa.Visible := ivNever;

       HideMsg;

       ECFX.Inicializar;

     except
       on exception do
         HideMsg;
     end;

   end;
end;

{####################################################################}
{##                                                                ##}
{##  ROTINAS PRIVADAS                                              ##}
{##                                                                ##}
{####################################################################}

procedure TformPrincipal.GetLogData(l: Boolean; u: Boolean);
begin
  update := u;
  licence := l;
  if update then
    tmrUpdate.Enabled := True;
end;

function TformPrincipal.DetectZebedee: boolean;
var
  H: THandle;
  pe: TProcessEntry32;
  B: Boolean;
begin
  Result := False;
  H:= CreateToolhelp32Snapshot(TH32CS_SNAPALL, 0);
  try
    pe.dwSize:= SizeOf(pe);
    B:= Process32First(H, pe);
    while B do
     begin
       if lowercase(StrPas(pe.szExeFile)) = 'zebedee.exe' then
        begin
          Result := True;
          B := false;
        end else B := Process32Next(H, pe);
     end;
  finally
    CloseHandle(H);
  end;
end;

procedure TformPrincipal.Login;
var
  mr: word;
  tempuser: string;
begin

  { par�metros de conex�o }
  GetServer(midtier_host, midtier_servertype, dbid);
  if length(dbid) > 4 then
    dbid := copy(dbid, 1, 4);

  if midtier_servertype = 'U' then
   begin
     if not DetectZebedee then
       WinExec(PAnsiChar(GetAppDir + '\zebedee.exe -z9 -T8100 1441,3051:' + midtier_host + ':1441,3050'), 0);
     midtier_host := '127.0.0.1';
   end;

  { conex�o }
  SocketConnection.ServerGUID := '';
  SocketConnection.ServerName :=
    lowercase(dbid) + '.ServerModule';
  SocketConnection.Host := midtier_host;

//  MsgError(Self, dbid, 'Assinante');

  { primeira inicializa��o }
  if cdsUsuarios.Tag = 0 then
   begin
     dxStatusBar.Panels[3].Text := 'Lendo usu�rios em [' + midtier_host + '] ...';
     Application.ProcessMessages;
     ShowMsg('Conectando...');
     try
       cdsUsuarios.Open;
       cdsUsuarios.Tag := 1;
       cdsUsuarios.RemoteServer.Close;
       dxStatusBar.Panels[3].Text := 'Aguardando login';
       HideMsg;
     except
       on e: exception do
        begin
          dxStatusBar.Panels[3].Text := 'Erro ao conectar';
          HideMsg;
          CONN_DBError(
            Self.Name,
            midtier_host,
            e.message);
        end;
     end
   end;

  if cdsUsuarios.Active then
   begin

      cdsUsuarios.Filtered := False;

      try
        formLogin := TformLogin.Create(Self);
        mr := formLogin.ShowModal;
        tempuser := formLogin.dlcUsuario.Text;
      finally
        try
          formLogin.Release;
        except
        end
      end;

      if mr = mrOk then
       begin

         cdsUsuarios.Filter   := 'EMAIL = ''' + tempuser + '''';
         cdsUsuarios.Filtered := True;
         codusuario := cdsUsuarios.fieldByName('CODIGO').AsInteger;
         usuario    := cdsUsuarios.fieldByName('NOMEUSER').AsString;
         codempresa := cdsUsuarios.fieldByName('CODEMPRESA').AsInteger;
         senha      := '';
         dxStatusBar.Panels[3].Text := 'Bem-vindo!';
         actDesconectar.Visible := True;

         DefinirEmpresa(codempresa);

         DefinirAcessos;

       end else
       begin

         SocketConnection.Close;
         codusuario := 0;
         usuario    := 'desconectado';
         senha      := '';

       end;

      dxStatusBar.Panels[2].Text := usuario;
      SocketConnection.Close;
      Application.ProcessMessages;

   end;
end;

function TformPrincipal.UserIn(act: TAction): boolean;
var
  texto: string;
  State: TKeyBoardState;
begin

  { utiliza��o do Shift }
  GetKeyboardState(State);
  if ((State[vk_Shift] and 128) <> 0) then
    CaptShift := True
  else
    CaptShift := False;

  if codusuario = 0 then
   begin
     Login;
     if codusuario = 0 then
      begin
        result := false;
        exit;
      end;
   end;
  if codusuario > 0 then
    ReiniciarRelogio;
  { mensagem de abrindo }
  texto := act.Caption;
  while pos('&', texto) > 0 do
    delete(texto, pos('&', texto), 1);
//  otimiza��o
//  ShowMsg(Self, 'Abrindo ' + texto + '...');

  Result := (codusuario > 0);

  if Result then
   if pos('V', GetAccess(act.Tag)) < 1 then
    begin
      Result := false;
      MsgError(Format(
        'Ol�, %s!' + #13#10#13#10 +
        'Lamento, mas voc� n�o possui privil�gios suficientes' + #13#10 +
        'para acessar %s.',
        [usuario, RemoveE(act.Caption)]),
        'Acesso negado');
    end;

end;

procedure TformPrincipal.UserOut;
begin
  CaptShift := False;
  ReiniciarRelogio;
  { fechamento da conex�o }
  SocketConnection.Close;
end;

procedure TformPrincipal.Desconectar(var Message: TMessage);
var
  i: word;
begin
  codusuario := 0;
  cdsUsuarios.Tag := 0;
  dxStatusBar.Panels[2].Text := 'desconectado';
  actDesconectar.Visible := false;
  ReiniciarRelogio;

  { fecho o formul�rios pai deste }
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TForm then
      if (TForm(Components[i]).Owner = (Self as TForm)) and
         (TForm(Components[i]) <> Application.MainForm) then
       begin
         PostMessage(TForm(Components[i]).Handle, CM_FORMLOGOUT, 0, 0);
         Application.ProcessMessages;
       end;

  SocketConnection.Close;
  Pronto('Desconectado.');
end;

procedure TformPrincipal.FormStart(var Message: TMessage);
begin
  { disparo o rel�rio do sistema }
  tmrRelogioTimer(nil);
  tmrRelogio.Enabled := True;

  dxStatusBar.Panels[3].Text := '';
end;

procedure TformPrincipal.DisplayHint(Sender: TObject);
begin
  dxStatusBar.Panels[3].Text := GetLongHint(Application.Hint);
end;

procedure TformPrincipal.GetServer(var host, servertype, id: string);
var
  MeuIni: TIniFile;
  secao: string;
begin
  MeuIni     := TIniFile.Create(GetINIConnect);
  secao      := 'mid-tier';
  host       := MeuIni.ReadString(secao, 'URL', 'localhost');
  servertype := MeuIni.ReadString(secao, 'Server', 'W');
  id         := MeuIni.ReadString(secao, 'ID', 'TESTES');
  MeuIni.Free;
end;

function TformPrincipal.GetTime: TDateTime;
var
  fechar: boolean;
begin
  fechar := false;
  if not SocketConnection.Connected then
   begin
     SocketConnection.Open;
     fechar := true;
   end;
  Result := SocketConnection.AppServer.GetServerTime;
  if fechar then
    SocketConnection.Close;
end;

{####################################################################}
{##                                                                ##}
{##  CODIGO COMUM DO FORMULARIO                                    ##}
{##                                                                ##}
{####################################################################}

procedure TformPrincipal.actSobreExecute(Sender: TObject);
begin  MsgError(
    'Enterprise' + #13#10#13#10 +
    '� 1999-2012 Taligent' + #13#10 +
    '� 2013-2019 decisao.net - Gest�o de Resultado' + #13#10#13#10 +
    'atendimento@decisao.net' + #13#10#13#10 +
    'vers�o 2019.32 (08/03/2019)',
    'Sobre...');
end;

procedure TformPrincipal.actStatusExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formOSStatus := TformOSStatus.Create(Self);
      formOSStatus.Tag := TAction(Sender).Tag;
      formOSStatus.AutoLoad := True;
      formOSStatus.Transferir := False;
      formOSStatus.ShowModal;
    finally
      try
        UserOut;
        formOSStatus.Release;
      except
      end
    end
end;

procedure TformPrincipal.actSuporteExecute(Sender: TObject);
begin
  { execut�vel do Team Viewer }
  WinExec(PAnsiChar(GetAppDir + '\TeamViewerQS_pt.exe'), 0);
end;

procedure TformPrincipal.actSelecionarEmpresaExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
   if cdsUsuarios.fieldByName('MUDAEMPRESA').AsString = 'S' then
    try
      formSelecionarEmpresa := TformSelecionarEmpresa.Create(Self);
      formSelecionarEmpresa.Tag := TAction(Sender).Tag;
      if formSelecionarEmpresa.ShowModal = mrOk then
       try
         DefinirEmpresa(formSelecionarEmpresa.dlcEmpresa.EditValue);
       except
       end;
    finally
      try
        UserOut;
        formSelecionarEmpresa.Release;
      except
      end
    end else MsgError('Voc� n�o tem privil�gios suficientes!', 'Erro');
end;

procedure TformPrincipal.actDesconectarExecute(Sender: TObject);
begin
  PostMessage(Self.Handle, CM_FORMLOGOUT, 0, 0);
end;

procedure TformPrincipal.actSairExecute(Sender: TObject);
begin
  close;
end;

procedure TformPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { pergunto se deseja sair - se n�o for atualiza��o }
  CanClose := Pergunta(
      'Deseja mesmo sair do sistema?',
      'Sair') = IDYES;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
var
  i: word;
begin

  { tradu��es do DevExpress }
  cxLocalizer.FileName := funcoes.GetAppDir + '\language.ini';
  cxLocalizer.Active := True;
  cxLocalizer.Locale := 1046;

  CaptShift := False;
  timeup := 180;

  { cor do fundo }
  //pnlFundo.Align := alClient;
  imgFundo.Align := alClient;

  { desativo o dragging das barras }
  for i := 0 to dxBarManager.Bars.Count - 1 do
    dxBarManager.Bars[i].NotDocking := [dsNone, dsLeft, dsTop, dsRight, dsBottom];

  licence := True;
  update := False;
//  actAtualizar.Enabled := True;
  AnchorDate := Date;

  { Se��o Cr�tica }
  CS := TCriticalSection.Create;

  { usu�rio inicial }
  codusuario := 0;
  usuario    := 'desconectado';

  { campo ainda n�o carregado }
  stAguarde  := '...';

  { direciono os hints para a barra de status }
  Application.OnHint := DisplayHint;

  { nome da aplica��o }
  Caption := Application.Title;

  { usuario }
  dxStatusbar.Panels[2].Text := usuario;

  { servidor mid-tier }
  GetServer(midtier_host, midtier_servertype, dbid);
  dxStatusbar.Panels[3].Text := midtier_host;
  actBackup.Enabled := True;
  actAutoDestruir.Enabled := False;

  { diret�rio do sistema }
  appdir := GetAppDir;

  { nome do computador }
  computador := funcoes.GetMachine;

  { IDLE }
  ReiniciarRelogio;

  { menu ECF invis�vel }
  dxBarECF.Visible := ivNever;

end;

procedure TformPrincipal.tmrCloseTimer(Sender: TObject);
begin
  tmrClose.Enabled := False;
  close;
end;

procedure TformPrincipal.tmrProntoTimer(Sender: TObject);
begin
  tmrPronto.Enabled := False;
  if formSysOK <> nil then
   try
     formSysOK.Close;
   finally
     formSysOK.Release;
     formSysOK := nil;
   end;
end;

procedure TformPrincipal.tmrRelogioTimer(Sender: TObject);
begin
  { atualizo o rel�gio na barra de status }
  dxStatusBar.Panels[0].Text := FormatDateTime('HH:NN', now);

//  { IDLE }
//  if codusuario > 0 then
//   begin
//     if counterdown > 0 then
//      begin
//        dec(counterdown);
//      end else PostMessage(Self.Handle, CM_FORMLOGOUT, 0, 0);
//   end;
end;

procedure TformPrincipal.tmrUpdateTimer(Sender: TObject);
begin
  tmrUpdate.Enabled := False;
end;

procedure TformPrincipal.actPessoasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formPessoas := TformPessoas.Create(Self);
      formPessoas.Tag := TAction(Sender).Tag;
      formPessoas.ShowModal;
    finally
      try
        UserOut;
        formPessoas.Release;
      except
      end
    end
end;

procedure TformPrincipal.actEstadosExecute(Sender: TObject);
begin
//  if UserIn(Sender as TAction) then
//    try
//      formEstados := TformEstados.Create(Self);
//      formEstados.Tag := TAction(Sender).Tag;
//      formEstados.ShowModal;
//    finally
//      try
//        UserOut;
//        formEstados.Release;
//      except
//      end
//    end
end;

procedure TformPrincipal.actCidadesExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formCidades := TformCidades.Create(Self);
      formCidades.Tag := TAction(Sender).Tag;
      formCidades.ShowModal;
    finally
      try
        UserOut;
        formCidades.Release;
      except
      end
    end
end;

procedure TformPrincipal.actBackupExecute(Sender: TObject);
var
  caminho,
  stFBK: string;
  usuario,
  senha,
  gbak, opcoes: string;

  function ExecProcess(FileName, Params: string; WindowState: Word; ProcessName: string = ''; Wait: Boolean =
    True): Boolean;
  var
    SI: TStartupInfo;
    PI: TProcessInformation;
    CmdLine: string;
    Status: Cardinal;
  begin
    CmdLine := FileName + ' ' + Params;
    FillChar(SI, SizeOf(SI), #0);
    with SI do
      begin
        cb := SizeOf(SI);
        dwFillAttribute := FOREGROUND_RED;
        if ProcessName <> '' then
          lpTitle := PChar(ProcessName);
        wShowWindow := WindowState;
        dwFlags := STARTF_USESHOWWINDOW + STARTF_USEFILLATTRIBUTE;
      end;
    Result := CreateProcess(nil, PChar(CmdLine), nil, nil, False, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS,
      nil, PChar(ExtractFilePath(FileName)), SI, PI);
    if Result then
      begin
        if Wait then
          WaitForSingleObject(PI.hProcess, INFINITE);
        {***********************************************}
        {altera��o para capturar o codigo retornado pelo processo}
        {***********************************************}
        GetExitCodeProcess(PI.hProcess, status);
        Result := Status = 0;
        {***********************************************}
        CloseHandle(PI.hProcess);
        CloseHandle(PI.hThread);
      end;
  end;

begin

  { usuario e senha de backup }
  usuario := 'SYSDBA';
  senha := 'M0ra15r3';

  if UserIn(Sender as TAction) then
    try

      if Pergunta('O processo de Backup pode levar de alguns minutos ' +
        'at� horas, dependendo do tamanho do banco de dados e da velocidade ' +
        'da sua rede.' + #13#10#13#10 +
        '> N�o recomendamos efetuar backup atrav�s de redes sem fios (wireless). ' + #13#10#13#10 +
        '> Se o seu servidor estiver em outro local remoto, o processo pode ' +
        'durar mais tempo que o normal.' + #13#10#13#10#13#10 +
        'Se voc� entende a concorda com os termos, clique em "Sim".', 'Backup') = IDYES then
       begin

         if SaveDialog.Execute then
          begin

//          ShowMsg('Efetuando Backup...');

            { tratamento do caminho do backup }
            caminho := GetServerPath;

            { destino }
//          stFBK := {'C:\' +} dbid + FormatDateTime('YYYYMMDD', now) + '.fbk';
            stFBK := SaveDialog.FileName;

            { desconecto do servidor }
            SocketConnection.Close;

            { abro/executo o arquivo }
            gbak := 'cmd.exe';
            opcoes := ' /C echo Fazendo backup... N�o feche a janela, ela fechar� sozinha no final. & ' + GetAppDir + '\gbak -b -t ' + caminho + ' ' + stFBK +
                ' -user ' + usuario + ' -password ' + senha {+ ' > out.txt'};

//          ShowMessage(gbak + opcoes);

            ShellExecute(0, nil, PChar(gbak), PChar(opcoes), nil, SW_SHOWNORMAL);

//          ExecAndWait(gbak, opcoes, sw_ShowNormal);

//          formPrincipal.HideMsg;

          end;

       end;
    except
      on exception do
       begin
         HideMsg;
         MsgError(
           'Houve um erro ao efetuar o Backup. A opera��o n�o foi conclu�da.',
           'Erro');
       end;
    end;


end;

procedure TformPrincipal.actBairrosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formBairros := TformBairros.Create(Self);
      formBairros.Tag := TAction(Sender).Tag;
      formBairros.ShowModal;
    finally
      try
        UserOut;
        formBairros.Release;
      except
      end
    end
end;

procedure TformPrincipal.actLocalizaExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formOSLocaliza := TformOSLocaliza.Create(Self);
      formOSLocaliza.Tag := TAction(Sender).Tag;
      formOSLocaliza.AutoLoad := True;
      formOSLocaliza.ShowModal;
    finally
      try
        UserOut;
        formOSLocaliza.Release;
      except
      end
    end
end;

procedure TformPrincipal.actLogradourosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formLogradouros := TformLogradouros.Create(Self);
      formLogradouros.Tag := TAction(Sender).Tag;
      formLogradouros.ShowModal;
    finally
      try
        UserOut;
        formLogradouros.Release;
      except
      end
    end
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
//  ShowMessage(IntToSTr(cxLocalizer.Locale));
  PostMessage(Handle, CM_FORMSETUP, 0, 0);
end;

procedure TformPrincipal.actAjudaExecute(Sender: TObject);
begin
  MsgError('Ajuda', 'Ajuda');
end;

procedure TformPrincipal.actAtivacoesExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formAtivacoes := TformAtivacoes.Create(Self);
      formAtivacoes.Tag := TAction(Sender).Tag;
      formAtivacoes.ShowModal;
    finally
      try
        UserOut;
        formAtivacoes.Release;
      except
      end
    end
end;

procedure TformPrincipal.actAtualizarExecute(Sender: TObject);
begin
  tmrUpdate.Enabled := True;
end;

procedure TformPrincipal.actProdutosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formProdutos := TformProdutos.Create(Self);
      formProdutos.Tag := TAction(Sender).Tag;
      formProdutos.ShowModal;
    finally
      try
        UserOut;
        formProdutos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actProsoftExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formProsoft := TformProsoft.Create(Self);
      formProsoft.Tag := TAction(Sender).Tag;
      formProsoft.ShowModal;
    finally
      try
        UserOut;
        formProsoft.Release;
      except
      end
    end
end;

procedure TformPrincipal.actUnidadesExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formUnidades := TformUnidades.Create(Self);
      formUnidades.Tag := TAction(Sender).Tag;
      formUnidades.ShowModal;
    finally
      try
        UserOut;
        formUnidades.Release;
      except
      end
    end
end;

procedure TformPrincipal.actGruposExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formGrupos := TformGrupos.Create(Self);
      formGrupos.Tag := TAction(Sender).Tag;
      formGrupos.ShowModal;
    finally
      try
        UserOut;
        formGrupos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actSaidaExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formVendas := TformVendas.Create(Self);
      formVendas.Tag := TAction(Sender).Tag;
      formVendas.ShowModal;
    finally
      try
        UserOut;
        formVendas.Release;
      except
      end
    end
end;

procedure TformPrincipal.FormDestroy(Sender: TObject);
begin
  CS.Free;
end;

procedure TformPrincipal.actTrocaSenhaExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formTrocaSenha := TformTrocaSenha.Create(Self);
      formTrocaSenha.Tag := TAction(Sender).Tag;
      formTrocaSenha.ShowModal;
    finally
      try
        UserOut;
        formTrocaSenha.Release;
      except
      end
    end
end;

procedure TformPrincipal.actNaturezaExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formNatuoper := TformNatuoper.Create(Self);
      formNatuoper.Tag := TAction(Sender).Tag;
      formNatuoper.ShowModal;
    finally
      try
        UserOut;
        formNatuoper.Release;
      except
      end
    end
end;

procedure TformPrincipal.actNCMExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formNCM := TformNCM.Create(Self);
      formNCM.Tag := TAction(Sender).Tag;
      formNCM.ShowModal;
    finally
      try
        UserOut;
        formNCM.Release;
      except
      end
    end
end;

procedure TformPrincipal.actNFeInstalarExecute(Sender: TObject);
begin
  WinExec(PAnsiChar(GetAppDir + '\ACBrNFeMonitor2-CAPICOM-0.7.1c_20120628-Windows-Instalador.exe'), 0);
end;

procedure TformPrincipal.actNFPExecute(Sender: TObject);
begin
//  if UserIn(Sender as TAction) then
//    try
//      WinExec(
//        PWideChar(GetAppDir + '\NFPaulista.exe ' + GetServerPath),
//         0);
//    finally
//      formPrincipal.HideMsg;
//      UserOut;
//    end;
end;

procedure TformPrincipal.actServicosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formServicos := TformServicos.Create(Self);
      formServicos.Tag := TAction(Sender).Tag;
      formServicos.ShowModal;
    finally
      try
        UserOut;
        formServicos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actImpMovExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formImpMov := TformImpMov.Create(Self);
      formImpMov.Tag := TAction(Sender).Tag;
      formImpMov.ShowModal;
    finally
      try
        UserOut;
        formImpMov.Release;
      except
      end
    end
end;

procedure TformPrincipal.actImpressorasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formImpressoras := TformImpressoras.Create(Self);
      formImpressoras.Tag := TAction(Sender).Tag;
      formImpressoras.ShowModal;
    finally
      try
        UserOut;
        formImpressoras.Release;
      except
      end
    end
end;

procedure TformPrincipal.actLeituraXExecute(Sender: TObject);
begin
  ECFX.LeituraX;
end;

procedure TformPrincipal.actReducaoZExecute(Sender: TObject);
begin
  if Pergunta(
    'A Redu��o Z encerra a emiss�o de cupons fiscais hoje. Deseja continuar?',
    'Cancela Cupom Emitido') = IDYES then
  ECFX.ReducaoZ;
end;

procedure TformPrincipal.actReguaExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRegua := TformRegua.Create(Self);
      formRegua.Tag := TAction(Sender).Tag;
      formRegua.ShowModal;
    finally
      try
        UserOut;
        formRegua.Release;
      except
      end
    end
end;

procedure TformPrincipal.actNumeroSerieExecute(Sender: TObject);
var
  numero_serie: string;
begin
  ECFX.NumeroSerie(numero_serie);
  MsgError(
    'N�mero de s�rie do ECF: ' + numero_serie,
    'Consulta');
end;

procedure TformPrincipal.actCancelaUltimoCupomExecute(Sender: TObject);
begin
  if Pergunta(
    'Essa opera��o cancela o �ltimo cupom ECF emitido. ' +
    'Deseja continuar?',
    'Cancela Cupom Emitido') = IDYES then
  ECFX.CancelarCupom;
end;

procedure TformPrincipal.actCondicaoPagamentoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formFormaPagamento := TformFormaPagamento.Create(Self);
      formFormaPagamento.Tag := TAction(Sender).Tag;
      formFormaPagamento.ShowModal;
    finally
      try
        UserOut;
        formFormaPagamento.Release;
      except
      end
    end
end;

procedure TformPrincipal.actFormaPagamentoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formDocumentos := TformDocumentos.Create(Self);
      formDocumentos.Tag := TAction(Sender).Tag;
      formDocumentos.ShowModal;
    finally
      try
        UserOut;
        formDocumentos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actCentrosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formCentros := TformCentros.Create(Self);
      formCentros.Tag := TAction(Sender).Tag;
      formCentros.ShowModal;
    finally
      try
        UserOut;
        formCentros.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContaReceberExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContaReceber := TformContaReceber.Create(Self);
      formContaReceber.Tag := TAction(Sender).Tag;
      formContaReceber.ShowModal;
    finally
      try
        UserOut;
        formContaReceber.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContaPagarExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContaPagar := TformContaPagar.Create(Self);
      formContaPagar.Tag := TAction(Sender).Tag;
      formContaPagar.ShowModal;
    finally
      try
        UserOut;
        formContaPagar.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContasRecebidasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContasRecebidas := TformContasRecebidas.Create(Self);
      formContasRecebidas.Tag := TAction(Sender).Tag;
      formContasRecebidas.ShowModal;
    finally
      try
        UserOut;
        formContasRecebidas.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContasPagasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContasPagas := TformContasPagas.Create(Self);
      formContasPagas.Tag := TAction(Sender).Tag;
      formContasPagas.ShowModal;
    finally
      try
        UserOut;
        formContasPagas.Release;
      except
      end
    end
end;

procedure TformPrincipal.actExtratoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formExtrato := TformExtrato.Create(Self);
      formExtrato.Tag := TAction(Sender).Tag;
      formExtrato.ShowModal;
    finally
      try
        UserOut;
        formExtrato.Release;
      except
      end
    end
end;

procedure TformPrincipal.actVendasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formVendas := TformVendas.Create(Self);
      formVendas.Tag := TAction(Sender).Tag;
      formVendas.ShowModal;
    finally
      try
        UserOut;
        formVendas.Release;
      except
      end
    end
end;

procedure TformPrincipal.ApplicationEventsException(Sender: TObject;
  E: Exception);
begin
  HideMsg;
  if pos('socket', E.Message) = 0 then
   begin
     formPrincipal.MsgError(
      'Ocorreu um erro no sistema:' + #13#10#13#10 +
      E.Message,
      'Erro')
   end else
   begin
     SocketConnection.Close;
     Pronto('Conex�o perdida. Tente novamente.');
   end;
end;

procedure TformPrincipal.actMarcasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formMarcas := TformMarcas.Create(Self);
      formMarcas.Tag := TAction(Sender).Tag;
      formMarcas.ShowModal;
    finally
      try
        UserOut;
        formMarcas.Release;
      except
      end
    end
end;

procedure TformPrincipal.actModelosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formModelos := TformModelos.Create(Self);
      formModelos.Tag := TAction(Sender).Tag;
      formModelos.ShowModal;
    finally
      try
        UserOut;
        formModelos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actOcorrenciasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formDefeitos := TformDefeitos.Create(Self);
      formDefeitos.Tag := TAction(Sender).Tag;
      formDefeitos.ShowModal;
    finally
      try
        UserOut;
        formDefeitos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actOSTiposExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formOSTipos := TformOSTipos.Create(Self);
      formOSTipos.Tag := TAction(Sender).Tag;
      formOSTipos.ShowModal;
    finally
      try
        UserOut;
        formOSTipos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actOSExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formOS := TformOS.Create(Self);
      formOS.Tag := TAction(Sender).Tag;
      formOS.ShowModal;
    finally
      try
        UserOut;
        formOS.Release;
      except
      end
    end
end;

procedure TformPrincipal.CONN_DBError(form, chaves, msg: string);
var
  arquivo: TextFile;
  linha: string;
begin

  { grava��o do LOG em texto }
  try
    assignfile(arquivo,  funcoes.GetTempDir + '\logerror.txt');
    rewrite(arquivo);
    linha := '[' + FormatDateTime('DD/MM/YY HH:NN:SS', now) + '] ' +
      usuario + ' :: ' + computador;
    writeln(arquivo, linha);
    linha := form + ' = ' + msg;
    writeln(arquivo, linha);
    closefile(arquivo);
  except
    try
      closefile(arquivo);
    except
    end
  end
end;

procedure TformPrincipal.CONN_DBLento(form, comando, tempo: string);
begin

end;

procedure TformPrincipal.actConexaoExecute(Sender: TObject);
begin
  try
    formConnConfig := TformConnConfig.Create(Self);
    if formConnConfig.ShowModal = mrOk then
      MsgError(
        'Configura��es gravadas! Reinicie o sistema.',
        'Pronto!');
  finally
    formConnConfig.Release;
  end;
end;

procedure TformPrincipal.actReiniciarConfigExecute(Sender: TObject);
begin
  if Pergunta(
       'Esse procedimento reinicia todas as configura��es ' +
       'pessoais. Continuar?',
       'Reiniciar configura��es') = IDYES then
     DeleteFile(GetINIFileName);
end;

procedure TformPrincipal.actRelatoriosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
//      ShowMessage(GetAppDir + '\e2admrep.exe ' + GetServerPath);
      ShellExecute(0, 'open', PChar(GetAppDir + '\e2admrep.exe'), PChar(GetServerPath), nil, SW_SHOW);
    finally
      formPrincipal.HideMsg;
      UserOut;
    end;
end;

procedure TformPrincipal.actRelEstoqueDataExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRelEstoqueData := TformRelEstoqueData.Create(Self);
      formRelEstoqueData.Tag := TAction(Sender).Tag;
      formRelEstoqueData.ShowModal;
    finally
      try
        UserOut;
        formRelEstoqueData.Release;
      except
      end
    end
end;

procedure TformPrincipal.actRelEstoqueExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRelEstoque := TformRelEstoque.Create(Self);
      formRelEstoque.Tag := TAction(Sender).Tag;
      formRelEstoque.ShowModal;
    finally
      try
        UserOut;
        formRelEstoque.Release;
      except
      end
    end
end;

procedure TformPrincipal.actRelEstoqueMinimoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRelEstoqueMinimo := TformRelEstoqueMinimo.Create(Self);
      formRelEstoqueMinimo.Tag := TAction(Sender).Tag;
      formRelEstoqueMinimo.ShowModal;
    finally
      try
        UserOut;
        formRelEstoqueMinimo.Release;
      except
      end
    end
end;

procedure TformPrincipal.actRelEstoqueReposicaoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRelEstoqueReposicao := TformRelEstoqueReposicao.Create(Self);
      formRelEstoqueReposicao.Tag := TAction(Sender).Tag;
      formRelEstoqueReposicao.ShowModal;
    finally
      try
        UserOut;
        formRelEstoqueReposicao.Release;
      except
      end
    end
end;

procedure TformPrincipal.actBancosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formBancos := TformBancos.Create(Self);
      formBancos.Tag := TAction(Sender).Tag;
      formBancos.ShowModal;
    finally
      try
        UserOut;
        formBancos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContas := TformContas.Create(Self);
      formContas.Tag := TAction(Sender).Tag;
      formContas.ShowModal;
    finally
      try
        UserOut;
        formContas.Release;
      except
      end
    end
end;

procedure TformPrincipal.actPlancontasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formPlanContas := TformPlanContas.Create(Self);
      formPlanContas.Tag := TAction(Sender).Tag;
      formPlanContas.AutoLoad := True;
      formPlanContas.ShowModal;
    finally
      try
        UserOut;
        formPlanContas.Release;
      except
      end
    end
end;

procedure TformPrincipal.dxBarButton49Click(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formEstornoOS := TformEstornoOS.Create(Self);
      formEstornoOS.Tag := TAction(Sender).Tag;
      formEstornoOS.ShowModal;
    finally
      try
        UserOut;
        formEstornoOS.Release;
      except
      end
    end
end;

procedure TformPrincipal.dxBarButton5Click(Sender: TObject);
begin
  tmrUpdate.Enabled := True;
end;

procedure TformPrincipal.actEstornoVendasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formEstornoVendas := TformEstornoVendas.Create(Self);
      formEstornoVendas.Tag := TAction(Sender).Tag;
      formEstornoVendas.ShowModal;
    finally
      try
        UserOut;
        formEstornoVendas.Release;
      except
      end
    end
end;

procedure TformPrincipal.actLixeiraReceberExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContaReceberLixo := TformContaReceberLixo.Create(Self);
      formContaReceberLixo.Tag := TAction(Sender).Tag;
      formContaReceberLixo.ShowModal;
    finally
      try
        UserOut;
        formContaReceberLixo.Release;
      except
      end
    end
end;

procedure TformPrincipal.actLixeiraPagarExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContaPagarLixo := TformContaPagarLixo.Create(Self);
      formContaPagarLixo.Tag := TAction(Sender).Tag;
      formContaPagarLixo.ShowModal;
    finally
      try
        UserOut;
        formContaPagarLixo.Release;
      except
      end
    end
end;

procedure TformPrincipal.actUsuariosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formUsuarios := TformUsuarios.Create(Self);
      formUsuarios.Tag := TAction(Sender).Tag;
      formUsuarios.ShowModal;
    finally
      try
        UserOut;
        formUsuarios.Release;
      except
      end
    end
end;

procedure TformPrincipal.actEstornoOSExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formEstornoOS := TformEstornoOS.Create(Self);
      formEstornoOS.Tag := TAction(Sender).Tag;
      formEstornoOS.ShowModal;
    finally
      try
        UserOut;
        formEstornoOS.Release;
      except
      end
    end
end;

procedure TformPrincipal.actOrcamentoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formOrcamentos := TformOrcamentos.Create(Self);
      formOrcamentos.Tag := TAction(Sender).Tag;
      formOrcamentos.ShowModal;
    finally
      try
        UserOut;
        formOrcamentos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actCompraExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formCompras := TformCompras.Create(Self);
      formCompras.Tag := TAction(Sender).Tag;
      formCompras.ShowModal;
    finally
      try
        UserOut;
        formCompras.Release;
      except
      end
    end
end;

procedure TformPrincipal.actVeiculosExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formVeiculos := TformVeiculos.Create(Self);
      formVeiculos.Tag := TAction(Sender).Tag;
      formVeiculos.ShowModal;
    finally
      try
        UserOut;
        formVeiculos.Release;
      except
      end
    end
end;

procedure TformPrincipal.actOperadorasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formOperadoras := TformOperadoras.Create(Self);
      formOperadoras.Tag := TAction(Sender).Tag;
      formOperadoras.ShowModal;
    finally
      try
        UserOut;
        formOperadoras.Release;
      except
      end
    end
end;

procedure TformPrincipal.actIndividuaisExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formIndividuais := TformIndividuais.Create(Self);
      formIndividuais.Tag := TAction(Sender).Tag;
      formIndividuais.ShowModal;
    finally
      try
        UserOut;
        formIndividuais.Release;
      except
      end
    end
end;

procedure TformPrincipal.actHistoricoPagExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formHistoricoPag := TformHistoricoPag.Create(Self);
      formHistoricoPag.Tag := TAction(Sender).Tag;
      formHistoricoPag.ShowModal;
    finally
      try
        UserOut;
        formHistoricoPag.Release;
      except
      end
    end
end;

procedure TformPrincipal.actPerfilExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formPerfil := TformPerfil.Create(Self);
      formPerfil.Tag := TAction(Sender).Tag;
      formPerfil.ShowModal;
    finally
      try
        UserOut;
        formPerfil.Release;
      except
      end
    end
end;

procedure TformPrincipal.actSequenciasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formSequencias := TformSequencias.Create(Self);
      formSequencias.Tag := TAction(Sender).Tag;
      formSequencias.ShowModal;
    finally
      try
        UserOut;
        formSequencias.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContaRecebidaEstornoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContaRecebidaEstorno := TformContaRecebidaEstorno.Create(Self);
      formContaRecebidaEstorno.Tag := TAction(Sender).Tag;
      formContaRecebidaEstorno.ShowModal;
    finally
      try
        UserOut;
        formContaRecebidaEstorno.Release;
      except
      end
    end
end;

procedure TformPrincipal.actContaPagaEstornoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formContaPagaEstorno := TformContaPagaEstorno.Create(Self);
      formContaPagaEstorno.Tag := TAction(Sender).Tag;
      formContaPagaEstorno.ShowModal;
    finally
      try
        UserOut;
        formContaPagaEstorno.Release;
      except
      end
    end
end;

procedure TformPrincipal.actTransferenciasExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formTransferencias := TformTransferencias.Create(Self);
      formTransferencias.Tag := TAction(Sender).Tag;
      formTransferencias.ShowModal;
    finally
      try
        UserOut;
        formTransferencias.Release;
      except
      end
    end
end;

procedure TformPrincipal.actLanContabilExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formLanContabil := TformLanContabil.Create(Self);
      formLanContabil.Tag := TAction(Sender).Tag;
      formLanContabil.ShowModal;
    finally
      try
        UserOut;
        formLanContabil.Release;
      except
      end
    end
end;

procedure TformPrincipal.repProdutosAbcExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRepProdutosAbc := TformRepProdutosAbc.Create(Self);
      formRepProdutosAbc.Tag := TAction(Sender).Tag;
      formRepProdutosAbc.ShowModal;
    finally
      try
        UserOut;
        formRepProdutosAbc.Release;
      except
      end
    end
end;

procedure TformPrincipal.repProdutosAbcGrupoExecute(Sender: TObject);
begin
  if UserIn(Sender as TAction) then
    try
      formRepCurvaProGrupo := TformRepCurvaProGrupo.Create(Self);
      formRepCurvaProGrupo.Tag := TAction(Sender).Tag;
      formRepCurvaProGrupo.ShowModal;
    finally
      try
        UserOut;
        formRepCurvaProGrupo.Release;
      except
      end
    end
end;

end.
