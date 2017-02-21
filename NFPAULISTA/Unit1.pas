unit Unit1;

//+-----------------------------------------------------------------------------+
//+TKS Software                                                                 +
//+Demo de Utilização da NFPaulista32Dll.dll sem Banco de Dados                 +
//+                                                                             +
//+ Demonstra e implementa a comunicação entre o aplicativo e a dll para a      +
//+geração do arquivo magnético da NFPaulista através da declaração e           +
//+chamada de todas as funções e registros disponíveis na versão.               +
//+                                                                             +
//+ Para informações e atualizações do produtos acesse:                         +
//+ http://www.igara.com.br/produto.php?cod_produto=112                         +
//+-----------------------------------------------------------------------------+


//+-----------------------------  IMPORTANTE -----------------------------------+
//+                                                                             +
//+ Para valores numéricos maiores que 1000, o mesmo deve ser passado para as   +
//+funções sem o separador de casas de milhar.                                  +
//+Exemplo:                                                                     +
//+ 1.000,00 deve ser passado como 1000,00                                      +
//+                                                                             +
//+-----------------------------------------------------------------------------+

interface

uses
  ShareMem, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Dateutils, ExtCtrls, ComCtrls, jpeg, Menus, ShellApi,
  Buttons, WideStrings, FMTBcd, DB, SqlExpr, DBClient, SimpleDS, Grids, DBGrids,
  Provider;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button7:   TButton;
    PopupMenu1:   TPopupMenu;
    PageControl2: TPageControl;
    TabSheet4:  TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1:  TEdit;
    Edit2:  TEdit;
    GroupBox1: TGroupBox;
    Label5:    TLabel;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Sequencia203040506090: TMenuItem;
    SairBtn: TButton;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Reg10Btn: TButton;
    Reg20Btn: TButton;
    Reg30Btn: TButton;
    Reg40Btn: TButton;
    Reg50Btn: TButton;
    Reg60Btn: TButton;
    Reg90Btn: TButton;
    GroupBox3: TGroupBox;
    Reg10_CAT9807: TButton;
    Reg20_CAT9807: TButton;
    Reg21_CAT9807: TButton;
    Reg22_CAT9807: TButton;
    Reg90_CAT9807: TButton;
    Label7: TLabel;
    Label1: TLabel;
    SQLConnection: TSQLConnection;
    DBGrid1: TDBGrid;
    dsrEmpresas: TDataSource;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label8: TLabel;
    DateTimePicker2: TDateTimePicker;
    qryEmpresas: TSQLQuery;
    provEmpresas: TDataSetProvider;
    cdsEmpresas: TClientDataSet;
    qryEmpresasCODIGO: TIntegerField;
    qryEmpresasNOME: TStringField;
    qryEmpresasCNPJ: TStringField;
    cdsEmpresasCODIGO: TIntegerField;
    cdsEmpresasNOME: TStringField;
    cdsEmpresasCNPJ: TStringField;
    Button1: TButton;
    cdsMovimentos: TClientDataSet;
    provMovimentos: TDataSetProvider;
    dsrMovimentos: TDataSource;
    qryMovimentos: TSQLQuery;
    qryMovimentosCODIGO: TIntegerField;
    cdsMovimentosCODIGO: TIntegerField;
    cdsVenda: TClientDataSet;
    provVenda: TDataSetProvider;
    dsrVenda: TDataSource;
    qryVenda: TSQLQuery;
    qryVendaES: TSmallintField;
    qryVendaCODCLIENTE: TIntegerField;
    qryVendaDATA: TSQLTimeStampField;
    qryVendaSERVICOS: TStringField;
    qryVendaVALOR_SERVICOS: TFloatField;
    qryVendaVALOR_ITENS: TFloatField;
    qryVendaDESCONTO: TFloatField;
    qryVendaVALOR_PRODUTOS: TFloatField;
    qryVendaVALOR_ICMS: TFloatField;
    qryVendaVALOR_TOTAL: TFloatField;
    qryVendaOBSERVACOES: TStringField;
    qryVendaNOTA_NUMERO: TIntegerField;
    qryVendaNOTA_DATAEMISSAO: TSQLTimeStampField;
    qryVendaNOTA_CODNATUOPER: TStringField;
    qryVendaNOTA_CODTRANSPORTADOR: TIntegerField;
    qryVendaNOTA_PLACAVEICULO: TStringField;
    qryVendaNOTA_UFVEICULO: TStringField;
    qryVendaNOTA_FRETE: TSmallintField;
    qryVendaNOTA_VALOR_FRETE: TFloatField;
    qryVendaNOTA_VALOR_SEGURO: TFloatField;
    qryVendaNOTA_VALOR_OUTROS: TFloatField;
    qryVendaNOTA_VALOR_TOTAL: TFloatField;
    qryVendaNOTA_QUANTIDADE: TFloatField;
    qryVendaNOTA_ESPECIE: TStringField;
    qryVendaNOTA_MARCA: TStringField;
    qryVendaNOTA_VOLNUM: TIntegerField;
    qryVendaNOTA_PESOBRUTO: TFloatField;
    qryVendaNOTA_PESOLIQUIDO: TFloatField;
    qryVendaNOTA_DADOSADICIONAIS: TStringField;
    qryVendaCODVENDEDOR: TIntegerField;
    qryVendaSTATUS: TStringField;
    qryVendaCONDICAO: TStringField;
    qryVendaDATAINICIO: TSQLTimeStampField;
    qryVendaDATATERMINO: TSQLTimeStampField;
    qryVendaICMSSIMPLES: TStringField;
    qryVendaICMSSIMPALIQ: TFloatField;
    qryVendaISSALIQ: TFloatField;
    qryVendaVALOR_ISS: TFloatField;
    qryVendaNOTA_IESUBST: TStringField;
    qryVendaNOTA_DATASAIDA: TSQLTimeStampField;
    qryVendaNOTA_BASEICMS: TFloatField;
    qryVendaNOTA_BASEICMSSUBST: TFloatField;
    qryVendaNOTA_VALORICMSSUBST: TFloatField;
    qryVendaVALOR_IPI: TFloatField;
    qryVendaCODVENDEDOR_ABRE: TIntegerField;
    qryVendaDESCONTOTXT: TStringField;
    qryVendaCLI_NOME: TStringField;
    qryVendaCLI_RAZAOSOCIAL: TStringField;
    qryVendaCLI_LOGRADOURO: TStringField;
    qryVendaCLI_NUMERO: TIntegerField;
    qryVendaCLI_COMPLEMENTO: TStringField;
    qryVendaCLI_BAIRRO: TStringField;
    qryVendaCLI_CEP: TStringField;
    qryVendaCLI_CIDADE: TStringField;
    qryVendaCLI_ESTADO: TStringField;
    qryVendaCLI_FONE: TStringField;
    qryVendaCLI_FAX: TStringField;
    qryVendaCLI_CELULAR: TStringField;
    qryVendaCLI_EMAIL: TStringField;
    qryVendaCLI_RGIE: TStringField;
    qryVendaCLI_CPFCGC: TStringField;
    qryVendaTRA_NOME: TStringField;
    qryVendaTRA_LOGRADOURO: TStringField;
    qryVendaTRA_NUMERO: TIntegerField;
    qryVendaTRA_COMPLEMENTO: TStringField;
    qryVendaTRA_BAIRRO: TStringField;
    qryVendaTRA_CEP: TStringField;
    qryVendaTRA_CIDADE: TStringField;
    qryVendaTRA_ESTADO: TStringField;
    qryVendaTRA_FONE: TStringField;
    qryVendaTRA_FAX: TStringField;
    qryVendaTRA_EMAIL: TStringField;
    qryVendaTRA_RGIE: TStringField;
    qryVendaTRA_CPFCGC: TStringField;
    qryVendaCODIGO: TIntegerField;
    qryVendaMARCA: TStringField;
    qryVendaMODELO: TStringField;
    qryVendaDEFEITO: TStringField;
    qryVendaGARANTIA: TStringField;
    qryVendaSERIE: TStringField;
    qryVendaACESSORIOS: TStringField;
    qryVendaCONDICAOEXTERNA: TStringField;
    qryVendaSOLICITANTE: TStringField;
    qryVendaVENDEDORABRE: TStringField;
    qryVendaVENDEDOR: TStringField;
    qryVendaUSUARIO: TStringField;
    qryVendaCLI_CONTRATO: TStringField;
    qryVendaCLI_KM: TIntegerField;
    qryVendaNATUREZAOPERACAO: TStringField;
    qryVendaCODEMPRESA: TIntegerField;
    qryVendaEMPRESA_NOME: TStringField;
    qryVendaEMPRESA_RAZAOSOCIAL: TStringField;
    qryVendaEMPRESA_CNPJ: TStringField;
    qryVendaEMPRESA_IE: TStringField;
    qryVendaEMPRESA_LOGRADOURO: TStringField;
    qryVendaEMPRESA_NUMERO: TIntegerField;
    qryVendaEMPRESA_COMPLEMENTO: TStringField;
    qryVendaEMPRESA_BAIRRO: TStringField;
    qryVendaEMPRESA_CIDADE: TStringField;
    qryVendaEMPRESA_ESTADO: TStringField;
    qryVendaEMPRESA_CEP: TStringField;
    qryVendaEMPRESA_FONE: TStringField;
    qryVendaTIPOOS: TStringField;
    qryVendaXX_ENTRADA: TStringField;
    qryVendaXX_SAIDA: TStringField;
    qryVendaEXTENSO: TStringField;
    qryVendaTECNICO: TStringField;
    qryVendaDEFEITO_DETECTADO: TStringField;
    qryVendaSERVICO_REALIZAR: TStringField;
    qryVendaAUTORIZADO: TStringField;
    qryVendaDATA_AUTORIZADO: TSQLTimeStampField;
    qryVendaQUEM_AUTORIZOU: TStringField;
    qryVendaDATA_ENTREGA: TSQLTimeStampField;
    qryVendaQUEM_ENTREGOU: TStringField;
    qryVendaQUEM_RECEBEU: TStringField;
    qryVendaNOTA_ENTRADA: TIntegerField;
    qryVendaAUTORIZADO_SIM: TStringField;
    qryVendaAUTORIZADO_NAO: TStringField;
    qryVendaPARCEIRO: TStringField;
    qryVendaMENSAGEM_OS: TStringField;
    qryVendaMENSAGEM_VENDA: TStringField;
    qryVendaOPERADORA: TStringField;
    qryVendaNO_IPI: TStringField;
    cdsVendaES: TSmallintField;
    cdsVendaCODCLIENTE: TIntegerField;
    cdsVendaDATA: TSQLTimeStampField;
    cdsVendaSERVICOS: TStringField;
    cdsVendaVALOR_SERVICOS: TFloatField;
    cdsVendaVALOR_ITENS: TFloatField;
    cdsVendaDESCONTO: TFloatField;
    cdsVendaVALOR_PRODUTOS: TFloatField;
    cdsVendaVALOR_ICMS: TFloatField;
    cdsVendaVALOR_TOTAL: TFloatField;
    cdsVendaOBSERVACOES: TStringField;
    cdsVendaNOTA_NUMERO: TIntegerField;
    cdsVendaNOTA_DATAEMISSAO: TSQLTimeStampField;
    cdsVendaNOTA_CODNATUOPER: TStringField;
    cdsVendaNOTA_CODTRANSPORTADOR: TIntegerField;
    cdsVendaNOTA_PLACAVEICULO: TStringField;
    cdsVendaNOTA_UFVEICULO: TStringField;
    cdsVendaNOTA_FRETE: TSmallintField;
    cdsVendaNOTA_VALOR_FRETE: TFloatField;
    cdsVendaNOTA_VALOR_SEGURO: TFloatField;
    cdsVendaNOTA_VALOR_OUTROS: TFloatField;
    cdsVendaNOTA_VALOR_TOTAL: TFloatField;
    cdsVendaNOTA_QUANTIDADE: TFloatField;
    cdsVendaNOTA_ESPECIE: TStringField;
    cdsVendaNOTA_MARCA: TStringField;
    cdsVendaNOTA_VOLNUM: TIntegerField;
    cdsVendaNOTA_PESOBRUTO: TFloatField;
    cdsVendaNOTA_PESOLIQUIDO: TFloatField;
    cdsVendaNOTA_DADOSADICIONAIS: TStringField;
    cdsVendaCODVENDEDOR: TIntegerField;
    cdsVendaSTATUS: TStringField;
    cdsVendaCONDICAO: TStringField;
    cdsVendaDATAINICIO: TSQLTimeStampField;
    cdsVendaDATATERMINO: TSQLTimeStampField;
    cdsVendaICMSSIMPLES: TStringField;
    cdsVendaICMSSIMPALIQ: TFloatField;
    cdsVendaISSALIQ: TFloatField;
    cdsVendaVALOR_ISS: TFloatField;
    cdsVendaNOTA_IESUBST: TStringField;
    cdsVendaNOTA_DATASAIDA: TSQLTimeStampField;
    cdsVendaNOTA_BASEICMS: TFloatField;
    cdsVendaNOTA_BASEICMSSUBST: TFloatField;
    cdsVendaNOTA_VALORICMSSUBST: TFloatField;
    cdsVendaVALOR_IPI: TFloatField;
    cdsVendaCODVENDEDOR_ABRE: TIntegerField;
    cdsVendaDESCONTOTXT: TStringField;
    cdsVendaCLI_NOME: TStringField;
    cdsVendaCLI_RAZAOSOCIAL: TStringField;
    cdsVendaCLI_LOGRADOURO: TStringField;
    cdsVendaCLI_NUMERO: TIntegerField;
    cdsVendaCLI_COMPLEMENTO: TStringField;
    cdsVendaCLI_BAIRRO: TStringField;
    cdsVendaCLI_CEP: TStringField;
    cdsVendaCLI_CIDADE: TStringField;
    cdsVendaCLI_ESTADO: TStringField;
    cdsVendaCLI_FONE: TStringField;
    cdsVendaCLI_FAX: TStringField;
    cdsVendaCLI_CELULAR: TStringField;
    cdsVendaCLI_EMAIL: TStringField;
    cdsVendaCLI_RGIE: TStringField;
    cdsVendaCLI_CPFCGC: TStringField;
    cdsVendaTRA_NOME: TStringField;
    cdsVendaTRA_LOGRADOURO: TStringField;
    cdsVendaTRA_NUMERO: TIntegerField;
    cdsVendaTRA_COMPLEMENTO: TStringField;
    cdsVendaTRA_BAIRRO: TStringField;
    cdsVendaTRA_CEP: TStringField;
    cdsVendaTRA_CIDADE: TStringField;
    cdsVendaTRA_ESTADO: TStringField;
    cdsVendaTRA_FONE: TStringField;
    cdsVendaTRA_FAX: TStringField;
    cdsVendaTRA_EMAIL: TStringField;
    cdsVendaTRA_RGIE: TStringField;
    cdsVendaTRA_CPFCGC: TStringField;
    cdsVendaCODIGO: TIntegerField;
    cdsVendaMARCA: TStringField;
    cdsVendaMODELO: TStringField;
    cdsVendaDEFEITO: TStringField;
    cdsVendaGARANTIA: TStringField;
    cdsVendaSERIE: TStringField;
    cdsVendaACESSORIOS: TStringField;
    cdsVendaCONDICAOEXTERNA: TStringField;
    cdsVendaSOLICITANTE: TStringField;
    cdsVendaVENDEDORABRE: TStringField;
    cdsVendaVENDEDOR: TStringField;
    cdsVendaUSUARIO: TStringField;
    cdsVendaCLI_CONTRATO: TStringField;
    cdsVendaCLI_KM: TIntegerField;
    cdsVendaNATUREZAOPERACAO: TStringField;
    cdsVendaCODEMPRESA: TIntegerField;
    cdsVendaEMPRESA_NOME: TStringField;
    cdsVendaEMPRESA_RAZAOSOCIAL: TStringField;
    cdsVendaEMPRESA_CNPJ: TStringField;
    cdsVendaEMPRESA_IE: TStringField;
    cdsVendaEMPRESA_LOGRADOURO: TStringField;
    cdsVendaEMPRESA_NUMERO: TIntegerField;
    cdsVendaEMPRESA_COMPLEMENTO: TStringField;
    cdsVendaEMPRESA_BAIRRO: TStringField;
    cdsVendaEMPRESA_CIDADE: TStringField;
    cdsVendaEMPRESA_ESTADO: TStringField;
    cdsVendaEMPRESA_CEP: TStringField;
    cdsVendaEMPRESA_FONE: TStringField;
    cdsVendaTIPOOS: TStringField;
    cdsVendaXX_ENTRADA: TStringField;
    cdsVendaXX_SAIDA: TStringField;
    cdsVendaEXTENSO: TStringField;
    cdsVendaTECNICO: TStringField;
    cdsVendaDEFEITO_DETECTADO: TStringField;
    cdsVendaSERVICO_REALIZAR: TStringField;
    cdsVendaAUTORIZADO: TStringField;
    cdsVendaDATA_AUTORIZADO: TSQLTimeStampField;
    cdsVendaQUEM_AUTORIZOU: TStringField;
    cdsVendaDATA_ENTREGA: TSQLTimeStampField;
    cdsVendaQUEM_ENTREGOU: TStringField;
    cdsVendaQUEM_RECEBEU: TStringField;
    cdsVendaNOTA_ENTRADA: TIntegerField;
    cdsVendaAUTORIZADO_SIM: TStringField;
    cdsVendaAUTORIZADO_NAO: TStringField;
    cdsVendaPARCEIRO: TStringField;
    cdsVendaMENSAGEM_OS: TStringField;
    cdsVendaMENSAGEM_VENDA: TStringField;
    cdsVendaOPERADORA: TStringField;
    cdsVendaNO_IPI: TStringField;
    cdsItens: TClientDataSet;
    provItens: TDataSetProvider;
    dsrItens: TDataSource;
    qryItens: TSQLQuery;
    qryItensCODIGO: TIntegerField;
    qryItensBARRA: TStringField;
    qryItensDESCRICAO1: TStringField;
    qryItensDESCRICAO2: TStringField;
    qryItensSERIE: TStringField;
    qryItensSERIE2: TStringField;
    qryItensVALOR_VENDA: TFMTBCDField;
    qryItensICMS_VENDA: TFMTBCDField;
    qryItensDESCONTO: TFMTBCDField;
    qryItensQUANTIDADE: TFMTBCDField;
    qryItensVALOR_PAGO: TFMTBCDField;
    qryItensVALOR_ICMS: TFMTBCDField;
    qryItensSITTRIBU: TStringField;
    qryItensUNIDADE: TStringField;
    qryItensVALOR_ITEM: TFMTBCDField;
    qryItensIPI: TFMTBCDField;
    qryItensLINHA: TStringField;
    qryItensOPERADORA: TStringField;
    qryItensPLANO: TStringField;
    qryItensCONTRATO: TStringField;
    qryItensVOUCHER: TStringField;
    qryItensTIPOATIVACAO: TStringField;
    qryItensCLASSFISCAL: TStringField;
    qryItensPESO: TFloatField;
    qryItensVALOR_IPI: TFMTBCDField;
    cdsItensCODIGO: TIntegerField;
    cdsItensBARRA: TStringField;
    cdsItensDESCRICAO1: TStringField;
    cdsItensDESCRICAO2: TStringField;
    cdsItensSERIE: TStringField;
    cdsItensSERIE2: TStringField;
    cdsItensVALOR_VENDA: TFMTBCDField;
    cdsItensICMS_VENDA: TFMTBCDField;
    cdsItensDESCONTO: TFMTBCDField;
    cdsItensQUANTIDADE: TFMTBCDField;
    cdsItensVALOR_PAGO: TFMTBCDField;
    cdsItensVALOR_ICMS: TFMTBCDField;
    cdsItensSITTRIBU: TStringField;
    cdsItensUNIDADE: TStringField;
    cdsItensVALOR_ITEM: TFMTBCDField;
    cdsItensIPI: TFMTBCDField;
    cdsItensLINHA: TStringField;
    cdsItensOPERADORA: TStringField;
    cdsItensPLANO: TStringField;
    cdsItensCONTRATO: TStringField;
    cdsItensVOUCHER: TStringField;
    cdsItensTIPOATIVACAO: TStringField;
    cdsItensCLASSFISCAL: TStringField;
    cdsItensPESO: TFloatField;
    cdsItensVALOR_IPI: TFMTBCDField;
    qryServ: TSQLQuery;
    dsrServ: TDataSource;
    cdsServ: TClientDataSet;
    provServ: TDataSetProvider;
    qryServCODIGO: TIntegerField;
    qryServBARRA: TStringField;
    qryServDESCRICAO1: TStringField;
    qryServDESCRICAO2: TStringField;
    qryServSERIE: TStringField;
    qryServSERIE2: TStringField;
    qryServVALOR_VENDA: TFloatField;
    qryServICMS_VENDA: TFloatField;
    qryServDESCONTO: TFloatField;
    qryServQUANTIDADE: TFloatField;
    qryServVALOR_PAGO: TFloatField;
    qryServVALOR_ICMS: TFloatField;
    qryServSITTRIBU: TStringField;
    qryServVALOR_ITEM: TFloatField;
    qryServLINHA: TStringField;
    qryServOPERADORA: TStringField;
    qryServPLANO: TStringField;
    qryServATIVACAO: TStringField;
    cdsServCODIGO: TIntegerField;
    cdsServBARRA: TStringField;
    cdsServDESCRICAO1: TStringField;
    cdsServDESCRICAO2: TStringField;
    cdsServSERIE: TStringField;
    cdsServSERIE2: TStringField;
    cdsServVALOR_VENDA: TFloatField;
    cdsServICMS_VENDA: TFloatField;
    cdsServDESCONTO: TFloatField;
    cdsServQUANTIDADE: TFloatField;
    cdsServVALOR_PAGO: TFloatField;
    cdsServVALOR_ICMS: TFloatField;
    cdsServSITTRIBU: TStringField;
    cdsServVALOR_ITEM: TFloatField;
    cdsServLINHA: TStringField;
    cdsServOPERADORA: TStringField;
    cdsServPLANO: TStringField;
    cdsServATIVACAO: TStringField;

    procedure Trata_NFPaulista_Int(sender: tobject; retorno: integer);

    procedure Reg20BtnClick(Sender: TObject);
    procedure Reg30BtnClick(Sender: TObject);
    procedure Reg40BtnClick(Sender: TObject);
    procedure Reg90BtnClick(Sender: TObject);
    procedure Reg60BtnClick(Sender: TObject);
    procedure Reg50BtnClick(Sender: TObject);
    procedure Reg10BtnClick(Sender: TObject);

    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure Sequencia10_20_30_40_50_60_90Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SairBtnClick(Sender: TObject);
    procedure Reg10_CAT9807Click(Sender: TObject);
    procedure Reg20_CAT9807Click(Sender: TObject);
    procedure Reg21_CAT9807Click(Sender: TObject);
    procedure Reg22_CAT9807Click(Sender: TObject);
    procedure Reg90_CAT9807Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TempInt: Integer;

Const

 CNPJ: String = '34261131000144';               //Preencher a variável com um CNPJ válido
 IE:  String =  '0740873800250';                //Preencher a variável com uma Inscrição Estadual válida
 UF:  String =  'DF';
 CPF: string =  '80910912572';


 CGC_Nota: String = '';           //Preencher a variável com um CNPJ válido
 IE_Nota:  String = 'ISENTO';     //Preencher a variável com uma Inscrição Estadual válida
 UF_Nota:  String = 'PE';

implementation
Function Info_Versao: integer; stdcall; external 'NFPaulista32Dll.dll';
Function Inicia_NF_Paulista(Dir_Saida, Dir_Entrada: String): integer; stdcall; external 'NFPaulista32Dll.dll';
Procedure Finaliza_NF_Paulista; stdcall; external 'NFPaulista32Dll.dll';

Function  RemoveAlfaInvalid(FromStr: String): String; stdcall; external 'NFPaulista32Dll.dll';
Function  RemoveNumInvalid(FromStr: String): String; stdcall; external 'NFPaulista32Dll.dll';
Function  IsNFPaulistaDate(Date_Str: String): boolean; stdcall; external 'NFPaulista32Dll.dll';
Function IsNFPaulistaDateTime(Date_Str: String): boolean; stdcall; external 'NFPaulista32Dll.dll';

Function vLeiaute(VER: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vCST(CST: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';

Function vCEP_UF(cCep:String ; cEstado:String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vUF(UF: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vCPF(const CPF: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vCNPJ(const CGC: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vInd_tipo_frete(IND_FRT: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vCOD_CFOP(COD_CFOP: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vCOD_NCM(COD_NCM: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vFunc_Reg(Func_Reg: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vxJust(Just ,Func_Reg: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vtpNF(NF: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
function vItemNF(Tipo: String): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vSerie_NFVC(Serie_NFVC: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vEntrega_Domicilio(Domicilio: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vRealiza_Venda_Prazo(Venda: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function vTipo_Receita(Tipo: string): Boolean; stdcall; external 'NFPaulista32Dll.dll';
Function Registro10_CAT10207(COD_VER, CNPJ, DT_INI, DT_FIN: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro20_CAT10207(FUNC_REG, xJUST, natOp, serie, nNF, dEmi, dSaiEnt,
                    tpNF, CFOP, IEST, IM, CNPJ, xNome, xLgr, nro,
                    xCpl, xBairro, xMun, UF, CEP, xPais, fone, IE: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro20_CAT9807(SerieNFVC, SubSerieNFVC, NumNFVC, DtEm, DtSaida, CPF_CNPJ, Destinatario,
                            Logradouro, Numero, Complemento, Bairro, Municipio, UF,
                            CEP, Telefone, Total_Prod, Total_Desc, Total_Frete, Total_Seguro,
                            Outras_Desp, Desc_Outras_Desp, Total_NFVC, Inter_Contri, Inter_Fisco,
                            Entr_Domic, Logradouro_Entr, Num_Entr, Compl_Entr, Bairro_Entr,
                            Mun_Entr, UF_Entr, Venda_Prazo, A_Vista, Preco_Final,
                            Qnt_Parcelas: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro21_CAT9807(Num_Item, Cod_Prod, Tp_Receita, Desc_Merc, Und_Comerc,
                           Qnt, Valor_Unt,Valor_Total : String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro22_CAT9807(Valor_Parcela, Dt_Venc_Parcela : String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro30_CAT10207(cProd, xProd, NCM, uCom, qCom, vUnCom, vProd,
                    CST, pICMS, pIPI, vIPI: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro40_CAT10207(vBC, vICMS, vBCST, vST, vProd, vFrete, vSeg,
                    vDesc, vIPI, vOutro, vNF, vServ, pISS, vISS: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro50_CAT10207(modFrete, CNPJ, xNome, IE, xEnder, xMun, UF, placa, pUF,
                    qVol, esp, marca, nVol, pesoL, pesoB: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro60_CAT10207(Fatura, infAdFisco, infCpl: String): Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro90_CAT10207: Integer; stdcall; external 'NFPaulista32Dll.dll';
Function Registro90_CAT9807: Integer; stdcall; external 'NFPaulista32Dll.dll';

{$R *.dfm}


procedure TForm1.Trata_NFPaulista_Int(sender: tobject; retorno: integer);
begin
// if retorno = -1 then
//  showmessage('Erro na chamada do ' + tbutton(sender).Caption + ', verifique o erro em ' + edit2.text)
// else if retorno = 0 then
//  //showmessage('Registro OK, verifique o registro no arquivo de saída em ' + edit1.text)
// else
//  showmessage('Retorno desconhecido');
end;

procedure TForm1.Reg10BtnClick(Sender: TObject);
var
 TempInt: integer;
begin
 if Inicia_NF_Paulista(edit1.text, edit2.text) = -1 then
  application.MessageBox('Erro durante chamada da função Inicia_NFPaulista.',
                         'Atenção', mb_iconerror);

// ABERTURA DO ARQUIVO DIGITAL E IDENTIFICADOR DO ESTABELECIMENTO EMITENTE.

 TempInt := Registro10_CAT10207('1,00',                           //Versão Layout
                                CNPJ,//'34261131000144',                 //CNPJ do emitente
                                '10/10/2007',                     //Data de início do período transferido no arquivo
                                '17/10/2007');                    //Data de fim do período transferido no arquivo


 Trata_NFPaulista_Int(sender, TempInt);                  //Trata Retorno da Função do Registro

 //Se funções do CAT102/07 utilizadas serão, então só pode usar o outro CAT após chamar a função de finaliza
 if TempInt = 0 then    //Retorno OK
  begin
   Reg10_CAT9807.Enabled := false;
   Reg20_CAT9807.Enabled := false;
   Reg21_CAT9807.Enabled := false;
   Reg22_CAT9807.Enabled := false;
   Reg90_CAT9807.Enabled := false;
  end;
end;


procedure TForm1.Reg20BtnClick(Sender: TObject);
var
 TempInt: integer;
begin
 TempInt := Registro20_CAT10207('I',                        //Função do Registro
                                '',                         //Justificativa do Cancelamento
                                'Venda a Consumidor Final', //Descrição da Natureza da Operação
                                '0',                        //Série da Nota Fiscal
                                '20956',                    //Número da Nota Fiscal
                                '10/10/2007 10:00:00',      //Data de emissão da Nota Fiscal
                                '10/10/2007 10:00:00',      //Data de Saída ou da Entrada da Mercadoria / Produto / Serviço
                                '1',                        //Tipo da Nota Fiscal
                                '5102',                     //Código Fiscal de Operações e Prestações
                                '000000000000',             //IE do Substituto Tributário na UF de destino
                                '000000000000',             //Inscrição Municipal do Emitente
                                CNPJ,                       //CNPJ ou CPF do destinatário
                                'Casa F',                   //Razão Social ou nome do destinatário
                                'R São Manoel',             //Logradouro
                                '176',                      //Número
                                'apto 18',                  //Complemento
                                'Centro',                   //Bairro
                                'São Paulo',                //Nome do município
                                'SP',                       //Sigla da UF
                                '10100000',                 //Código do CEP
                                'Brasil',                   //Nome do País
                                '5550723',                  //Telefone
                                '');                        //IE do Destinatário

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg30BtnClick(Sender: TObject);
var
 TempInt: Integer;
begin
 TempInt := Registro30_CAT10207('Produto 0',                //Código do produto ou serviço
                                'Pinga tipo 0',             //Descrição do produto ou serviço
                                '22060090',                 //Código NCM
                                'caixa',                    //Unidade Comercial
                                '1,0000',                   //Quantidade Comercial
                                '5,0000',                   //Valor Unitário de comercialização
                                '5,00',                     //Valor Total Bruto dos Produtos ou Serviços
                                '010',                      //Código da Situação Tributária
                                '18,00',                    //Alíquota do imposto ICMS
                                '6,00',                     //Alíquota do IPI
                                '10,00');                   //Valor do IPI

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg40BtnClick(Sender: TObject);
var
 TempInt: Integer;
begin
 TempInt := Registro40_CAT10207('69,01',                    //Base de Cálculo do ICMS
                                '1234,56',                  //Valor Total do ICMS
                                '45,78',                    //Base de Cálculo do ICMS ST
                                '123,45',                   //Valor Total do ICMS ST
                                '100,10',                   //Valor Total dos produtos e serviços
                                '20,02',                    //Valor Total do Frete
                                '10,01',                    //Valor Total do Seguro
                                '30,00',                    //Valor Total do Desconto
                                '5,00',                     //Valor Total do IPI
                                '1,00',                     //Outras Despesas acessórias
                                '229,58',                   //Valor Total da NF
                                '234,00',                   //Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
                                '6,00',                     //Alíquota do ISS
                                '154,00');                  //Valor Total do ISS

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg50BtnClick(Sender: TObject);
var
 TempInt: Integer;
begin
 TempInt := Registro50_CAT10207('0',                        //Modalidade do frete
                                CNPJ,                       //CNPJ ou CPF
                                'Transportadora Xing Ling', //Razão Social ou nome
                                '000000000000',             //Inscrição Estadual
                                'Av. da Lentidao, 321',     //Endereço Completo
                                'Sao Paulo',                //Nome do município
                                'SP',                       //Sigla da UF
                                'ABC1234',                  //Placa do Veículo
                                'SP',                       //Sigla da UF da Placa
                                '123456789012345',          //Quantidade de volumes transportados
                                'litros',                   //Espécie dos volumes transportados
                                'Xing Ling',                //Marca dos volumes transportados
                                '123456789',                //Numeração dos volumes transportados
                                '123,000',                  //Peso Líquido (em kg)
                                '154,064');                 //Peso Bruto (em kg)

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg60BtnClick(Sender: TObject);
var
 TempInt: Integer;
begin
 TempInt := Registro60_CAT10207('Dados da fatura',                                          //Dados da Fatura
                       'Informacoes adicionais de interesse do Fisco',             //Informações Adicionais de Interesse do Fisco
                       'Informacoes complementares de interesse do contribuinte'); //Informações Complementares de interesse do Contribuinte

 Trata_NFPaulista_Int(sender, TempInt);
end;

procedure TForm1.Reg90BtnClick(Sender: TObject);
var
 TempInt: Integer;
begin
 //--- Registro90 - ENCERRAMENTO DO ARQUIVO DIGITAL ---
 TempInt := Registro90_CAT10207;

 Trata_NFPaulista_Int(sender, TempInt);

 Finaliza_NF_Paulista;

 Reg10_CAT9807.Enabled := true;
 Reg20_CAT9807.Enabled := true;
 Reg21_CAT9807.Enabled := true;
 Reg22_CAT9807.Enabled := true;
 Reg90_CAT9807.Enabled := true;

 ShowMessage('Verifique os arquivo de saída em ' + edit1.text);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
opendialog1.InitialDir := extractfilepath(application.exename);
if opendialog1.Execute then
 edit1.Text := opendialog1.FileName;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 opendialog1.InitialDir := extractfilepath(application.exename);

if opendialog1.Execute then
 edit2.Text := opendialog1.FileName;
end;

function limpa(s: string): string;
var
  i: byte;
  r: string;
begin
  i := 1;
  r := '';
  while i <= length(s) do
   begin
     if s[i] in ['0'..'9', 'a'..'z', 'A'..'Z', #32] then
       r := r + s[i];
     inc(i);
   end;
  Result := trim(r);
end;

function naonulo(s: string): string;
begin
  if trim(s) = '' then
    result := '1000';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 TempInt: integer;
 numero,
 bairro: string;
begin

  cdsMovimentos.Close;
  cdsMovimentos.Params[0].AsDate := DateTimePicker1.Date;
  cdsMovimentos.Params[1].AsDate := DateTimePicker2.Date;
  cdsMovimentos.Params[2].AsInteger := cdsEmpresasCODIGO.AsInteger;
//  qryMovimentos.ParamByName('DATAINI').DataType := ftTimeStamp;
//  qryMovimentos.ParamByName('DATAINI').Value := DateTimePicker1.DateTime;
//  qryMovimentos.ParamByName('DATAFIM').DataType := ftTimeStamp;
//  qryMovimentos.ParamByName('DATAFIM').Value := DateTimePicker2.DateTime;
  cdsMovimentos.Open;

  if not cdsMovimentos.IsEmpty then
   begin

     if Inicia_NF_Paulista(edit1.text, edit2.text) = -1 then
       application.MessageBox('Erro durante chamada da função Inicia_NFPaulista.',
                         'Atenção', mb_iconerror);

     // ABERTURA DO ARQUIVO DIGITAL E IDENTIFICADOR DO ESTABELECIMENTO EMITENTE.
     TempInt := Registro10_CAT10207('1.00',                          //Versão Layout
                                    limpa(cdsEmpresasCNPJ.AsString), //CNPJ do emitente
                                    FormatDateTime('DD/MM/YYYY',
                                       DateTimePicker1.DateTime),    //Data de início do período transferido no arquivo
                                    FormatDateTime('DD/MM/YYYY',
                                       DateTimePicker2.DateTime));   //Data de fim do período transferido no arquivo
     Trata_NFPaulista_Int(sender, TempInt);                          //Trata Retorno da Função do Registro

     { para cada venda }
     while not cdsMovimentos.Eof do
      begin
        cdsVenda.Close;
        cdsVenda.Open;

        { tem CPF ou CNPJ? }
        if limpa(cdsVendaCLI_CPFCGC.AsString) > '' then
         begin

           numero := naonulo(cdsVendaCLI_NUMERO.AsString);
           bairro := naonulo(cdsVendaCLI_BAIRRO.AsString);

           { cabeçalho nota/cupom }
           TempInt := Registro20_CAT10207('I',                                       //Função do Registro
                                          '',                                        //Justificativa do Cancelamento
                                          cdsVendaNATUREZAOPERACAO.AsString,         //Descrição da Natureza da Operação
                                          '0',                                       //Série da Nota Fiscal
                                          cdsVendaNOTA_NUMERO.AsString,              //Número da Nota Fiscal
                                          FormatDateTime('DD/MM/YYYY HH:NN:SS',
                                            cdsVendaNOTA_DATAEMISSAO.AsDateTime),    //Data de emissão da Nota Fiscal
                                          FormatDateTime('DD/MM/YYYY HH:NN:SS',
                                            cdsVendaNOTA_DATASAIDA.AsDateTime),      //Data de Saída ou da Entrada da Mercadoria / Produto / Serviço
                                          '1',                                       //Tipo da Nota Fiscal
                                          limpa(cdsVendaNOTA_CODNATUOPER.AsString),  //Código Fiscal de Operações e Prestações
                                          limpa(cdsVendaNOTA_IESUBST.AsString),      //IE do Substituto Tributário na UF de destino
                                          '000000000000',                            //Inscrição Municipal do Emitente
                                          limpa(cdsVendaCLI_CPFCGC.AsString),        //CNPJ ou CPF do destinatário
                                          limpa(cdsVendaCLI_RAZAOSOCIAL.AsString),          //Razão Social ou nome do destinatário
                                          limpa(cdsVendaCLI_LOGRADOURO.AsString),           //Logradouro
                                          '1000', //naonulo(cdsVendaCLI_NUMERO.AsString),      //Número
                                          limpa(cdsVendaCLI_COMPLEMENTO.AsString),          //Complemento
                                          'CENTRO', //naonulo(cdsVendaCLI_BAIRRO.AsString),      //Bairro
                                          limpa(cdsVendaCLI_CIDADE.AsString),               //Nome do município
                                          cdsVendaCLI_ESTADO.AsString,               //Sigla da UF
                                          limpa(cdsVendaCLI_CEP.AsString),           //Código do CEP
                                          'Brasil',                                  //Nome do País
                                          limpa(cdsVendaCLI_FONE.AsString),          //Telefone
                                          '');                                       //IE do Destinatário
           Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
           if TempInt = 0 then
            begin

               { itens }
               cdsItens.Close;
               cdsItens.Open;

               { para cada item/produto }
               while not cdsItens.Eof do
                begin

                   { item do cupom/nota }
                   TempInt := Registro30_CAT10207(
                                                 cdsItensBARRA.AsString,                //Código do produto ou serviço
                                                 limpa(cdsItensDESCRICAO2.AsString),           //Descrição do produto ou serviço
                                                 '85252022', {'22060090',}              //Código NCM
                                                 cdsItensUNIDADE.AsString,              //Unidade Comercial
                                                 cdsItensQUANTIDADE.AsString,           //Quantidade Comercial
                                                 cdsItensVALOR_ITEM.AsString,           //Valor Unitário de comercialização
                                                 cdsItensVALOR_PAGO.AsString,           //Valor Total Bruto dos Produtos ou Serviços
                                                 '010'{cdsItensSITTRIBU.AsString},      //Código da Situação Tributária
                                                 '0,00'{cdsItensICMS_VENDA.AsString},           //Alíquota do imposto ICMS
                                                 cdsItensIPI.AsString,                  //Alíquota do IPI
                                                 cdsItensVALOR_IPI.AsString);           //Valor do IPI
                  Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro

                  cdsItens.Next;

                end; { para cada item }

               { itens }
               cdsServ.Close;
               cdsServ.Open;

               { para cada item/produto }
               while not cdsServ.Eof do
                begin

                   { item do cupom/nota }
                   TempInt := Registro30_CAT10207(
                                                 cdsServBARRA.AsString,                //Código do produto ou serviço
                                                 limpa(cdsServDESCRICAO2.AsString),           //Descrição do produto ou serviço
                                                 '', {'22060090',}              //Código NCM
                                                 'SE',              //Unidade Comercial
                                                 cdsServQUANTIDADE.AsString,           //Quantidade Comercial
                                                 cdsServVALOR_ITEM.AsString,           //Valor Unitário de comercialização
                                                 cdsServVALOR_PAGO.AsString,           //Valor Total Bruto dos Produtos ou Serviços
                                                 '090'{limpa(cdsItensSITTRIBU.AsString)},      //Código da Situação Tributária
                                                 '0,00'{cdsItensICMS_VENDA.AsString},           //Alíquota do imposto ICMS
                                                 '0,00',                  //Alíquota do IPI
                                                 '0,00');           //Valor do IPI
                  Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro

                  cdsServ.Next;

                end; { para cada item }

               { rodapé da venda }
               TempInt := Registro40_CAT10207(
                                              cdsVendaNOTA_BASEICMS.AsString,        //Base de Cálculo do ICMS
                                              '0,00',           //Valor Total do ICMS
                                              cdsVendaNOTA_BASEICMSSUBST.AsString,   //Base de Cálculo do ICMS ST
                                              cdsVendaNOTA_VALORICMSSUBST.AsString,  //Valor Total do ICMS ST
                                              cdsVendaVALOR_TOTAL.AsString,          //Valor Total dos produtos e serviços
                                              cdsVendaNOTA_VALOR_FRETE.AsString,     //Valor Total do Frete
                                              cdsVendaNOTA_VALOR_SEGURO.AsString,    //Valor Total do Seguro
                                              '0,00',                                //Valor Total do Desconto
                                              cdsVendaVALOR_IPI.AsString,            //Valor Total do IPI
                                              cdsVendaNOTA_VALOR_OUTROS.AsString,    //Outras Despesas acessórias
                                              cdsVendaNOTA_VALOR_TOTAL.AsString,     //Valor Total da NF
                                              cdsVendaVALOR_SERVICOS.AsString,       //Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
                                              cdsVendaISSALIQ.AsString,              //Alíquota do ISS
                                              cdsVendaVALOR_ISS.AsString);           //Valor Total do ISS
               Trata_NFPaulista_Int(sender, TempInt);                                //Trata Retorno da Função do Registro


               { transportador }
               TempInt := Registro50_CAT10207(
                                              '0'{cdsVendaNOTA_FRETE.AsString},         //Modalidade do frete
                                              limpa(cdsVendaTRA_CPFCGC.AsString),  //CNPJ ou CPF
                                              cdsVendaTRA_NOME.AsString,           //Razão Social ou nome
                                              cdsVendaTRA_RGIE.AsString,           //Inscrição Estadual
                                              cdsVendaTRA_LOGRADOURO.AsString,     //Endereço Completo
                                              cdsVendaTRA_CIDADE.AsString,         //Nome do município
                                              cdsVendaTRA_ESTADO.AsString,         //Sigla da UF
                                              cdsVendaNOTA_PLACAVEICULO.AsString,  //Placa do Veículo
                                              cdsVendaNOTA_UFVEICULO.AsString,     //Sigla da UF da Placa
                                              cdsVendaNOTA_QUANTIDADE.AsString,    //Quantidade de volumes transportados
                                              cdsVendaNOTA_ESPECIE.AsString,       //Espécie dos volumes transportados
                                              cdsVendaNOTA_MARCA.AsString,         //Marca dos volumes transportados
                                              cdsVendaNOTA_VOLNUM.AsString,        //Numeração dos volumes transportados
                                              cdsVendaNOTA_PESOLIQUIDO.AsString,   //Peso Líquido (em kg)
                                              cdsVendaNOTA_PESOBRUTO.AsString);    //Peso Bruto (em kg)
               Trata_NFPaulista_Int(sender, TempInt);                     //Trata Retorno da Função do Registro

               { observações }
               TempInt := Registro60_CAT10207('',                                          //Dados da Fatura
                                     '',             //Informações Adicionais de Interesse do Fisco
                                     ''); //Informações Complementares de interesse do Contribuinte
               Trata_NFPaulista_Int(sender, TempInt);

            end;

         end; { tem CPF/CNPJ }

        cdsMovimentos.Next;

      end; { para cada venda }

     //--- Registro90 - ENCERRAMENTO DO ARQUIVO DIGITAL ---
     TempInt := Registro90_CAT10207;
     Trata_NFPaulista_Int(sender, TempInt);
     Finaliza_NF_Paulista;
     ShowMessage('Verifique os arquivos de saída em ' + edit1.text);

   end else ShowMessage('Nenhum documento encontrado no período.');


end;

procedure TForm1.FormShow(Sender: TObject);
begin
 edit1.Text := ExtractFileDrive(application.ExeName) + '\';
 edit2.Text := extractfiledir(application.ExeName);
 cdsEmpresas.Open;
end;

procedure TForm1.Sequencia10_20_30_40_50_60_90Click(Sender: TObject);
begin
 Reg10Btn.Click;  //Registro10_CAT10207
 Reg20Btn.Click;  //Registro20_CAT10207
 Reg30Btn.Click;  //Registro30_CAT10207
 Reg40Btn.Click;  //Registro40_CAT10207
 Reg60Btn.Click;  //Registro60_CAT10207
 Reg90Btn.Click;  //Registro90_CAT10207
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := CAFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SQLConnection.Params.Values['DataBase'] := ParamStr(1);
end;

procedure TForm1.SairBtnClick(Sender: TObject);
begin
 Self.Close;
end;

procedure TForm1.Reg10_CAT9807Click(Sender: TObject);
begin
 if Inicia_NF_Paulista(edit1.text, edit2.text) = -1 then
  application.MessageBox('Erro durante chamada da função Inicia_NFPaulista.',
                         'Atenção', mb_iconerror);

// ABERTURA DO ARQUIVO DIGITAL E IDENTIFICADOR DO ESTABELECIMENTO EMITENTE.

 //A estrutura do registro 10 é a mesma para os CAT102/07 e CAT98/07
 TempInt := Registro10_CAT10207('1,00',                           //Versão Layout
                                CNPJ,                             //CNPJ do emitente
                                '10/10/2007',                     //Data de início do período transferido no arquivo
                                '17/10/2007');                    //Data de fim do período transferido no arquivo


 Trata_NFPaulista_Int(sender, TempInt);                  //Trata Retorno da Função do Registro

 //Se funções do CAT98/07 utilizadas serão, então só pode usar o outro CAT após chamar a função de finaliza
 if TempInt = 0 then    //Retorno OK
  begin
   Reg10Btn.Enabled := false;
   Reg20Btn.Enabled := false;
   Reg30Btn.Enabled := false;
   Reg40Btn.Enabled := false;
   Reg50Btn.Enabled := false;
   Reg60Btn.Enabled := false;
   Reg90Btn.Enabled := false;
  end;
end;

procedure TForm1.Reg20_CAT9807Click(Sender: TObject);
var
 TempInt: integer;
begin
 TempInt := Registro20_CAT9807('1',                                   //Série da NFVC
                               '123456',                              //Subsérie da NFVC
                               '123456789',                           //Número da NFVC
                               '10/10/1984',                          //Data de emissão
                               '17/10/1984',                          //Data da saída
                               CNPJ,                                  //CPF ou CNPJ do Destinatário
                               'TKS Software',                        //Nome do destinatário
                               'Rua Padre Casemiro Quiroga',          //Logradouro
                               '123',                                 //Número
                               'Centro Comercial do Imbui - Loja D',  //Complemento
                               'Imbui',                               //Bairro/Distrito
                               'Salvador',                            //Município
                               'BA',                                  //UF
                               '41720050',                            //CEP
                               '33711818',                            //Telefone
                               '15,00',                               //Valor total dos produtos
                               '0,00',                                //Valor total do desconto
                               '0,00',                                //Valor total do frete
                               '0,00',                                //Valor total do seguro
                               '0,00',                                //Outras despesas acessórias
                               'Texto Livre',                         //Descrição das outras despesas acessórias
                               '15,00',                               //Valor Total da NFVC - Deve corresponder ao resultado do cálculo: valores totais dos produtos + frete + seguro + outras despesas acessórias - descontos.
                               'Texto Livre',                         //Informações complementares do interesse do contribuinte
                               'Texto Livre',                         //Informações complementares de interesse do fisco
                               '2',                                   //Realiza entrega em domicílio
                               '',                                    //Logradouro do local de entrega
                               '',                                    //Número do local de entrega
                               '',                                    //Complemento do local de entrega
                               '',                                    //Bairro/Distrito do local de entrega
                               '',                                    //Município do local de entrega
                               '',                                    //UF do local de entrega
                               '2',                                   //Realiza venda a prazo
                               '15,00',                               //Preço à vista
                               '15,00',                               //Preço final
                               '0');                                  //Quantidade de parcelas nas vendas a prazo

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg21_CAT9807Click(Sender: TObject);
var
 TempInt: integer;
begin
 TempInt := Registro21_CAT9807('1',                                   //Número do Item
                               '123456',                              //Código do produto
                               '1',                                   //Tipo de receita
                               'Descricao da mercadoria',             //Descrição da mercadoria
                               'Kg',                                  //Unidade de comercialização
                               '1,00',                                //Quantidade
                               '1,00',                                //Valor Unitário
                               '1,00');                               //Valor Total

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg22_CAT9807Click(Sender: TObject);
var
 TempInt: integer;
begin
 TempInt := Registro22_CAT9807('1,00',                                //Valor da parcela
                               '12/02/2008');                         //Data de vencimento da parcela

 Trata_NFPaulista_Int(sender, TempInt);            //Trata Retorno da Função do Registro
end;

procedure TForm1.Reg90_CAT9807Click(Sender: TObject);
var
 TempInt: Integer;
begin
 //--- Registro90 - ENCERRAMENTO DO ARQUIVO DIGITAL ---
 TempInt := Registro90_CAT9807;

 Trata_NFPaulista_Int(sender, TempInt);

 Finaliza_NF_Paulista; 

 Reg10Btn.Enabled := true;
 Reg20Btn.Enabled := true;
 Reg30Btn.Enabled := true;
 Reg40Btn.Enabled := true;
 Reg50Btn.Enabled := true;
 Reg60Btn.Enabled := true;
 Reg90Btn.Enabled := true;
end;

end.
