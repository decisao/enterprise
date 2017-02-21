unit ecf;

{#############################################################################}
{##                                                                         ##}
{##  ROTINAS DE EMISSOR DE CUPOM FISCAL - ECF                               ##}
{##  SUPORTA TAMBEM CUPOM NAO FISCAL E COMPROVANTE DE RECEBIMENTO           ##}
{##  SUPORTA IMPRESSORA DE DEBUG                                            ##}
{##                                                                         ##}
{##  Elieser Morais, Dezembro DE 2003                                       ##}
{##                                                                         ##}
{#############################################################################}

{#############################################################################}
{##                                                                         ##}
{##  EXISTEM 04 CLASSES DECLARADAS:                                         ##}
{##                                                                         ##}
{##     -> TECF           Classe base e nula, não imprime nem gera msg      ##}
{##     -> TDarumaECF     Classe do cupom para Daruma FS345                 ##}
{##     -> TBematechECF   Classe do cupom para Bematech MP20                ##}
{##     -> TCupomECF      Classe do cupom sem valor fiscal em imp. normal   ##}
{##     -> TDebugECF      Classe de depuração, não imprime mas gera msg     ##}
{##                                                                         ##}
{##                                                                         ##}
{##  Para utilizar na aplicação:                                            ##}
{##                                                                         ##}
{##                                                                         ##}
{##     01. Declare no uses a unidade ECF, por exemplo:                     ##}
{##                                                                         ##}
{##            uses ECF;                                                    ##}
{##                                                                         ##}
{##                                                                         ##}
{##     02. Declare uma variavel do tipo TECF, por exemplo:                 ##}
{##                                                                         ##}
{##            CupomFiscal: TECF;                                           ##}
{##                                                                         ##}
{##                                                                         ##}
{##     03. Decida que classe usar, criando seu objecto de acordo com       ##}
{##         a classe que voce deseja:                                       ##}
{##                                                                         ##}
{##         Para Daruma FS345, segue exemplo:                               ##}
{##                                                                         ##}
{##            CupomFiscal := TDarumaECF.Create;                            ##}
{##                                                                         ##}
{##         Para somente debugar, segue exemplo:                            ##}
{##                                                                         ##}
{##            CupomFiscal := TDebugECF.Create;                             ##}
{##                                                                         ##}
{##                                                                         ##}
{##     04. Faça a chamada das rotinas assim:                               ##}
{##                                                                         ##}
{##            CupomFiscal.Inicializar;                                     ##}
{##                                                                         ##}
{##                                                                         ##}
{##     05. Para finalizar, destrua a classe:                               ##}
{##                                                                         ##}
{##            CupomFiscal.Free;                                            ##}
{##                                                                         ##}
{##                                                                         ##}
{#############################################################################}

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, Forms;

type

  TAliq = array[1..10] of
    record
      icms: extended;
      indice: string;
    end;

{#############################################################################}
{##                                                                         ##}
{##  CLASSE BASE INDEPENDENTE DA IMPRESSORA                                 ##}
{##                                                                         ##}
{#############################################################################}

  TECF = class(TObject)
  public

    { inicializa a impressora }
    procedure Inicializar; virtual;

    { dados da empresa }
    procedure DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer); virtual;

    { lê o número de série da impressora }
    procedure NumeroSerie(var retorno: string); virtual;

    { lê o número de série da impressora }
    procedure NumeroCupom(var retorno: string); virtual;

    { lê o status da impressora }
    procedure LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
      var GT: extended); virtual;

    { executa uma Leitura X }
    procedure LeituraX; virtual;

    { executa uma Reducao Z }
    procedure ReducaoZ; virtual;

    { abre e inicia um novo cupom fiscal }
    procedure AbrirCupomFiscal(var numero: longint; cpf: string); virtual;

    { lança um item no cupom fiscal }
    procedure LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
        Unidade, Descricao, Desc2: string; Indice: extended); virtual;

    { cancela um item }
    procedure CancelarItem(item: integer); virtual;

    { cancela um item }
    procedure CancelarCupom; virtual;

    { totalizacao do cupom }
    procedure TotalizaCupomFiscal(Desconto, Acrescimo: extended); virtual;

    { forma de pagamento }
    procedure FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
      NomeForma: string; DataVencimento: TDateTime; Valor: extended); virtual;

    { fechamento do cupom fiscal }
    procedure Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string); virtual;

    { cupom nao fiscal de entrada }
    procedure CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
      DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
      ValorPago: extended; Descricao, Indice: string); virtual;

    { cupom nao fiscal de saida }
    procedure CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended); virtual;

    { abertura da gaveta }
    procedure AbreGaveta; virtual;

    { resultado das operacoes }
    function Resultado: integer;

    { resultado das operacoes }
    procedure SalvaErro(erronum: integer); virtual;

    { leitura da descrição 2 }
    function LerDesc2: string;

    { recibo }
    procedure Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
      valorfmt, movimentos, usuario: string); virtual;

  private

    { private declarations }
    erro: integer;

    aliquotas: TAliq;
    desc_n2: string;

    enome,
    ecnpj,
    efone,
    ehistorico,
    eimpressora: string;

    ecopias: integer;

    linha: integer;
    total: extended;

  end;

{#############################################################################}
{##                                                                         ##}
{##  DARUMA                                                                 ##}
{##                                                                         ##}
{#############################################################################}

  TDarumaECF = class(TECF)
  public

    { inicializa a impressora }
    procedure Inicializar; override;

    { dados da empresa }
    procedure DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer); override;

    { lê o número de série da impressora }
    procedure NumeroSerie(var retorno: string); override;

    { lê o número do cupom da impressora }
    procedure NumeroCupom(var retorno: string); override;

    { lê o status da impressora }
    procedure LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
      var GT: extended); override;

    { executa uma Leitura X }
    procedure LeituraX; override;

    { executa uma Reducao Z }
    procedure ReducaoZ; override;

    { abre e inicia um novo cupom fiscal }
    procedure AbrirCupomFiscal(var numero: longint; cpf: string); override;

    { lança um item no cupom fiscal }
    procedure LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
        Unidade, Descricao, Desc2: string; Indice: extended); override;

    { cancela um item }
    procedure CancelarItem(item: integer); override;

    { cancela um cupom inteiro }
    procedure CancelarCupom; override;

    { totalizacao do cupom }
    procedure TotalizaCupomFiscal(Desconto, Acrescimo: extended); override;

    { forma de pagamento }
    procedure FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
      NomeForma: string; DataVencimento: TDateTime; Valor: extended); override;

    { fechamento do cupom fiscal }
    procedure Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string); override;

    { cupom nao fiscal de entrada }
    procedure CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
      DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
      ValorPago: extended; Descricao, Indice: string); override;

    { cupom nao fiscal de saida }
    procedure CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended); override;

    { abertura da gaveta }
    procedure AbreGaveta; override;

    { resultado das operacoes }
    procedure SalvaErro(erronum: integer); override;

    { recibo }
    procedure Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
      valorfmt, movimentos, usuario: string); override;

  private
    { private declarations }
    Daruma_iACK: Integer;
    Daruma_iST1: Integer;
    Daruma_iST2:Integer;
    Str_ErroExtendido   : String;
    Int_RetornoMetodo: integer;
    Int_ErroExtendido:integer;
  end;

{#############################################################################}
{##                                                                         ##}
{##  BEMATECH                                                               ##}
{##                                                                         ##}
{#############################################################################}

  TBematechECF = class(TECF)
  public

    { inicializa a impressora }
    procedure Inicializar; override;

    { dados da empresa }
    procedure DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer); override;

    { lê o número de série da impressora }
    procedure NumeroSerie(var retorno: string); override;

    { lê o número do cupom da impressora }
    procedure NumeroCupom(var retorno: string); override;

    { lê o status da impressora }
    procedure LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
      var GT: extended); override;

    { executa uma Leitura X }
    procedure LeituraX; override;

    { executa uma Reducao Z }
    procedure ReducaoZ; override;

    { abre e inicia um novo cupom fiscal }
    procedure AbrirCupomFiscal(var numero: longint; cpf: string); override;

    { lança um item no cupom fiscal }
    procedure LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
        Unidade, Descricao, Desc2: string; Indice: extended); override;

    { cancela um item }
    procedure CancelarItem(item: integer); override;

    { cancela um cupom inteiro }
    procedure CancelarCupom; override;

    { totalizacao do cupom }
    procedure TotalizaCupomFiscal(Desconto, Acrescimo: extended); override;

    { forma de pagamento }
    procedure FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
      NomeForma: string; DataVencimento: TDateTime; Valor: extended); override;

    { fechamento do cupom fiscal }
    procedure Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string); override;

    { cupom nao fiscal de entrada }
    procedure CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
      DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
      ValorPago: extended; Descricao, Indice: string); override;

    { cupom nao fiscal de saida }
    procedure CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended); override;

    { abertura da gaveta }
    procedure AbreGaveta; override;

    { resultado das operacoes }
    procedure SalvaErro(erronum: integer); override;

    { recibo }
    procedure Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
      valorfmt, movimentos, usuario: string); override;

  private
    { private declarations }
  end;

{#############################################################################}
{##                                                                         ##}
{##  CUPOM SEM VALOR FISCAL                                                 ##}
{##                                                                         ##}
{#############################################################################}

  TCupomECF = class(TECF)
  public

    { inicializa a impressora }
    procedure Inicializar; override;

    { dados da empresa }
    procedure DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer); override;

    { lê o número de série da impressora }
    procedure NumeroSerie(var retorno: string); override;

    { lê o número do cupom da impressora }
    procedure NumeroCupom(var retorno: string); override;

    { lê o status da impressora }
    procedure LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
      var GT: extended); override;

    { executa uma Leitura X }
    procedure LeituraX; override;

    { executa uma Reducao Z }
    procedure ReducaoZ; override;

    { abre e inicia um novo cupom fiscal }
    procedure AbrirCupomFiscal(var numero: longint; cpf: string); override;

    { lança um item no cupom fiscal }
    procedure LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
        Unidade, Descricao, Desc2: string; Indice: extended); override;

    { cancela um item }
    procedure CancelarItem(item: integer); override;

    { cancela um cupom inteiro }
    procedure CancelarCupom; override;

    { totalizacao do cupom }
    procedure TotalizaCupomFiscal(Desconto, Acrescimo: extended); override;

    { forma de pagamento }
    procedure FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
      NomeForma: string; DataVencimento: TDateTime; Valor: extended); override;

    { fechamento do cupom fiscal }
    procedure Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string); override;

    { cupom nao fiscal de entrada }
    procedure CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
      DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
      ValorPago: extended; Descricao, Indice: string); override;

    { cupom nao fiscal de saida }
    procedure CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended); override;

    { abertura da gaveta }
    procedure AbreGaveta; override;

    { recibo }
    procedure Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
      valorfmt, movimentos, usuario: string); override;

  private
    { private declarations }
  end;

{#############################################################################}
{##                                                                         ##}
{##  DEBUG                                                                  ##}
{##                                                                         ##}
{#############################################################################}

  TDebugECF = class(TECF)
  public

    { inicializa a impressora }
    procedure Inicializar; override;

    { dados da empresa }
    procedure DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer); override;

    { lê o número de série da impressora }
    procedure NumeroSerie(var retorno: string); override;

    { lê o número do cupom da impressora }
    procedure NumeroCupom(var retorno: string); override;

    { lê o status da impressora }
    procedure LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
      var GT: extended); override;

    { executa uma Leitura X }
    procedure LeituraX; override;

    { executa uma Reducao Z }
    procedure ReducaoZ; override;

    { abre e inicia um novo cupom fiscal }
    procedure AbrirCupomFiscal(var numero: longint; cpf: string); override;

    { lança um item no cupom fiscal }
    procedure LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
        Unidade, Descricao, Desc2: string; Indice: extended); override;

    { cancela um item }
    procedure CancelarItem(item: integer); override;

    { cancela um cupom inteiro }
    procedure CancelarCupom; override;

    { totalizacao do cupom }
    procedure TotalizaCupomFiscal(Desconto, Acrescimo: extended); override;

    { forma de pagamento }
    procedure FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
      NomeForma: string; DataVencimento: TDateTime; Valor: extended); override;

    { fechamento do cupom fiscal }
    procedure Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string); override;

    { cupom nao fiscal de entrada }
    procedure CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
      DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
      ValorPago: extended; Descricao, Indice: string); override;

    { cupom nao fiscal de saida }
    procedure CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended); override;

    { abertura da gaveta }
    procedure AbreGaveta; override;

    { recibo }
    procedure Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
      valorfmt, movimentos, usuario: string); override;

  private
    { private declarations }
  end;

implementation

uses
  bematech_mp20, daruma_fs345, DOSPrint, principal;

var
  iRetorno: integer;

{#############################################################################}
{##                                                                         ##}
{##  CLASSE BASE INDEPENDENTE DA IMPRESSORA                                 ##}
{##                                                                         ##}
{#############################################################################}

  { função de normalização de aliquota }
  function AliqToStr(f: extended): string;
  var
    s: string;
  begin
    s := Format('%f',  [f]);
    if pos('.', s) > 0 then
      s[pos('.', s)] := ',';
    Result := s;
  end;

  { função de normalização de aliquota }
  function StrToAliq(s: string): extended;
  var
    f: extended;
  begin
    try
      f := StrToFloat(s);
    except
      if pos(',', s) > 0 then
        try
          s[pos(',', s)] := '.';
          f := StrToFloat(s);
        except
          f := 0;
        end
      else
        try
          s[pos('.', s)] := ',';
          f := StrToFloat(s);
        except
          f := 0;
        end;
    end;
    Result := f;
  end;


  { inicializa a impressoras }
  procedure TECF.Inicializar;
  var
    i: integer;
  begin
    erro := 0;

    for i := 1 to 10 do
     begin
       aliquotas[i].icms   := 0;
       aliquotas[i].indice := '';
     end;
    desc_n2 := '';

    enome := '*** CUPOM NÃO FISCAL ***';
    ecnpj := '';
    efone := '';
    ehistorico := '';
  end;

  { dados da empresa }
  procedure TECF.DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer);
  begin
    enome := nome;
    ecnpj := cnpj;
    efone := fone;
    ehistorico := historico;
    eimpressora := impressora;
    ecopias := copias;
  end;

  { lê o número de série da impressora }
  procedure TECF.NumeroSerie(var retorno: string);
  begin
    retorno := 'NULO';
  end;

  { lê o número do cupom da impressora }
  procedure TECF.NumeroCupom(var retorno: string);
  begin
    retorno := '0';
  end;

  { lê o status da impressora }
  procedure TECF.LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
    var GT: extended);
  begin
    Cupom        := 0;
    Cancelamento := 0;
    ReducaoZ     := 0;
    GT           := 0;
  end;

  { executa uma Leitura X }
  procedure TECF.LeituraX;
  begin

  end;

  { executa uma Reducao Z }
  procedure TECF.ReducaoZ;
  begin

  end;

  { abre e inicia um novo cupom fiscal }
  procedure TECF.AbrirCupomFiscal(var numero: longint; cpf: string);
  begin
    numero := -1;
  end;

  { lança um item no cupom fiscal }
  procedure TECF.LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
    Unidade, Descricao, Desc2: string; Indice: extended);
  begin
    Desc2 := trim(Desc2);
    if (Desc2 > '') and (Desc2 <> 'N/F') then
      Desc_n2 := Desc_n2 + Desc2;
  end;

  { cancela um item }
  procedure TECF.CancelarItem(item: integer);
  begin

  end;

  { cancela um cupom inteiro }
  procedure TECF.CancelarCupom;
  begin

  end;

  { totalizacao do cupom }
  procedure TECF.TotalizaCupomFiscal(Desconto, Acrescimo: extended);
  begin

  end;

  { forma de pagamento }
  procedure TECF.FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
    NomeForma: string; DataVencimento: TDateTime; Valor: extended);
  begin

  end;

  { fechamento do cupom fiscal }
  procedure TECF.Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string);
  begin

  end;

  { cupom nao fiscal de entrada }
  procedure TECF.CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
    DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
    ValorPago: extended; Descricao, Indice: string);
  begin

  end;

  { cupom nao fiscal de saida }
  procedure TECF.CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended);
  begin

  end;

  { abertura da gaveta }
  procedure TECF.AbreGaveta;
  begin

  end;

  { resultado das operacoes }
  function TECF.Resultado: integer;
  begin
    Result := erro;
    erro   := 0;
  end;

  { resultado das operacoes }
  procedure TECF.SalvaErro(erronum: integer);
  begin
    erro := erronum;
  end;

  { resultado das operacoes }
  function TECF.LerDesc2: string;
  begin
    result := desc_n2;
  end;

  { recibo }
  procedure TECF.Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
    valorfmt, movimentos, usuario: string);
  begin

  end;

{#############################################################################}
{##                                                                         ##}
{##  DARUMA                                                                 ##}
{##                                                                         ##}
{#############################################################################}

  { inicializa a impressoras }
  procedure TDarumaECF.Inicializar;
  begin
    inherited;
    //iRetorno:= Daruma_FI_AbrePortaSerial();
    //SalvaErro(iRetorno);
  end;

  { dados da empresa }
  procedure TDarumaECF.DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer);
  begin
    enome := nome;
    ecnpj := cnpj;
    efone := fone;
    ehistorico := historico;
    eimpressora := impressora;
    ecopias := copias;
  end;

  { lê o número de série da impressora }
  procedure TDarumaECF.NumeroSerie(var retorno: string);
  var
    NumSerie: string;
  begin
    inherited;
    setlength(NumSerie, 15);
    iRetorno := Daruma_FI_NumeroSerie( NumSerie );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      retorno := trim(NumSerie);
  end;

  { lê o número do cupom da impressora }
  procedure TDarumaECF.NumeroCupom(var retorno: string);
  begin
    inherited;
  end;

  { lê o status da impressora }
  procedure TDarumaECF.LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
    var GT: extended);
  var
    NumeroCupom,
    NumeroCupomCancelado,
    NumeroReducoes,
    GrandeTotal: string;
  begin
    inherited;

    { Numero do Cupom }
    setlength(NumeroCupom, 6);
    iRetorno := Daruma_FI_NumeroCupom( NumeroCupom );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      Cupom := StrToInt(NumeroCupom);

    { Cupons Cancelados }
    setlength(NumeroCupomCancelado, 4);
    iRetorno := Daruma_FI_NumeroCuponsCancelados( NumeroCupomCancelado );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      Cancelamento := StrToInt(NumeroCupomCancelado);

    { Numero de Reduções }
    setlength(NumeroReducoes, 4);
    iRetorno := Daruma_FI_NumeroReducoes( NumeroReducoes );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      ReducaoZ := StrToInt(NumeroReducoes);

    { Grande Total }
    setlength(GrandeTotal, 18);
    iRetorno := Daruma_FI_GrandeTotal( GrandeTotal );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      GT := StrToFloat(GrandeTotal) / 100;

  end;

  { executa uma Leitura X }
  procedure TDarumaECF.LeituraX;
  begin
    iRetorno := Daruma_FI_LeituraX();
    SalvaErro(iRetorno);
  end;

  { executa uma Reducao Z }
  procedure TDarumaECF.ReducaoZ;
  begin
    iRetorno := Daruma_FI_ReducaoZ('', '');
    SalvaErro(iRetorno);
  end;

  { abre e inicia um novo cupom fiscal }
  procedure TDarumaECF.AbrirCupomFiscal(var numero: longint; cpf: string);
  var
    NumeroCupom: string;
  begin
    inherited;
    iRetorno := Daruma_FI_AbreCupom( pchar( cpf ) );
    SalvaErro(iRetorno);
    { Numero do Cupom }
    setlength(NumeroCupom, 6);
    iRetorno := Daruma_FI_NumeroCupom( NumeroCupom );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      numero := StrToInt(NumeroCupom);
  end;

  { lança um item no cupom fiscal }
  procedure TDarumaECF.LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
    Unidade, Descricao, Desc2: string; Indice: extended);
  begin
    Desc2 := trim(Desc2);
//    if (Desc2 > '') and (Desc2 <> 'N/F') then
//      Desc_n2 := Desc_n2 + Desc2;
    descricao := trim(descricao) + ' ' + Desc2;

    iRetorno := Daruma_FI_VendeItem(
                  codbarra,
                  descricao,
                  'Ta',                // aliquota
                  'I',                 // tipo de qtde
                  FloatToStrF(quantidade, ffFixed, 18, 0),
                  2,
                  FloatToStrF(valoritem, ffFixed, 18, 2),
                  '$',
                  FloatToStrF(Desconto, ffFixed, 18, 2)
                );
    SalvaErro(iRetorno);
  end;

  { cancela um item }
  procedure TDarumaECF.CancelarItem(item: integer);
  begin
    iRetorno := Daruma_FI_CancelaItemGenerico(pchar(IntToStr(item)));
    SalvaErro(iRetorno);
  end;

  { cancela um cupom inteiro }
  procedure TDarumaECF.CancelarCupom;
  begin
    iRetorno := Daruma_FI_CancelaCupom;
    SalvaErro(iRetorno);
  end;

  { totalizacao do cupom }
  procedure TDarumaECF.TotalizaCupomFiscal(Desconto, Acrescimo: extended);
  var
    sAcreDesc,
    sValor: string;
  begin
    sAcreDesc := '';
    if Desconto > 0 then
     begin
       sAcreDesc := 'D';
       sValor    := FloatToStrF(Desconto, ffFixed, 18, 2);
     end else
    if Acrescimo > 0 then
     begin
       sAcreDesc := 'A';
       sValor    := FloatToStrF(Desconto, ffFixed, 18, 2);
     end;

    if sAcreDesc = '' then
     begin
       sAcreDesc := 'D';
       sValor    := FloatToStrF(0, ffFixed, 18, 2);
     end;

    iRetorno := Daruma_FI_IniciaFechamentoCupom(
      sAcreDesc,
      '$',
      sValor);
    SalvaErro(iRetorno);
  end;

  { forma de pagamento }
  procedure TDarumaECF.FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
    NomeForma: string; DataVencimento: TDateTime; Valor: extended);
  var
    sTexto,
    sTexto2,
    sValor: string;
  begin
    sTexto  := trim(NomeForma);
    sTexto2 := Format('%.6d/%.2d - %s',
                 [CodDocumento,
                  Parcela,
                  FormatDateTime('DD/MM/YY', DataVencimento)]);
    sValor := FloatToStrF(valor, ffCurrency, 18, 2);
    iRetorno := Daruma_FI_EfetuaFormaPagamentoDescricaoForma(
       pchar(sTexto),
       pchar(sValor),
       pchar(STexto2));
    SalvaErro(iRetorno);
  end;

  { fechamento do cupom fiscal }
  procedure TDarumaECF.Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string);
  begin
    iRetorno := Daruma_FI_TerminaFechamentoCupom(PChar(
        Msg1 + #13#10 +
        Msg2 + #13#10 +
        Msg3 + #13#10 +
        Msg4 + #13#10 +
        Msg5));
    SalvaErro(iRetorno);
  end;

  { cupom nao fiscal de entrada }
  procedure TDarumaECF.CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
    DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
    ValorPago: extended; Descricao, Indice: string);
  begin

  end;

  { cupom nao fiscal de saida }
  procedure TDarumaECF.CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended);
  begin

  end;

  { abertura da gaveta }
  procedure TDarumaECF.AbreGaveta;
  var
    iEstado: integer;
  begin
    iEstado  := 0;
    iRetorno := Daruma_FI_VerificaEstadoGaveta(iEstado);
    iRetorno := Daruma_FI_AcionaGaveta();
    SalvaErro(iRetorno);
    iRetorno := Daruma_FI_VerificaImpressoraLigada();
  end;

  procedure TDarumaECF.SalvaErro(erronum: integer);

    {A Rotina Abaixo Analisa o Retorno da Funcao Chamada e nao do ECF}
    procedure Daruma_Analisa_Retorno();
    begin

       //Variaveis devem ser inicializadas
       Daruma_iACK := 0;
       Daruma_iST1 := 0;
       Daruma_iST2 := 0;
       //Int_Retorno := 0;
       Int_RetornoMetodo:=0;
       Int_ErroExtendido:=0;

       Int_RetornoMetodo := Daruma_FI_RetornoImpressora(Daruma_iACK, Daruma_iST1, Daruma_iST2);

       SetLength(Str_ErroExtendido,4);

//       Int_ErroExtendido := Daruma_FI_RetornaErroExtendido ( Str_ErroExtendido );

//       Application.MessageBox( Pchar('Retorno do metodo = ' + IntToStr(Int_Retorno) + #13 +
//                                     'ACK = ' + IntToStr(Daruma_iACK) + #13 +
//                                     'ST1 = ' + IntToStr(Daruma_iST1) + #13 +
//                                     'ST2 = ' + IntToStr(Daruma_iST2) + #13 +
//                                     'Erro extendido = ' + Str_ErroExtendido
//                                     ), 'Daruma Framework Retorno do Metodo', mb_ok);
    end;

  begin
    inherited;
    //Int_Retorno := erronum;
    //Daruma_Analisa_Retorno();
  end;

  { recibo }
  procedure TDarumaECF.Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
    valorfmt, movimentos, usuario: string);
  begin

  end;

{#############################################################################}
{##                                                                         ##}
{##  BEMATECH                                                               ##}
{##                                                                         ##}
{#############################################################################}

  { inicializa a impressoras }
  procedure TBematechECF.Inicializar;
  var
    iConta,
    j: integer;
    cAliquotas,
    temp: string;
  begin
    inherited;

    { leitura das aliquotas }
    for iConta := 1 to 79 do
      cAliquotas := cAliquotas + ' ';
    iRetorno := Bematech_FI_RetornoAliquotas( cAliquotas );
    SalvaErro(iRetorno);

    cAliquotas := trim(cAliquotas) + ',';

    { preenchimento do array }
    for j := 1 to (length(cAliquotas) div 5) do
     begin
       temp := copy(cAliquotas, ((j - 1) * 5) + 1, 4);
       temp := copy(temp, 1, 4);
       insert(',', temp, 3);
       aliquotas[j].icms := StrToAliq(temp);
       temp := IntToStr(j);
       while length(temp) < 2 do
         temp := '0' + temp;
       aliquotas[j].indice := temp;
     end;

  end;

  { dados da empresa }
  procedure TBematechECF.DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer);
  begin
    enome := nome;
    ecnpj := cnpj;
    efone := fone;
    ehistorico := historico;
    eimpressora := impressora;
    ecopias := copias;
  end;

  { lê o número de série da impressora }
  procedure TBematechECF.NumeroSerie(var retorno: string);
  var
    cNumeroSerie: string;
    iConta: integer;
  begin
    inherited;
    for iConta := 1 To 15 do
       cNumeroSerie := cNumeroSerie + ' ';
    iRetorno := Bematech_FI_NumeroSerie( cNumeroSerie );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      retorno := trim(cNumeroSerie);
  end;

  { lê o número de série da impressora }
  procedure TBematechECF.NumeroCupom(var retorno: string);
  var
    cNumeroCupom: String;
    iConta   : Integer;
  begin
    For iConta := 1 To 6 Do
      cNumeroCupom := cNumeroCupom + ' ';
    iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      retorno := trim(cNumeroCupom);
  end;

  { lê o status da impressora }
  procedure TBematechECF.LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
    var GT: extended);
  var
    iConta: integer;
    cGrandeTotal,
    cReducaoZ,
    cCancelamentos,
    cNumeroCupom: string;
  begin
    inherited;

    { GT }
    for iConta := 1 To 18 do
      cGrandeTotal := cGrandeTotal + ' ';
    iRetorno := Bematech_FI_GrandeTotal( cGrandeTotal );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      GT := StrToFloat(cGrandeTotal);

    { ReducaoZ }
    for iConta := 1 to 4 do
      cReducaoZ := cReducaoZ + ' ';
    iRetorno := Bematech_FI_NumeroReducoes( cReducaoZ );
    SalvaErro(iRetorno);
    if Resultado > 0  then
      ReducaoZ := StrToInt(cReducaoZ);

    { Cancelamento }
    for iConta := 1 To 14 do
      cCancelamentos := cCancelamentos + ' ';
    iRetorno := Bematech_FI_Cancelamentos( cCancelamentos );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      Cancelamento := StrToInt(cCancelamentos);

    { Cupom }
    for iConta := 1 To 6 do
      cNumeroCupom := cNumeroCupom + ' ';
    iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      Cupom := StrToInt(cNumeroCupom);
  end;

  { executa uma Leitura X }
  procedure TBematechECF.LeituraX;
  begin
    iRetorno := Bematech_FI_LeituraX();
    SalvaErro(iRetorno);
  end;

  { executa uma Reducao Z }
  procedure TBematechECF.ReducaoZ;
  begin
    iRetorno := Bematech_FI_ReducaoZ('', '');
    SalvaErro(iRetorno);
  end;

  { abre e inicia um novo cupom fiscal }
  procedure TBematechECF.AbrirCupomFiscal(var numero: longint; cpf: string);
  var
    iConta: integer;
    cNumeroCupom: string;
  begin
    inherited;
    iRetorno := Bematech_FI_AbreCupom( Pchar( cpf ) );
    SalvaErro(iRetorno);
    for iConta := 1 To 6 do
      cNumeroCupom := cNumeroCupom + ' ';
    iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom );
    SalvaErro(iRetorno);
    if Resultado > 0 then
      numero := StrToInt(cNumeroCupom);
  end;

  { lança um item no cupom fiscal }
  procedure TBematechECF.LancarItem(codbarra: string; ValorItem,
    Quantidade, Desconto: extended; Unidade, Descricao, Desc2: string;
    Indice: extended);
  var
    aliq: string;
    i: integer;
  begin
    Desc2 := trim(Desc2);
    if (Desc2 > '') and (Desc2 <> 'N/F') then
//      Desc_n2 := Desc_n2 + Desc2;
      descricao := trim(descricao) + ' ' + Desc2;

    aliq := '';

    if Indice = -1 then
     begin
       aliq := 'FF';
     end else
     begin
      for i := 1 to 10 do
        if AliqToStr(aliquotas[i].icms) = AliqToStr(Indice) then
          aliq := aliquotas[i].indice;
      if aliq = '' then
        aliq := 'II';
     end;

    if copy(codbarra, 1, 3) <> '111' then
     begin
       iRetorno := Bematech_FI_AumentaDescricaoItem(descricao);
       SalvaErro(iRetorno);

       if length(descricao) > 29 then
         descricao := copy(descricao, 1, 29);

       iRetorno := Bematech_FI_VendeItem(
                     codbarra,
                     descricao,
                     aliq,
                     'F',        // tipo qtde
                     FloatToStrF(quantidade, ffFixed, 16, 3),
                     2,                 // decimais
                     FloatToStrF(valoritem,  ffFixed, 16, 2),
                     '$',        // tipo desconto
                     FloatToStrF(desconto,   ffFixed, 16, 2)
                   );
       SalvaErro(iRetorno);
     end;
  end;

  { cancela um item }
  procedure TBematechECF.CancelarItem(item: integer);
  begin
    iRetorno := Bematech_FI_CancelaItemGenerico( PChar(IntToStr(item)) );
    SalvaErro(iRetorno);
  end;

  { cancela um cupom inteiro }
  procedure TBematechECF.CancelarCupom;
  begin
    iRetorno := Bematech_FI_CancelaCupom();
    SalvaErro(iRetorno);
  end;

  { totalizacao do cupom }
  procedure TBematechECF.TotalizaCupomFiscal(Desconto, Acrescimo: extended);
  var
    sAcreDesc,
    sValor: string;
  begin
    sAcreDesc := '';
    if Desconto > 0 then
     begin
       sAcreDesc := 'D';
       sValor    := FloatToStrF(Desconto,  ffFixed, 18, 2);
     end else
    if Acrescimo > 0 then
     begin
       sAcreDesc := 'A';
       sValor    := FloatToStrF(Acrescimo, ffFixed, 18, 2);
     end;

    if sAcreDesc = '' then
     begin
       sAcreDesc := 'D';
       sValor    := FloatToStrF(0, ffFixed, 18, 2);
     end;

    iRetorno := Bematech_FI_IniciaFechamentoCupom(
                       sAcreDesc,
                       '$',
                       sValor
                );
     SalvaErro(iRetorno);
  end;

  { forma de pagamento }
  procedure TBematechECF.FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
    NomeForma: string; DataVencimento: TDateTime; Valor: extended);
  var
    sTexto,
    sTexto2,
    sValor: string;
  begin
    sTexto  := Format('%s', [NomeForma]);
    sTexto2 := Format('%.6d/%.2d - %s',
                 [CodDocumento, Parcela,
                  FormatDateTime('DD/MM/YY', DataVencimento)]);
    sValor := FloatToStrF(valor, ffCurrency, 18, 2);
    iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma(sTexto, sValor, sTexto2);
    SalvaErro(iRetorno);
  end;

  { fechamento do cupom fiscal }
  procedure TBematechECF.Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string);
  begin
    if Desc_n2 > '' then
      Msg1 := Desc_n2 + #13#10 + Msg1;
    iRetorno := Bematech_FI_TerminaFechamentoCupom(
                   Msg1 + #13#10 +
                   Msg2 + #13#10 +
                   Msg3 + #13#10 +
                   Msg4 + #13#10 +
                   Msg5
                );
    SalvaErro(iRetorno);
  end;

  { cupom nao fiscal de entrada }
  procedure TBematechECF.CupomNaoFiscalNaoVinculadoEntrada(CodDocument,
    Parcela: integer; DataPagamento: TDateTime; Saldo, Acrescimo, Desconto,
    ValorBruto, ValorPago: extended; Descricao, Indice: string);
  begin
    inherited;
  end;

  { cupom nao fiscal de saida }
  procedure TBematechECF.CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended);
  begin
    inherited;
  end;

  { abertura da gaveta }
  procedure TBematechECF.AbreGaveta;
  begin

  end;

  procedure TBematechECF.SalvaErro(erronum: integer);
  begin
    inherited;

    if erro = 0 then
       Application.MessageBox( 'Erro de Comunicação !', 'Erro',
                                MB_IconError + MB_OK);

    If erro = -1 Then
       Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro',
                                MB_IconError + MB_OK);

    if erro = -2  then
       Application.MessageBox( 'Parâmetro Inválido !', 'Erro',
                                MB_IconError + MB_OK);

    if erro = -3  then
       Application.MessageBox( 'Alíquota não programada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    If erro = -4 Then
       Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);

    If erro = -5 Then
       Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK);

    If erro = -6 Then
       Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);

    If erro = -7 Then
       Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);

    If erro = -8 Then
       Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);

    if erro = -18 then
       Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -19 then
       Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -20 then
       Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -21 then
       Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -22 then
       Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -23 then
       Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -24 then
       Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -25 then
       Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -26 then
       Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if erro = -28 then
       Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK);
  end;

  { recibo }
  procedure TBematechECF.Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
    valorfmt, movimentos, usuario: string);
  begin

  end;

{#############################################################################}
{##                                                                         ##}
{##  CUPOM SEM VALOR FISCAL                                                 ##}
{##                                                                         ##}
{#############################################################################}

  { inicializa a impressoras }
  procedure TCupomECF.Inicializar;
  begin
    inherited;
    linha := 0;
    total := 0;
  end;

  { lê o número de série da impressora }
  procedure TCupomECF.NumeroSerie(var retorno: string);
  begin
    inherited;
    retorno := 'S/N';
  end;

  procedure TCupomECF.NumeroCupom(var retorno: string);
  begin
    inherited;
  end;

  { dados da empresa }
  procedure TCupomECF.DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer);
  begin
    enome := trim(nome);
    ecnpj := trim(cnpj);
    efone := trim(fone);
    ehistorico := trim(historico);
    eimpressora := trim(impressora);
    ecopias := copias;
    if ecopias = 0 then
      ecopias := 1;
  end;

  { lê o status da impressora }
  procedure TCupomECF.LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
    var GT: extended);
  begin
    inherited;
    Cupom := 0;
    Cancelamento := 0;
    ReducaoZ := 0;
    GT := 0;
  end;

  { executa uma Leitura X }
  procedure TCupomECF.LeituraX;
  begin

  end;

  { executa uma Reducao Z }
  procedure TCupomECF.ReducaoZ;
  begin

  end;

  { abre e inicia um novo cupom fiscal }
  procedure TCupomECF.AbrirCupomFiscal(var numero: longint; cpf: string);
  var
    i: integer;
  begin
    inherited;
    DOSPrintOpen(eimpressora, #27 + '@' + #27 + #67 + Chr(10), '4');
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha);
    i := (40  - length(enome)) div 2;
    DOSPrintAdd(i, linha, enome, '');
    inc(linha);
    if (ecnpj > '') or (efone > '') then
     begin
       i := (40 - length(ecnpj + ' ' + efone)) div 2;
       DOSPrintAdd(i, linha, ecnpj + ' ' + efone, '');
       inc(linha);
     end;
    i := (40  - length(ehistorico)) div 2;
    DOSPrintAdd(i, linha, ehistorico, '');
    inc(linha);
    i := (40  - length(FormatDateTime('DD/MM/YY HH:NN', now))) div 2;
    DOSPrintAdd(i, linha, FormatDateTime('DD/MM/YY HH:NN', now), '');
    inc(linha);
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha);
  end;

  { lança um item no cupom fiscal }
  procedure TCupomECF.LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
    Unidade, Descricao, Desc2: string; Indice: extended);
  var
    t: string;
    i: integer;
  begin
    Descricao := trim(Descricao);
    Desc2 := trim(Desc2);
    if (Desc2 > '') and (Desc2 <> 'N/F') then
      Descricao := Descricao + ' ' + Desc2;
    DOSPrintAdd(1, linha, codbarra, '');
    if length(descricao) > 26 then
     begin
       DOSPrintAdd(15, linha, copy(descricao, 1, 26), '');
       inc(linha);
       DOSPrintAdd(1, linha, copy(descricao, 27, length(descricao) - 26), '');
       inc(linha);
     end else
     begin
       DOSPrintAdd(15, linha, descricao, '');
       inc(linha);
     end;
    t := unidade + ' ' + FloatToStrF(quantidade, ffFixed, 18, 2) + '  x  ' +
      FloatToStrF(ValorItem, ffFixed, 18, 2) + '  =  ';
    DOSPrintAdd(1, linha, t, '');
    t := FloatToStrF(ValorItem * Quantidade, ffFixed, 18, 2);
    i := (40 - length(t));
    DOSPrintAdd(i, linha, t, '');
    inc(linha);
    total := total + (ValorItem * Quantidade);
  end;

  { cancela um item }
  procedure TCupomECF.CancelarItem(item: integer);
  begin

  end;

  { cancela um cupom inteiro }
  procedure TCupomECF.CancelarCupom;
  begin
    inc(linha, 2);
    DOSPrintAdd(1, linha, 'CUPOM CANCELADO!!!', '');
    inc(linha, 2);
  end;

  { totalizacao do cupom }
  procedure TCupomECF.TotalizaCupomFiscal(Desconto, Acrescimo: extended);
  var
    t: string;
    i: integer;
    d: extended;
  begin
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha);
    DOSPrintAdd(1, linha, 'SUBTOTAL', '');
    t := FloatToStrF(total, ffFixed, 18, 2);
    i := (40 - length(t));
    DOSPrintAdd(i, linha, t, '');
    inc(linha);
    if desconto > 0 then
     begin
       DOSPrintAdd(1, linha, 'DESCONTO DE ', '');
       d := (desconto * 100) / total;
       t := FloatToStrF(d, ffFixed, 18, 2) + '%';
       DOSPrintAdd(13, linha, t, '');
       t := FloatToStrF(desconto, ffFixed, 18, 2);
       i := (40 - length(t));
       DOSPrintAdd(i, linha, t, '');
       inc(linha);
     end;
    if acrescimo > 0 then
     begin
       DOSPrintAdd(1, linha, 'ACRESCIMOS ', '');
       t := FloatToStrF(acrescimo, ffFixed, 18, 2);
       i := (40 - length(t));
       DOSPrintAdd(i, linha, t, '');
       inc(linha);
     end;
    inc(linha);
    DOSPrintAdd(1, linha, 'T O T A L', '');
    t := FloatToStrF(total - desconto + acrescimo, ffFixed, 18, 2);
    i := (40 - length(t));
    DOSPrintAdd(i, linha, t, '');
    inc(linha);
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha);
    DOSPrintAdd(1, linha, 'PAGAMENTOS', '');
    inc(linha, 2);
  end;

  { forma de pagamento }
  procedure TCupomECF.FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
    NomeForma: string; DataVencimento: TDateTime; Valor: extended);
  var
    t: string;
    i: integer;
  begin
    DOSPrintAdd(1, linha, Format('%.2d', [parcela]), '');
    DOSPrintAdd(4, linha, FormatDateTime('DD/MM/YY', DataVencimento), '');
    DOSPrintAdd(14, linha, copy(NomeForma, 1, 15), '');
    t := FloatToStrF(valor, ffFixed, 18, 2);
    i := (40 - length(t));
    DOSPrintAdd(i, linha, t, '');
    inc(linha);
  end;

  { fechamento do cupom fiscal }
  procedure TCupomECF.Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string);
  var
    s: string;
  begin
    inc(linha);
    DOSPrintAdd(1, linha, '------------------------------------------', '');

    inc(linha);
    s := Msg1;
    while length(s) > 40 do
    begin
      DOSPrintAdd(1, linha, copy(s, 1, 40), '');
      s := copy(s, 41, length(s) - 40);
      inc(linha);
    end;
    DOSPrintAdd(1, linha, s, '');

    inc(linha);
    s := Msg2;
    while length(s) > 40 do
    begin
      DOSPrintAdd(1, linha, copy(s, 1, 40), '');
      s := copy(s, 41, length(s) - 40);
      inc(linha);
    end;
    DOSPrintAdd(1, linha, s, '');

    inc(linha);
    s := Msg3;
    while length(s) > 40 do
    begin
      DOSPrintAdd(1, linha, copy(s, 1, 40), '');
      s := copy(s, 41, length(s) - 40);
      inc(linha);
    end;
    DOSPrintAdd(1, linha, s, '');

    inc(linha);
    s := Msg4;
    while length(s) > 40 do
    begin
      DOSPrintAdd(1, linha, copy(s, 1, 40), '');
      s := copy(s, 41, length(s) - 40);
      inc(linha);
    end;
    DOSPrintAdd(1, linha, s, '');

    inc(linha);
    s := Msg5;
    while length(s) > 40 do
    begin
      DOSPrintAdd(1, linha, copy(s, 1, 40), '');
      s := copy(s, 41, length(s) - 40);
      inc(linha);
    end;
    DOSPrintAdd(1, linha, s, '');

    inc(linha);
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha);

    if ecopias > 0 then
     begin
       if formPrincipal.Pergunta(
           'Deseja imprimir o cupom?',
           'Recibo') = IDYES then
        DOSPrintSendPage(ecopias);
     end else
     begin
       ecopias := (ecopias * -1);
       DOSPrintSendPage(ecopias);
     end;

    DOSPrintClose;
  end;

  { cupom nao fiscal de entrada }
  procedure TCupomECF.CupomNaoFiscalNaoVinculadoEntrada(CodDocument,
    Parcela: integer; DataPagamento: TDateTime; Saldo, Acrescimo, Desconto,
    ValorBruto, ValorPago: extended; Descricao, Indice: string);
  begin

  end;

  { cupom nao fiscal de saida }
  procedure TCupomECF.CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended);
  begin

  end;

  { abertura da gaveta }
  procedure TCupomECF.AbreGaveta;
  begin

  end;

  { recibo }
  procedure TCupomECF.Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
    valorfmt, movimentos, usuario: string);
  var
    i: integer;
  begin
    DOSPrintOpen(eimpressora, #27 + '@' + #27 + #67 + Chr(30), '4');
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha);
    DOSPrintAdd(17, linha, 'RECIBO', '');
    inc(linha);
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha, 2);
    DOSPrintAdd(1, linha, 'Recebemos de: ', '');
    inc(linha);
    DOSPrintAdd(1, linha, cliente, '');
    inc(linha);
    DOSPrintAdd(1, linha, 'CPF/CNPJ: ' + cpf, '');
    inc(linha);
    DOSPrintAdd(1, linha, 'nesta data de ' + dataextenso + ',', '');
    inc(linha);
    DOSPrintAdd(1, linha, 'a quantia de ' + valorfmt, '');
    inc(linha);
    DOSPrintAdd(1, linha, '(' + trim(copy(extenso, 1, 40)) + ')', '');
    if length(trim(extenso)) > 40 then
     begin
       inc(linha);
       DOSPrintAdd(1, linha, '(' + trim(copy(extenso, 41, 40)) + ')', '');
     end;
    inc(linha);
    DOSPrintAdd(1, linha, 'referente ao pagamento das obrigações', '');
    inc(linha);
    DOSPrintAdd(1, linha, 'abaixo identificadas:', '');
    inc(linha);
    DOSPrintAdd(1, linha, '(' + trim(copy(movimentos, 1, 40)) + ')', '');
    if length(trim(movimentos)) > 40 then
     begin
       inc(linha);
       DOSPrintAdd(1, linha, '(' + trim(copy(movimentos, 41, 40)) + ')', '');
     end;
    inc(linha, 2);
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha, 2);
    DOSPrintAdd(1, linha, 'Por ser verdade, firmamos,', '');
    inc(linha, 3);
    i := (20 - (length(trim(empresa)) div 2));
    DOSPrintAdd(i, linha, trim(empresa), '');
    inc(linha);
    i := (20 - (length('CNPJ: ' + trim(cnpj)) div 2));
    DOSPrintAdd(i, linha, 'CNPJ: ' + trim(cnpj), '');
    inc(linha);
    i := (20 - (length('USUARIO: ' + trim(usuario)) div 2));
    DOSPrintAdd(i, linha, 'USUARIO: ' + trim(usuario), '');
    inc(linha);
    DOSPrintAdd(1, linha, '------------------------------------------', '');
    inc(linha, 2);
    if formPrincipal.Pergunta(
         'Deseja imprimir o recibo?',
         'Recibo') = IDYES then
     try
       DOSPrintSendPage(ecopias);
     except
     end;
    try
      DOSPrintClose;
    except
    end;
  end;

{#############################################################################}
{##                                                                         ##}
{##  DEBUG                                                                  ##}
{##                                                                         ##}
{#############################################################################}

  { inicializa a impressoras }
  procedure TDebugECF.Inicializar;
  begin
    inherited;
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Inicialização');
  end;

  { dados da empresa }
  procedure TDebugECF.DadosEmpresa(nome, cnpj, fone, historico, impressora: string; copias: integer);
  begin
    enome := nome;
    ecnpj := cnpj;
    efone := fone;
    ehistorico := historico;
    eimpressora := impressora;
    ecopias := copias;
    formPrincipal.HideMsg;
    ShowMessage(PChar('Nome da Empresa: ' + enome + #13#10 +
      'CNPJ: ' + ecnpj + #13#10 +
      'Fone: ' + efone + #13#10 +
      'Histórico: ' + ehistorico + #13#10 +
      'Impressora: ' + eimpressora));
  end;

  { lê o número de série da impressora }
  procedure TDebugECF.NumeroSerie(var retorno: string);
  begin
    inherited;
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Ler número de Série');
  end;

  { lê o número do cupom da impressora }
  procedure TDebugECF.NumeroCupom(var retorno: string);
  begin
    inherited;
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Ler número do Cupom');
  end;

  { lê o status da impressora }
  procedure TDebugECF.LerStatus(var Cupom, Cancelamento, ReducaoZ: integer;
    var GT: extended);
  begin
    inherited;
    formPrincipal.HideMsg;
    ShowMessage(Format('ECF DEBUG - Ler status' + #13#10#13#10 +
                       'Cupom: %d' + #13#10#13#10 +
                       'Cancelamento: %d' + #13#10#13#10 +
                       'Redução Z: %d' + #13#10#13#10 +
                       'GT: %f', [Cupom, Cancelamento, ReducaoZ, GT]));
  end;

  { executa uma Leitura X }
  procedure TDebugECF.LeituraX;
  begin
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Leitura X');
  end;

  { executa uma Reducao Z }
  procedure TDebugECF.ReducaoZ;
  begin
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Redução Z');
  end;

  { abre e inicia um novo cupom fiscal }
  procedure TDebugECF.AbrirCupomFiscal(var numero: longint; cpf: string);
  begin
    inherited;
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Abertura de Cupom: ' + cpf);
  end;

  { lança um item no cupom fiscal }
  procedure TDebugECF.LancarItem(codbarra: string; ValorItem, Quantidade, Desconto: extended;
    Unidade, Descricao, Desc2: string; Indice: extended);
  begin
    Desc2 := trim(Desc2);
    if (Desc2 > '') and (Desc2 <> 'N/F') then
      Desc_n2 := Desc_n2 + Desc2;

    formPrincipal.HideMsg;
    ShowMessage(Format('ECF DEBUG - Lancamento de Item' + #13#10#13#10 +
                       'Código: %s' + #13#10#13#10 +
                       'Descrição: %s' + #13#10#13#10 +
                       'Unidade: %s' + #13#10#13#10 +
                       'Quantidade: %f' + #13#10#13#10 +
                       'Valor unitário: %f' + #13#10#13#10 +
                       'Desconto: %f' + #13#10#13#10 +
                       'Valor Total: %f' + #13#10#13#10 +
                       'Indice ICMS: %f',
                       [codbarra,
                        descricao,
                        unidade,
                        quantidade,
                        valoritem,
                        desconto,
                        (valoritem - desconto) * quantidade,
                        indice]));
  end;

  { cancela um item }
  procedure TDebugECF.CancelarItem(item: integer);
  begin
    formPrincipal.HideMsg;
    ShowMessage(Format('ECF DEBUG - Cancelamento de Item' + #13#10#13#10 +
                       'Item: %d', [item]));
  end;

  { cancela um cupom inteiro }
  procedure TDebugECF.CancelarCupom;
  begin

  end;

  { totalizacao do cupom }
  procedure TDebugECF.TotalizaCupomFiscal(Desconto, Acrescimo: extended);
  begin
    formPrincipal.HideMsg;
    ShowMessage(Format('ECF DEBUG - Totalização do Cupom' + #13#10#13#10 +
                       'Desconto: %f' + #13#10#13#10 +
                       'Acrescimo: %f',
                       [desconto,
                        acrescimo]));
  end;

  { forma de pagamento }
  procedure TDebugECF.FormaPagamento(CodDocumento, Parcela: integer; IndiceForma,
    NomeForma: string; DataVencimento: TDateTime; Valor: extended);
  begin
    formPrincipal.HideMsg;
    ShowMessage(Format('ECF DEBUG - Forma de Pagamento' + #13#10#13#10 +
                       'Codigo: %d' + #13#10 +
                       'Parcela: %d' + #13#10 +
                       'Indice: %s' + #13#10 +
                       'Forma: %s' + #13#10 +
                       'vencimento: %s' + #13#10 +
                       'Valor: %f',
                       [coddocumento,
                        parcela,
                        indiceforma,
                        nomeforma,
                        FormatDateTIme('DD/MM/YYYY', DataVencimento),
                        Valor]));
  end;

  { fechamento do cupom fiscal }
  procedure TDebugECF.Fechamento(Msg1, Msg2, Msg3, Msg4, Msg5: string);
  begin
    formPrincipal.HideMsg;
    ShowMessage(Format('ECF DEBUG - Fechamento com Mensagens' + #13#10#13#10 +
                       '%s' + #13#10 +
                       '%s' + #13#10 +
                       '%s' + #13#10 +
                       '%s' + #13#10 +
                       '%s',
                       [Msg1, Msg2, Msg3, Msg4, Msg5]));
  end;

  { cupom nao fiscal de entrada }
  procedure TDebugECF.CupomNaoFiscalNaoVinculadoEntrada(CodDocument, Parcela: integer;
    DataPagamento: TDateTime; Saldo, Acrescimo, Desconto, ValorBruto,
    ValorPago: extended; Descricao, Indice: string);
  begin
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Cupom NAO-Fiscal Vinculado de Entrada');
  end;

  { cupom nao fiscal de saida }
  procedure TDebugECF.CupomNaoFiscalNaoVinculadoSaida(Historico: string;
      Valor: extended);
  begin
    formPrincipal.HideMsg;
    ShowMessage('ECF DEBUG - Cupom NAO-Fiscal Vinculado de Saida');
  end;

  { abertura da gaveta }
  procedure TDebugECF.AbreGaveta;
  begin

  end;

  { recibo }
  procedure TDebugECF.Recibo(empresa, cliente, cnpj, cpf, dataextenso, extenso,
    valorfmt, movimentos, usuario: string);
  begin

  end;


end.
