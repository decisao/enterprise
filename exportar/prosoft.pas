unit prosoft;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, Menus, GIFImg,
  dxSkinsCore, dxSkinOffice2007Silver, cxLookAndFeels, dxSkinOffice2007Blue,
  dxGDIPlusClasses, dxSkinscxPCPainter, DB, DBClient, cxCalendar,
  cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMemo, cxCurrencyEdit, cxProgressBar,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TformProsoft = class(TForm)
    Panel1: TPanel;
    pnlDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    Image1: TImage;
    pgcExportar: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dedInicial: TcxDateEdit;
    dedFinal: TcxDateEdit;
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosNOTA_DATAEMISSAO: TSQLTimeStampField;
    cdsDadosCODEMPRESA: TIntegerField;
    cdsDadosVALOR_SERVICOS: TFloatField;
    cdsDadosVALOR_PRODUTOS: TFloatField;
    cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField;
    cdsDadosNOTA_NUMERO: TIntegerField;
    cdsDadosTIPODOC: TStringField;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosES: TSmallintField;
    cdsDadosSTATUS: TStringField;
    cdsDadosDATAFECHAMENTO: TSQLTimeStampField;
    cdsDadosNOME: TStringField;
    dsrDados: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_DATAEMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_SERVICOS: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_PRODUTOS: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPODOC: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1DATAFECHAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    Memo1: TcxMemo;
    cxButton3: TcxButton;
    dedProgresso: TcxProgressBar;
    cdsNota: TClientDataSet;
    cdsItens: TClientDataSet;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    stPesquisa: string;
//    function ExportarEntradaItem(NItem:integer):WideString;
    function ExportarSaidaItem(NItem:integer):WideString;
    function ExportarServicoItem(NItem:integer):WideString;
//    function ExportarSaidaProduto(NItem:integer):WideString;
//    procedure ExportarEntrada;
    procedure ExportarSaida;
  public
    { Public declarations }
  end;

var
  formProsoft: TformProsoft;

implementation

uses principal, funcoes;

{$R *.dfm}

procedure TformProsoft.cxButton3Click(Sender: TObject);
var
  condicao: string;
begin

  try

    formPrincipal.ShowMsg('Pesquisando...');

    { empresa }
    condicao := Format(' AND MOVIMENTOS.CODEMPRESA = %d', [formPrincipal.codempresa]);

    { datas }
    condicao := condicao +
      Format(' AND CAST(MOVIMENTOS.NOTA_DATAEMISSAO AS DATE) BETWEEN %s AND %s',
        [QuotedStr(FormatDateTime('YYYY-MM-DD', dedInicial.Date)),
         QuotedStr(FormatDateTime('YYYY-MM-DD', dedFinal.Date))]);

    { tipos de Notas }
    condicao := condicao +
      Format(' AND MOVIMENTOS.TIPODOC IN (%s, %s, %s)',
        [QuotedStr('NF1'), QuotedStr('NFE'), QuotedStr('ECF')]);

    { pesquisa }
    cdsDados.Close;
    cdsDados.CommandText := stPesquisa + condicao;
    cdsDados.Open;

  finally

    formPrincipal.HideMsg;

  end;

end;

procedure TformProsoft.edtSenhaEnter(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxLookupComboBox(Sender).Style.Shadow := True;
    end;

   if Sender is TcxTextEdit then
    begin
     TcxTextEdit(Sender).Style.Color := clInfoBk;
     TcxTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxTextEdit(Sender).Style.Shadow := True;
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

procedure TformProsoft.edtSenhaExit(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clWindow;
     TcxLookupComboBox(Sender).Style.Font.Style := [];
     TcxLookupComboBox(Sender).Style.Shadow := False;
    end;

   if Sender is TcxTextEdit then
    begin
     TcxTextEdit(Sender).Style.Color := clWindow;
     TcxTextEdit(Sender).Style.Font.Style := [];
     TcxTextEdit(Sender).Style.Shadow := False;
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

procedure TformProsoft.cxButton1Click(Sender: TObject);
begin
  ExportarSaida;
end;

procedure TformProsoft.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformProsoft.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformProsoft.FormShow(Sender: TObject);
begin
  stPesquisa := cdsDados.CommandText;
end;


//procedure TformProsoft.ExportarEntrada;
//var
//  V_CNPJ_CPF      :string;
//  v_vl            :string;
//  xcampo_         :widestring;
//  lt_txt          :TStrings;
//  lt_Item         :TStrings;
//  v_base_icms_sub :extended;
//  li_CodNota      :integer;
//  li_NItem        :integer;
//begin
//  if Not qryEntrada.Active then
//    PesquisarEntrada;
//
//  qryEntrada.First;
//  li_CodNota := -1;
//  li_NItem := 0;
//
//  try
//    qryEntrada.DisableControls;
//    lt_Txt := TStringList.Create;
//    lt_Item := TStringList.Create;
//
//    if Not qryEntrada.IsEmpty then
//    begin
//      //Cria StringList para criação do arquivo
//      Memo1.Lines.Clear;
//
//      dedProgresso.Properties.Max := qryEntrada.RecordCount;
//      dedProgresso.Position := 0;
//
//
//      while not qryEntrada.EOF do
//      begin
//
//        dedProgresso.Position :=
//         dedProgresso.Position + 1;
//
//        Application.Processmessages;
//
//        { Validações das notas fiscais }
//        if (qryEntradavalor_icms.AsFloat = 0) and (qryEntradabase_calculo_icms.AsFloat > 0) then
//        begin
//          // Há erros com o cálculo no ICMS
//          Memo1.Lines.Add('Nota -> '+ qryEntradanotafiscal.DisplayText +' -> valores errados');
//        end
//        else if (qryEntradacpf_cnpj.AsString = '' ) or (qryEntradauf_origem.AsString = '' ) then
//        begin
//          Memo1.Lines.Add(
//            qryEntradanotafiscal.DisplayText +
//            ' -> Não tem CNPJ ou UF ->' +
//            qryEntradacpf_cnpj.DisplayText +' / '+
//            qryEntradauf_origem.DisplayText);
//        end
//        else
//        begin
//          li_NItem := li_NItem + 1;
//
//          if li_CodNota <> qryEntradaId.AsInteger then
//          begin
//            li_NItem := 1;
//
//            V_CNPJ_CPF := qryEntradacpf_cnpj.AsString ;
//
//            if (V_CNPJ_CPF <> '') then
//            begin
//              {
//                 Os dados estão corretos!
//                 preparar dados da linha
//                 Campo: Inical - Tamanho Comentário
//              }
//              xcampo_ := '';
//              // Filler: 4 espaços em branco
//              xcampo_ := xcampo_ + '    ';
//              //CNPJ do Emitente: 5-14 Sem sinais
//              xcampo_ := xcampo_ + Format('%14s',[V_CNPJ_CPF]);
//              //Data Entrada: 19-6 DDMMYYYY
//
//              xcampo_ := xcampo_ + copy(qryEntradadata_entrada.DisplayText,1,2)
//                                 + copy(qryEntradadata_entrada.DisplayText,4,2)
//                                 + copy(qryEntradadata_entrada.DisplayText,9,2);
//              //Data Emissao: 19-6 DDMMYYYY
//              xcampo_ := xcampo_ + copy(qryEntradadata_emissao.DisplayText, 1,2)
//                                 + copy(qryEntradadata_emissao.DisplayText, 4,2)
//                                 + copy(qryEntradadata_emissao.DisplayText, 9,2);//04
//              //Numero do Documento: 31-6
//              xcampo_ := xcampo_ + AlinhaD(qryEntradanotafiscal.AsString,6,'0');
//              //Espécie do Documento 31-3
//              xcampo_ := xcampo_ + 'NF ';// especie documento ?
//              //Série e subsérie 40-3
//              xcampo_ := xcampo_ + AlinhaE(qryEntradaserie_nf.AsString,1);
//              xcampo_ := xcampo_ + AlinhaE(qryEntradasubserie_nf.AsString,2);
//              //Item de desdobramento: 43-1
//              xcampo_ := xcampo_ + '0';// item de desdobramento Se na NF tiver aliquotas dif informa n veses senao é 0
//              //Código Contábil (P. de Contas) 44-5
//              xcampo_:= xcampo_ + '     ';//
//              //CFOP ANt. 49-3
//              xcampo_:= xcampo_ + '   ';
//              // Valor Tot. Mercadorias 52-14
//              v_vl := Format('%14s',[FormatFloat('0.00',qryEntradavalor_produtos.AsFloat)]);
//              TrocaVirg_Ponto(v_vl);            xcampo_:= xcampo_ + v_vl;
//              //Base Calc. ICM: 66-14
//              v_vl := Format('%14s',[FormatFloat('0.00',qryEntradabase_calculo_icms.AsFloat)]);
//              TrocaVirg_Ponto(v_vl);
//              xcampo_:= xcampo_ + v_vl;
//              //ICMS Creditado: 80-14
//              v_vl := format('%14s',[FormatFloat('0.00',qryEntradavalor_icms.AsFloat)]);
//              TrocaVirg_Ponto(v_vl);
//              xcampo_:= xcampo_ + v_vl;
//              //Isentas: 94-14
//              v_base_icms_sub := qryEntradaValor_Subst.AsFloat;
//              v_vl :=
//                Format('%14s',[
//                  FormatFloat('0.00',
//                    qryEntradavalor_produtos.AsFloat -
//                    qryEntradabase_calculo_icms.AsFloat -
//                    v_base_icms_sub)]);
//              TrocaVirg_Ponto(v_vl);
//              xcampo_:= xcampo_ + v_vl;
//
//              //Outras: 108-14
//              v_vl := format('%14s',[FormatFloat('0.00',v_base_icms_sub)]);
//              TrocaVirg_Ponto(v_vl);
//              xcampo_:= xcampo_ + v_vl;
//              //IPI Não creditado: 122-14
//              v_vl := format('%14s',[FormatFloat('0.00',qryEntradavalor_ipi.AsFloat)]);
//              TrocaVirg_Ponto(v_vl);
//              xcampo_:= xcampo_ + v_vl;
//
//              // aliq icms: 136-5
//              if qryEntradabase_calculo_icms.AsFloat > 0 then
//              begin
//                v_vl := format('%5s',[FormatFloat('00.00',qryEntradaITEM_ALIQ_ICMS.AsFloat)]);
//                TrocaVirg_Ponto(v_vl);
//                xcampo_:= xcampo_ + v_vl;
//              end
//              else
//                xcampo_:= xcampo_ + '00.00';
//              {
//                    Base Cal. IPI: 141-14
//                    IPI Creditado: 155-14
//                    IPI Cred. 50%: 169-14
//                    Isentas      : 183-14
//                    Outras       : 197-14
//              }
//              xcampo_:= xcampo_ + '          0.00';
//              xcampo_:= xcampo_ + '          0.00';
//              xcampo_:= xcampo_ + '          0.00';
//              xcampo_:= xcampo_ + '          0.00';
//              xcampo_:= xcampo_ + '          0.00';
//
//              //Valor Tot. Nota: 211-14
//              v_vl := format('%14s',[FormatFloat('0.00',qryEntradatotal_nota.AsFloat)]);
//              TrocaVirg_Ponto(v_vl);
//              xcampo_:= xcampo_ + v_vl;
//
//              // campo cond pagamento 0 = a vista  -  1 = a prazo
//              if qryEntradaCONTA_PAGAR.AsInteger > 1 then
//                xcampo_ := xcampo_ + '1'
//              else
//                xcampo_ := xcampo_ + '0';
//
//              //Classif. Contábil: 226-2
//              if qryEntradaCONTA_PAGAR.AsInteger > 1 then
//              begin
//                if rgpLoja.ItemIndex = 0 then
//                  xcampo_:= xcampo_ + '01'
//                else
//                  xcampo_:= xcampo_ + '03'
//              end
//              else if rgpLoja.ItemIndex = 0 then
//                xcampo_:= xcampo_ + '00'
//              else
//                xcampo_:= xcampo_ + '02';
//
//
//{
//                  Sit. Especial:   228-3
//                  Sit. Especial 1: 231-12
//                  Sit. Especial 2: 243-12
//                  Sit. Especial 3: 255-12
//                  Sit. Especial 4: 267-12
//                  Observacao     : 279-100
//}
//              xcampo_:= xcampo_ + AlinhaE(' ',151);
//
//{
//                  1o Vencto : 379-6
//                  1o Pgto   : 385-14
//                  2o Vencto : 399-6
//                  2o Pgto   : 405-14
//                  3o Vencto : 419-6
//                  3o Pgto   : 425-14
//                  4o Vencto : 439-6
//                  4o Pgto   : 445-14
//                  5o Vencto : 459-6
//                  5o Pgto   : 465-14
//                  6o Vencto : 479-6
//                  6o Pgto   : 485-14
//}
//(*
//              if DM.Q_Pagar.RecordCount > 0 then
//              begin
//                xcampo_ := xcampo_ + COPY(DM.Q_PagarVencimento.asstring, 1,2)
//                                   + COPY(DM.Q_PagarVencimento.asstring, 4,2)
//                                   + COPY(DM.Q_PagarVencimento.asstring, 9,2);
//                v_vl := format('%14s',[FormatFloat('0.00',DM.Q_EntradasValor_tot_nota.AsFloat)]);
//                TrocaVirg_Ponto(v_vl);
//                xcampo_:= xcampo_ + v_vl;
//                xcampo_:= xcampo_ + space(100);
//              end
//              else
//              begin
//*)
//                xcampo_:= xcampo_ + AlinhaE(' ',120);
//(*
//              end;
//*)
//              {
//                  Insc. Est. Fornecedor : 499-18
//                  UF Insc. Est. Forn.   : 517-2
//              }
//              xcampo_:= xcampo_ + AlinhaE(' ',20); // campo 44 e 45
//              //Tipo de Frete: 519-1  (1-CIF; 2-FOB)
//              xcampo_:= xcampo_ + ' ';
//              {
//                  Sigla Sit. Tributária:520-5
//                  Valor Sit. Tributária:525-14
//                  Díg. Adicionarl CFOP :539-1
//              }
//              xcampo_:= xcampo_ + AlinhaE(' ',20);
//
//              xcampo_:= xcampo_ + AlinhaE(' ',71); // campo 50 a 56
//              xcampo_:= xcampo_ + AlinhaE(' ',13); // campo 57 a 59
//
//              // cfop mas tem que ser dos itens
//              xcampo_:= xcampo_ + StringReplace(qryEntradacfop.AsString,'.','',[rfREplaceAll]);
//              // campo 61
//              xcampo_:= xcampo_ + AlinhaE(' ',10);
//              // campo 62 a 78
//              xcampo_:= xcampo_ + AlinhaE(' ',131);
//
//              lt_Txt.Add(xcampo_);
//            end;// if (V_CNPJ_CPF <> '') then
//            li_CodNota := qryEntradaId.AsInteger;
//          end;//if li_CodNota <> qryEntradaId.AsInteger then
//          lt_Item.Add(ExportarEntradaItem(li_NItem));
//        end;{ Validações das notas fiscais }
//        qryEntrada.Next;
//      end;// while not qryEntrada.EOF do
//      lt_Txt.SaveToFile('c:\ENTRADA.001');
//      lt_Item.SaveTofile('c:\ITEM_ENTRADA.001');
//      dmoPrincipal.MsgError(Self,
//        'Arquivos GERADOS' + #13 +
//        'Lembrete: Você deve se Copiar os Arquivos C:\ENTRADA.001 e c:\ITEM_ENTRADA.001 para um disquete e enviar ao seu Contador','Exportação');
//    end// if Not qryEntrada.IsEmpty then
//    else
//      dmoPrincipal.MsgError(Self,'Não temos Entradas cadastrados','Exportação');
//  finally
//    qryEntrada.EnableControls;
//    FreeAndNil(lt_Txt);
//    FreeAndNil(lt_Item);
//  end;
//
//end;
//
//function TformProsoft.ExportarEntradaItem(NItem:integer):WideString;
//var tipo_trib : String;
//begin
//  if qrySaidaITEM_VALOR_ICMS.Value > 0 then
//     tipo_trib := 'T'
//  else
//    tipo_trib := 'I';
//  Result :=
//    // CNPJ do emitente 1-14
//    AlinhaE(qryEntradacpf_cnpj.AsString,14) +
//    // Data da Entrada  15-8
//    AlinhaE(FormatDateTime('yyyymmdd',qryEntradadata_entrada.AsDateTime),8) +
//    // Número do documento 23-6
//    AlinhaD(qryEntradanotafiscal.DisplayText,6,'0') +
//    // Série e Subsérie 29-3
//    AlinhaE(
//      qryEntradaserie_nf.AsString +
//      qryEntradasubserie_nf.AsString,3) +
//    // Item desdobramento da nota
//    AlinhaE(' ', 1) +
//    // Número do Item
//    AlinhaE(IntToStr(NItem),2) +
//    // Código do produto usado pela empresa
//    AlinhaE(qryEntradaid_produto.AsString,20) +
//    // Natureza da operação
//    AlinhaE(' ',3) +
//    // Item Desdob. Nat. Operação
//    AlinhaE(' ',1) +
//    // Unidade de Medida
//    AlinhaE(qryEntradaitem_unidade.AsString,3) +
//    // Situação tributária
//    AlinhaE(qryEntradaItem_cst.AsString,3) +
//    // Quantidade
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_QTD.AsFloat,ffFixed,14,2) ,14) +
//    // Preço Unitário
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_VALOR_UNIT.AsFloat,ffFixed,14,2), 14) +
//    // Desconto
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_DESCONTO.AsFloat,ffFixed,14,2),14) +
//    // Valor do Item
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_TOTAL.AsFloat,ffFixed,14,2),14)+
//    // Aliquota do IPI
//    AlinhaD(
//      FloatTostrF(0.0,ffFixed,4,2),5) +
//    // Valor do IPI
//    AlinhaD(
//      FloatTostrF(qryEntradaITEM_IPI.AsFloat,ffFixed,14,2),14) +
//    // Base Cálculo do ICMS
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_ALIQ_ICMS.AsFloat,ffFixed,14,2),14) +
//    // Base Calculo Sub. Tributária
//    AlinhaD(
//      FloatToStrF(0.0,ffFixed,14,2),14) +
//    // PRODUTO - Descrição
//    AlinhaE(UpperCase(RemoveAcentos(qryEntradaDESCRICAO_PRODUTO.AsString)),80) +
//    // PRODUTO - Grupo do Produto (DOS)
//    AlinhaE('00',2) +
//    // PRODUTO - Cód. classificação Fiscal
//    AlinhaE('',10) +
//    // PRODUTO - item desdobramento
//    AlinhaE('',2) +
//    // PRODUTO - Aliqt. ICMS Op. Internas
//    AlinhaD(
//      FloatToStrF(0,ffFixed,5,2),5) +
//    // PRODUTO - % Red. Base do ICMS
//    AlinhaD(
//      FloatTostrF(qryEntradaITEM_PERCENTUAL_ICMS.AsFloat,ffFixed,5,2),5) +
//    // PRODUTO - Base de Calculo Subs. Tributária
//    AlinhaD(
//      FloatToStrF(0,ffFixed,14,2),14) +
//    // PRODUTO - Aliq. IPI
//    AlinhaD(FloatToStrF(qryEntradaITEM_IPI.AsFloat,ffFixed,4,2),5) +
//    // PRODUTO - Espécie produto
//    AlinhaE('',2) +
//    // PRODUTO - Situaçao Tributária
//    AlinhaE(qryEntradaITEM_CST.AsString,3) +
//    // PRODUTO - Nome Fantasia
//    AlinhaE(qryEntradaDESCRICAO_PRODUTO.AsString,30) +
//    AlinhaD(IntToStr(NItem),3,'0') +
//    // Movimentou mercadoria S/N
//    AlinhaE('S',1) +
//    // Base de cálculo do IPI
//    AlinhaD(FloatToStrF(0,ffFixed,14,2),14) +
//    // Indicador de tributação [T]ributado [I]sento [O]utros
//    AlinhaE('',1) +
//    // Aliquota do ICMS
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_ALIQ_ICMS.AsFloat,ffFixed,5,2),5) +
//    // Valor do ICMS
//    AlinhaD(
//      FloatToStrF(qryEntradaITEM_VALOR_ICMS.AsFloat,ffFixed,14,2),14) +
//    // Indicador Trib. ICMS [T]ributado [I]sento [O]utros
//    AlinhaE(tipo_trib,1) +
//    // Demais campos 591 espaços
//    AlinhaE('',591);
//end;

function TformProsoft.ExportarSaidaItem(NItem:integer): WideString;
var tipo_trib,
    mov,
    sit : String;
begin
  if cdsItens.FieldByName('PS').AsString = 'P' then
   begin
     mov := 'S';
     sit := cdsItens.FieldByName('SITTRIBU').AsString;

    if cdsItens.FieldByName('SITTRIBU').AsString = '060' then
      tipo_trib := 'T'
    else
      tipo_trib := 'I';

    Result :=
      // Filler (0)
      AlinhaE('',14) +
      // Data da Entrada (15 - 8)
      AlinhaE(FormatDateTime('yyyymmdd',cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime),8) +
      // Número do documento (23 - 6)
      AlinhaE(cdsNota.FieldByName('NOTA_NUMERO').DisplayText,6,'0') +
      // Série e Subsérie (29 - 3)
      AlinhaE(
        ' '
  //      + qrySaidasubserie_nf.AsString NÃO TEM SUB-SÉRIE
        ,3) +
      // Item desdobramento da nota (32 - 1)
      AlinhaE('0', 1) +
      // Número do Item (33)
      AlinhaE(IntToStr(NItem),2) +
      // Código do produto usado pela empresa (35 - 20)
      AlinhaE(cdsItens.FieldByName('CODIGO').AsString,20) +
      // Natureza da operação (55 - 3)
      AlinhaE(' ',3) +
      // Item Desdob. Nat. Operação (58 - 1)
      AlinhaE(' ',1) +
      // Unidade de Medida (59 - 3)
      AlinhaE(cdsItens.FieldByName('UNIDADE').AsString,3) +
      // Situação tributária (62 - 3)
      AlinhaE(cdsItens.FieldByName('SITTRIBU').AsString,3) +
      // Quantidade (65 - 14)
      AlinhaD(
        FloatToStrF(cdsItens.FieldByName('QUANTIDADE').AsFloat,ffFixed,14,3) ,14) +
      // Preço Unitário (79 - 14)
      AlinhaD(
        FloatToStrF(cdsItens.FieldByName('VALOR_VENDA').AsFloat,ffFixed,14,3), 14) +
      // Desconto (93 - 14)
      AlinhaD(
        FloatToStrF(cdsItens.FieldByName('DESCONTO').AsFloat,ffFixed,14,2),14) +
      // Valor do Item (107 - 14)
      AlinhaD(
        FloatToStrF(cdsItens.FieldByName('VALOR_PAGO').AsFloat,ffFixed,14,2),14)+
      // Aliquota do IPI (121 - 5)
      AlinhaD(
        FloatTostrF(0.0,ffFixed,5,2),5) +
      // Valor do IPI (126 -14)
      AlinhaD(
        FloatTostrF(0.0,ffFixed,14,2),14) +
      // Base Cálculo do ICMS (140 - 14)
      AlinhaD(
        FloatToStrF(0,ffFixed,14,3),14) +
      // Base Calculo Sub. Tributária (154 - 14)
      AlinhaD(
        FloatToStrF(0.0,ffFixed,14,3),14) +
      // PRODUTO - Descrição  (168 - 80)
      AlinhaE(UpperCase(RemoveAcentos(cdsItens.FieldByName('DESCRICAO2').AsString)),80) +
      // PRODUTO - Grupo do Produto (DOS) (248 - 2)
      AlinhaE('00',2) +
      // PRODUTO - Cód. classificação Fiscal (250 - 3)
      AlinhaE(cdsItens.FieldByName('CLASSFISCAL').AsString,10) +
      // PRODUTO - item desdobramento CCF (260 - 2)
      AlinhaE('',2) +
      // PRODUTO - Aliqt. ICMS Op. Internas (262 - 5)
      AlinhaD(
        FloatToStrF(0,ffFixed,5,2),5) +
      // PRODUTO - % Red. Base do ICMS (267 - 5)
      AlinhaD(
        FloatToStrF(0,ffFixed,05,2),5) +
      // PRODUTO - Base de Calculo Subs. Tributária (272 - 14)
      AlinhaD(
        FloatToStrF(0,ffFixed,14,2),14) +
      // PRODUTO - Aliq. IPI  (286 -5)
      AlinhaD(FloatToStrF(0,ffFixed,4,2),5) +
      // PRODUTO - Espécie produto (291 -2)
      AlinhaE('',2) +
      // PRODUTO - Situaçao Tributária (293 - 3)
      AlinhaE(sit,3) +
      // PRODUTO - Nome Fantasia (296 - 30)
      AlinhaE(cdsItens.FieldByName('DESCRICAO1').AsString,30) +
      // Número do Item (326)
      AlinhaD(IntToStr(NItem),3,'0') +
      // Movimentou mercadoria S/N (329 - 1)
      AlinhaE(mov,1) +
      // Base de cálculo do IPI (330 - 14)
      AlinhaD(FloatToStrF(0,ffFixed,14,3),14) +
      // Indicador de tributação IPI [T]ributado [I]sento [O]utros  (344 - 1)
      AlinhaE(' ',1) +
      // Aliquota do ICMS (345 - 5)
      AlinhaD(
        FloatToStrF(0,ffFixed,5,2),5) +
      // Valor do ICMS (350 - 14)
      AlinhaD(
        FloatToStrF(0,ffFixed,14,2),14) +
      // Indicador Trib. ICMS [T]ributado [I]sento [O]utros (364 - 1)
      AlinhaE(tipo_trib,1) +
      // Demais campos 591 espaços
      AlinhaE('',591);
   end;
end;


function TformProsoft.ExportarServicoItem(NItem:integer): WideString;
var
  V_CNPJ_CPF : String;
begin
  V_CNPJ_CPF := funcoes.LimpaNumStr(trim(cdsNota.FieldByName('CLI_CPFCGC').AsString));
  V_CNPJ_CPF := funcoes.AlinhaD(V_CNPJ_CPF, 14, ' ');

  Result :=
    // tipo do livro (1 - 1)
    '1' +
    // Data da Emissao (2 - 6)
    AlinhaE(FormatDateTime('DDMMYY',cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime),6) +
    // Serie (8 - 3)
    AlinhaE(' ', 3) +
    // Número do documento (11 - 6)
    AlinhaE(cdsNota.FieldByName('NOTA_NUMERO').DisplayText,6,'0') +
    // Número do documento (17 - 6)
    AlinhaE(cdsNota.FieldByName('NOTA_NUMERO').DisplayText,6,'0') +
    // Codigo do Servico (23 - 4)
    '1401' +
    // Item desdobramento da nota (27 - 1)
    '0' +
    // Valor contabil (28 - 14)
    AlinhaD(
      FloatToStrF(cdsNota.FieldByName('VALOR_SERVICOS').AsFloat,ffFixed,14,2),14)+
    // Aliquota (42 - 5)
    AlinhaD(
      FloatToStrF(cdsNota.FieldByName('ISSALIQ').AsFloat,ffFixed,5,2),5) +
    // Imposto (47 - 14)
    AlinhaD(
      FloatToStrF(cdsNota.FieldByName('VALOR_ISS').AsFloat,ffFixed,14,2),14)+
    // Campos em Branco (61 - 160)
    AlinhaE('', 160) +
    // Municipio (221 - 20)
    AlinhaE(cdsNota.fieldByName('CLI_CIDADE').AsString, 20, ' ')+
    // CNPJ (241 - 14)
    V_CNPJ_CPF +
    // IRRF (255 - 14)
    AlinhaD(FloatToStrF(0,ffFixed,14,2),14) +
    // INSS (269 - 14)
    AlinhaD(FloatToStrF(0,ffFixed,14,2),14) +
    // Especie (283 - 3)
    AlinhaE('', 3) +
    // Fator de redução (286 - 5)
    AlinhaD(FloatToStrF(0,ffFixed,5,2),5) +
    // Valor da redução (291 - 14)
    AlinhaD(FloatToStrF(0,ffFixed,14,2),14) +
    // Situacao da Nota (305 - 1)
    'T' +
    // Local (306 - 1)
    'D' +
    // Retido (307 - 1)
    'N' +
    // Valor retido (308 - 14)
    AlinhaD(FloatToStrF(0,ffFixed,14,2),14) +
    // Campos em Branco (322 - 41)
    AlinhaE('', 41) +
    // Modelo NF Conjugada (363 - 2)
    '51' +
    // IE  (365 - 18)
    AlinhaE('', 18) +
    // UF (383 - 2)
    AlinhaE(cdsNota.fieldByName('CLI_ESTADO').AsString, 2, ' ')+
    // Campos em Branco (385 - 25)
    AlinhaE('', 25) +
    // Código do Serviço (410 - 12)
    AlinhaE('', 12) +
    // Modelo NF (422 - 5)
    'OU001' +
    // Motivo Retenção (427 - 2)
    AlinhaD('', 2) +
    // Operação NF (429 - 2)
    AlinhaD('', 2) +
    // Natureza op (431 - 1)
    ' ' +
    // Tipo recolhimento (432 - 3)
    AlinhaE('', 3) +
    // Emite DARF (435 - 1)
    '0' +
    // Tipo documento (436 - 3)
    AlinhaE('1', 3, ' ') +
    // IRRF retido (439 - 1)
    '0' +
    // Local IBGE (440 - 5)
    AlinhaE('', 5) +
    // Situação documento (445 - 10)
    AlinhaE('', 10);

end;

//================================================================

//function TformProsoft.ExportarSaidaProduto(NItem:integer): WideString;
//begin
//  Result :=
//    // Código do produto usado pela empresa (01 - 20)
//    AlinhaE(qrySaidaProdutoid_produto.AsString,20) +
//    // PRODUTO - Descrição  (21 - 80)
//    AlinhaE(UpperCase(RemoveAcentos(qrySaidaProdutoDESCRICAO_PRODUTO.AsString)),80) +
//    // PRODUTO - Grupo do Produto (DOS) (248 - 2)
//    AlinhaE('00',2) +
//    // Unidade de Medida (103 - 3)
//    AlinhaE(qrySaidaProdutoitem_unidade.AsString,3) +
//    // Demais campos 591 espaços
//    AlinhaE('',591);
//end;

//================================================================


procedure TformProsoft.ExportarSaida;
var
  V_CNPJ_CPF      :string;
  v_vl            :string;
  xcampo_         :widestring;
  v_base_icms_sub :extended;
  lt_Txt          :TStrings;
  lt_ItemSaida    :TStrings;
  lt_ProdutoSaida :TStrings;
  lt_ServicoSaida :TStrings;
  li_CodNota      :integer;
  li_NItem        :integer;
  valor_produtos1,
  valor_produtos2: extended;
  natureza1,
  natureza2: string;
begin

  if Not cdsDados.IsEmpty then
  begin

    Memo1.Lines.Clear;
    dedProgresso.Properties.Max := cdsDados.RecordCount;
    dedProgresso.Position := 0;

    li_CodNota := -1;
    li_NItem := 0;

    lt_txt := TStringList.Create;
    lt_ItemSaida := TStringList.Create;
    lt_ProdutoSaida := TStringList.Create;
    lt_ServicoSaida := TStringList.Create;

    cdsDados.First;

    try
      cdsDados.DisableControls;

      if cdsDados.IsEmpty then
        formPrincipal.MsgError('Não temos Saídas cadastradas','Exportação')
      else
      begin

        while not cdsDados.Eof do
        begin

          dedProgresso.Position :=
           dedProgresso.Position + 1;

          { abro o cabeçalho da nota }
          cdsNota.Close;
          cdsNota.Params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
          cdsNota.Open;

          Application.ProcessMessages;

          V_CNPJ_CPF := '';

          { Verificações }
          if (cdsNota.FieldByName('CLI_CPFCGC').AsString = null) or (cdsNota.FieldByName('CLI_ESTADO').AsString = '' ) then
          begin
            { Não foram encontrados os dados de CNPJ/CPF e UF }
            Memo1.Lines.Add(
              cdsNota.FieldByName('NOTA_NUMERO').DisplayText +' -> Não tem CPF/CNPJ ou UF ->' +
              cdsNota.FieldByName('CLI_CPFCGC').AsString +' / '+
              cdsNota.FieldByName('CLI_ESTADO').AsString);
          end
          else if Trim(cdsNota.FieldByName('NOTA_NUMERO').AsString) = '0' then
            Memo1.Lines.Add(cdsNota.FieldByName('CODIGO').AsString + ' -> NÃO FOI EMITIDA NF PARA ESTE MOVIMENTO!')
          else
          begin

            {Exporta o cabeçalho da Nota Fiscal }
            li_CodNota := cdsNota.FieldByName('NOTA_NUMERO').AsInteger;

            V_CNPJ_CPF := funcoes.LimpaNumStr(trim(cdsNota.FieldByName('CLI_CPFCGC').AsString));
            V_CNPJ_CPF := funcoes.AlinhaD(V_CNPJ_CPF, 14, ' ');

            valor_produtos1 := cdsNota.FieldByName('VALOR_PRODUTOS').AsFloat - cdsNota.FieldByName('TOTAL_TRIBUTADO').AsFloat;
            valor_produtos2 := cdsNota.FieldByName('TOTAL_TRIBUTADO').AsFloat;

            natureza1 := Trim(StringReplace(StringReplace(cdsNota.FieldByName('NOTA_CODNATUOPER').AsString,'.','',[rfReplaceAll]),',','',[rfReplaceAll]));
            if natureza1 = '5102' then
              natureza2 := '5405' else
            if natureza1 = '6102' then
              natureza2 := '6405' else
            natureza2 := '5405';

            if valor_produtos1 > 0 then
             begin

                { exportação da parte normal sem os itens 060 }

                xcampo_ := '';
                xcampo_ := xcampo_ + 'NFF   ';
                xcampo_ := xcampo_ + funcoes.AlinhaD(cdsNota.FieldByName('NOTA_NUMERO').AsString, 6, '0');
                xcampo_ := xcampo_ + funcoes.AlinhaD(cdsNota.FieldByName('NOTA_NUMERO').AsString, 6, '0');
                xcampo_ := xcampo_ + '0'; // item desdobramento
                xcampo_ := xcampo_ +
                  FormatDateTime('DDMMYY', cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime);

                xcampo_:= xcampo_ + '        ';//cod contabil

                v_vl := format('%14s',[FormatFloat('0.00',valor_produtos1)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                v_vl := format('%14s',[FormatFloat('0.00',valor_produtos1)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { base icms }
                v_vl := format('%14s',[FormatFloat('0.00',0)]);  //11
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { valor icms }
                v_vl := format('%14s',[FormatFloat('0.00',0)]); //12
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { isentas }
                v_vl := format('%14s',[FormatFloat('0.00',0)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { outras icms }
                v_vl := format('%14s',[FormatFloat('0.00',valor_produtos1)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';

                // aliq icms
    //            if cdsNota.FieldByName('NOTA_BASEICMS').AsFloat > 0 then
    //            begin
    //              v_vl := format('%5s',[FormatFloat('0.00',cdsNota.FieldByName('ICMSSIMPALIQ').AsFloat)]);
    //              TrocaVirg_Ponto(v_vl);
    //              xcampo_:= xcampo_ + v_vl;
    //            end
    //            else
                  xcampo_:= xcampo_ + '00.00';

                { matriz }
                xcampo_:= xcampo_ + '01';

                xcampo_:= xcampo_ + '   '; // campo 22

                xcampo_:= xcampo_ + '          0.00';// 23
                xcampo_:= xcampo_ + '          0.00';
                xcampo_:= xcampo_ + '          0.00';
                xcampo_:= xcampo_ + '          0.00';// 26

                xcampo_:= xcampo_ +  V_CNPJ_CPF;// 27
                xcampo_:= xcampo_ + '     ';//28
                xcampo_:= xcampo_ + UPPERCASE(cdsNota.FieldByName('CLI_ESTADO').AsString);//29
                xcampo_:= xcampo_ + '          ';//30 cod. municipio
                xcampo_:= xcampo_ + AlinhaE('',110);//31
                xcampo_:= xcampo_ + ' ';//32 cod. municipio
                xcampo_:= xcampo_ + AlinhaE('',173);//33 ao 48

                xcampo_ := xcampo_ + '1';//49

                v_vl := format('%14s',[FormatFloat('0.00',cdsNota.FieldByName('VALOR_SERVICOS').AsFloat)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                xcampo_ := xcampo_ +
                  FormatDateTime('DDMMYY', cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime);
                v_vl := format('%14s',[FormatFloat('0.00',cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsFloat)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_ := xcampo_ + v_vl;
                xcampo_ := xcampo_ + AlinhaE('',100);

                xcampo_ := xcampo_ + AlinhaE('',24);

                xcampo_ := xcampo_ +
                  FormatDateTime('DDMMYY', cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime); // 69
                xcampo_ := xcampo_ + natureza1;//70

                xcampo_ := xcampo_ + '   ';//71
                xcampo_ := xcampo_ + AlinhaE('',139);// campo 72 ao 91
                lt_txt.Add(xcampo_);

             end;

             if valor_produtos2 > 0 then
              begin

                { exportação dos itens 060 }

                xcampo_ := '';
                xcampo_ := xcampo_ + 'NFF   ';
                xcampo_ := xcampo_ + funcoes.AlinhaD(cdsNota.FieldByName('NOTA_NUMERO').AsString, 6, '0');
                xcampo_ := xcampo_ + funcoes.AlinhaD(cdsNota.FieldByName('NOTA_NUMERO').AsString, 6, '0');

                { itens do desdobramento }
                if valor_produtos1 > 0 then
                  xcampo_ := xcampo_ + '1' // item desdobramento
                else
                  xcampo_ := xcampo_ + '0'; // item desdobramento

                xcampo_ := xcampo_ +
                  FormatDateTime('DDMMYY', cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime);

                xcampo_:= xcampo_ + '        ';//cod contabil

                v_vl := format('%14s',[FormatFloat('0.00',valor_produtos2)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                v_vl := format('%14s',[FormatFloat('0.00',valor_produtos2)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { base icms }
                v_vl := format('%14s',[FormatFloat('0.00',0)]);  //11
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { valor icms }
                v_vl := format('%14s',[FormatFloat('0.00',0)]); //12
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { isentas }
                v_vl := format('%14s',[FormatFloat('0.00',0)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                { outras icms }
                v_vl := format('%14s',[FormatFloat('0.00',valor_produtos2)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';
                xcampo_ := xcampo_ + '          0.00';

                // aliq icms
    //            if cdsNota.FieldByName('NOTA_BASEICMS').AsFloat > 0 then
    //            begin
    //              v_vl := format('%5s',[FormatFloat('0.00',cdsNota.FieldByName('ICMSSIMPALIQ').AsFloat)]);
    //              TrocaVirg_Ponto(v_vl);
    //              xcampo_:= xcampo_ + v_vl;
    //            end
    //            else
                  xcampo_:= xcampo_ + '00.00';

                { matriz }
                xcampo_:= xcampo_ + '01';

                xcampo_:= xcampo_ + '   '; // campo 22

                xcampo_:= xcampo_ + '          0.00';// 23
                xcampo_:= xcampo_ + '          0.00';
                xcampo_:= xcampo_ + '          0.00';
                xcampo_:= xcampo_ + '          0.00';// 26

                xcampo_:= xcampo_ +  V_CNPJ_CPF;// 27
                xcampo_:= xcampo_ + '     ';//28
                xcampo_:= xcampo_ + UPPERCASE(cdsNota.FieldByName('CLI_ESTADO').AsString);//29
                xcampo_:= xcampo_ + '          ';//30 cod. municipio
                xcampo_:= xcampo_ + AlinhaE('',110);//31
                xcampo_:= xcampo_ + ' ';//32 cod. municipio
                xcampo_:= xcampo_ + AlinhaE('',173);//33 ao 48

                xcampo_ := xcampo_ + '1';//49

                v_vl := format('%14s',[FormatFloat('0.00',cdsNota.FieldByName('VALOR_SERVICOS').AsFloat)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_:= xcampo_ + v_vl;

                xcampo_ := xcampo_ +
                  FormatDateTime('DDMMYY', cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime);
                v_vl := format('%14s',[FormatFloat('0.00',cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsFloat)]);
                TrocaVirg_Ponto(v_vl);
                xcampo_ := xcampo_ + v_vl;
                xcampo_ := xcampo_ + AlinhaE('',100);

                xcampo_ := xcampo_ + AlinhaE('',24);

                xcampo_ := xcampo_ +
                  FormatDateTime('DDMMYY', cdsNota.FieldByName('NOTA_DATAEMISSAO').AsDateTime); // 69
                xcampo_ := xcampo_ + natureza2;//70

                xcampo_ := xcampo_ + '   ';//71
                xcampo_ := xcampo_ + AlinhaE('',139);// campo 72 ao 91
                lt_txt.Add(xcampo_);

              end;

            { Exporta Servicos da NotaFiscal }
            lt_ServicoSaida.Add(ExportarServicoItem(1));

            { Exporta Itens da Nota Fiscal }
            cdsItens.Close;
            cdsItens.Params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
            cdsItens.Open;
            li_NItem := 1;
            while not cdsItens.Eof do
             begin
               lt_ItemSaida.Add(ExportarSaidaItem(li_NItem));
               li_NItem := li_NItem + 1;
               cdsItens.Next;
             end;

          end;

          cdsDados.Next;

        end;

//        { abro os itens da nota }
//        cdsItens.Close;
//        cdsItens.Params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
//        cdsItens.Open;
//
//        while not cdsItens.Eof do
//        begin
//            { Exporta Produtos da Nota Fiscal }
//            lt_ProdutoSaida.Add(ExportarSaidaProduto(li_NItem));
//            cdsItens.Next;
//        end;

        lt_txt.SaveToFile('c:\SAIDA001.TXT');
        lt_ItemSaida.SaveToFile('c:\ITEM_SAIDA001.TXT');
        lt_ServicoSaida.SaveToFile('c:\SERVICO_SAIDA001.TXT');
//        lt_ProdutoSaida.SaveToFile('c:\PRODUTOS_SAIDA.001');
        formPrincipal.MsgError(
          'Arquivo GERADO' + #13 +
          'Lembrete: Você deve se Copiar os Arquivos '+
          'C:\SAIDA001.TXT, C:\SERVICO_SAIDA001.TXT e C:\ITEM_SAIDA001.TXT e enviar ao seu Contador',
          'Exportação');
      end;
    finally
      cdsDados.EnableControls;
      if Assigned(lt_Txt) then
        lt_Txt.Free;
      if Assigned(lt_ItemSaida) then
        lt_ItemSaida.Free;
      if Assigned(lt_ProdutoSaida) then
        lt_ProdutoSaida.Free;
      if Assigned(lt_ServicoSaida) then
        lt_ServicoSaida.Free;
    end;
  end
  else
    formPrincipal.MsgError('Não temos Saídas cadastradas.','Exportação');
end;



end.
