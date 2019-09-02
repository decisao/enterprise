unit NFe_gerar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, dxGDIPlusClasses, DB, DBClient, IniFiles, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue, cxCheckBox,
  dxSkinOffice2010Blue, dxSkinOffice2010Black, cxTextEdit, cxCurrencyEdit,
  dxSkinOffice2010Silver, dxSkinDevExpressStyle, StrUtils;

type
  TformNFeGerar = class(TForm)
    pnlDados: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cdsNFEmissao: TClientDataSet;
    tmrRetorno: TTimer;
    Memo1: TMemo;
    cdsNota: TClientDataSet;
    cdsItens: TClientDataSet;
    cdsPagamentos: TClientDataSet;
    cdsPagamentosSEL: TStringField;
    cdsPagamentosCODIGO: TIntegerField;
    cdsPagamentosNUMERO: TSmallintField;
    cdsPagamentosVALOR: TFloatField;
    cdsPagamentosCODDOCUMENTO: TIntegerField;
    cdsPagamentosDATAVENCIMENTO: TSQLTimeStampField;
    cdsPagamentosDATAPAGO: TSQLTimeStampField;
    cdsPagamentosSTATUS: TStringField;
    cdsPagamentosDOCUMENTO: TStringField;
    cdsPagamentosTIPO_DOC: TStringField;
    dsrPagamentos: TDataSource;
    pnlOpcoes: TPanel;
    Bevel2: TBevel;
    Label6: TLabel;
    ckDataHora: TcxCheckBox;
    ckDesconto: TcxCheckBox;
    ckAcrescimo: TcxCheckBox;
    edtAcrescimo: TcxCurrencyEdit;
    cxICMS: TcxCheckBox;
    cxPresencial: TcxCheckBox;
    edtFrete: TcxCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure tmrRetornoTimer(Sender: TObject);
    procedure ckAcrescimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codMovimento: longint;
    nf_numero: longint;
    retorno,
    email_destino,
    email_copia,
    empresa_nome: string;
  end;

var
  formNFeGerar: TformNFeGerar;

implementation

uses principal, funcoes;

{$R *.dfm}

procedure TformNFeGerar.ckAcrescimoClick(Sender: TObject);
begin
  edtAcrescimo.Enabled := ckAcrescimo.Checked;
  edtFrete.Enabled := ckAcrescimo.Checked;
end;

procedure TformNFeGerar.cxButton1Click(Sender: TObject);
var
  arquivo: TextFile;
  i, j, vista: integer;
  CFOP, CFOP_SALVO, CST, CSOSN: string;
  base, desconto, descontoun,
  rateio, rateiofrete, rateio_resto, rateiofrete_resto, quant_itens: currency;
  devicms1, devicmstotal: currency;
  simples, dev: boolean;
  tipo,
  cpf_cnpj,
  ie, chavedev,
  icmsdest,
  origem: string;
  outroestado,
  consumidorfinal,
  sub,
  comie: boolean;
begin
  outroestado := false;
  sub := false;
  consumidorfinal := false;
  icmsdest:='0';
  comie:=false;

  { inicio da geracao }
  Label1.Caption := Label1.Caption + ' [ok]';
  cxButton1.Enabled := False;
  dev := False;
  Application.ProcessMessages;

  { apago os arquivos }
  try
    DeleteFile('C:\ACBrMonitorPLUS\ENT.TXT');
    DeleteFile('C:\ACBrMonitorPLUS\SAI.TXT');
  except
  end;

  { pego o número da nota }
  if not formPrincipal.SocketConnection.Connected then
    formPrincipal.SocketConnection.Open;
  nf_numero := formPrincipal.SocketConnection.AppServer.GetID('NOTAFISCAL');
  if nf_numero > 0 then
   begin
     Label2.Caption := Format('NFe #%d [ok]', [nf_numero]);
     Label2.Font.Color := clBlack;
     Application.ProcessMessages;
   end else
   begin
     Label2.Caption := Label2.Caption + ' [erro]';
     Label2.Font.Color := clBlack;
     Application.ProcessMessages;
     exit;
   end;

  { dados do corpo nota }
  cdsNota.Close;
  cdsNota.Params[0].AsInteger := codMovimento;
  cdsNota.Open;

  { tipo }
  if cdsNota.FieldByName('ES').AsInteger = 1 then
    tipo := '0'
  else
    tipo := '1';

  { emails }
  email_destino := trim(cdsNota.FieldByName('CLI_EMAIL').AsString);
  email_copia   := trim(formPrincipal.cdsPerfil.FieldByName('EMP_EMAIL').AsString);
  empresa_nome  := trim(cdsNota.FieldByName('EMPRESA_NOME').AsString);

  { simples }
  simples := (trim(cdsNota.FieldByName('SIMPLES').AsString) = 'S');

  { dados dos itens da nota }
  cdsItens.Close;
  cdsItens.Params[0].AsInteger := codMovimento;
  cdsItens.Open;

  desconto := 0;
  devicms1 := 0;
  devicmstotal := 0;

  cdsPagamentos.close;
  cdsPagamentos.params[0].AsInteger := codMovimento;
  cdsPagamentos.open;
  if cdsPagamentos.RecordCount = 1 then
   begin
     if FormatDateTime('DD/MM/YYYY', cdsPagamentosDATAVENCIMENTO.AsDateTime) =
       FormatDateTime('DD/MM/YYYY', formPrincipal.GetTime) then
       vista := 0
     else vista := 1;
   end else vista := 1;

  { desabilito o botão cancelar }
  cxButton2.Enabled := False;
  Application.ProcessMessages;

  { nota fiscal eletronica }
  AssignFile(arquivo, 'C:\ACBrMonitorPLUS\ENT.TXT');
  ReWrite(arquivo);
  try
    writeln(arquivo, 'NFe.CriarEnviarNFe("');
    writeln(arquivo, '[infNFe]');
    writeln(arquivo, 'versao=4.0');
    writeln(arquivo, '[Identificacao]');

    { cabeçalho da nota }
    outroestado := cdsNota.FieldByName('CLI_ESTADO').AsString <> cdsNota.FieldByName('EMPRESA_ESTADO').AsString;
    if outroestado then
      writeln(arquivo, 'idDest=2')
    else
      writeln(arquivo, 'idDest=1');

    { ICMS outro estado para partilha }
    if MatchStr(cdsNota.FieldByName('EMPRESA_ESTADO').AsString, ['SP', 'MG', 'RJ', 'PR', 'SC', 'RS']) and
       MatchStr(cdsNota.FieldByName('CLI_ESTADO').AsString,
          ['ES', 'RR', 'AP', 'AM', 'PA', 'MA', 'CE', 'RN', 'PB', 'AL', 'SE', 'BA', 'AC', 'RO', 'TO', 'GO', 'MT', 'MS', 'PE']) then
      icmsdest := '7'
    else
      icmsdest := '12';

    { consumidor final }
    cpf_cnpj := LimpaNumStr(cdsNota.fieldByName('CLI_CPFCGC').AsString);
    ie := LimpaNumStr(cdsNota.fieldByName('CLI_RGIE').AsString);
    if length(cpf_cnpj) < 13 then
     begin
       consumidorfinal := true;
       writeln(arquivo, 'indFinal=1');
     end else
     begin
       if (ie = '') or (uppercase(ie) = 'ISENTO') then
        begin
          consumidorfinal := true;
          writeln(arquivo, 'indFinal=1');
        end else
        begin
          consumidorfinal := false;
          writeln(arquivo, 'indFinal=0');
        end;
     end;

    if consumidorfinal then
     begin
       if cxPresencial.Checked then
         writeln(arquivo, 'indPres=1')
       else
         writeln(arquivo, 'indPres=2');
     end;

    writeln(arquivo, 'NaturezaOperacao=' + cdsNota.fieldByName('NATUREZAOPERACAO').AsString);
    writeln(arquivo, 'Modelo=55');
    writeln(arquivo, 'Serie=1');
    writeln(arquivo, 'Codigo=' + inttostr(Round(Random(99999999))));
    writeln(arquivo, 'Numero=' + inttostr(nf_numero));
    writeln(arquivo, 'Emissao=' + FormatDateTime('DD/MM/YYYY', now));
    if not ckDataHora.Checked then
      writeln(arquivo, 'Saida=' + FormatDateTime('DD/MM/YYYY', now));
    writeln(arquivo, 'Tipo=' + tipo);
    writeln(arquivo, 'FormaPag=' + inttostr(vista));  // 0=VISTA   1=PRAZO

    CFOP  := funcoes.LimpaNumStr(cdsNota.FieldByName('NOTA_CODNATUOPER').AsString);
    CFOP_SALVO := CFOP;
    if (CFOP='6949') or (CFOP='5949') or (CFOP='5202') or (CFOP='5411') or (CFOP='6202') or (CFOP='1411') or (CFOP='6411') or (CFOP='1202') then
     begin
       dev := True;

       if (CFOP='6949') or (CFOP='5949') then
         writeln(arquivo, 'finNFe=1')
       else
         writeln(arquivo, 'finNFe=4');

       { quantas nfe a devolver }
       try
         j := StrToInt(inputbox('Quantas NFe a devolver?', 'Digite a quantidade', '1'));
       except
         on exception do
           j := 0;
       end;

       { devolvo cada uma }
       for i := 1 to j do
        begin

          { chave a devolver }
          chavedev := inputbox('NFe a devolver', 'Chave (somente números)', '');

          if LimpaNumStr(chavedev) > '' then
           begin
             writeln(arquivo, Format('[NFRef%.3d]', [i]));
             writeln(arquivo, 'refNFe='+LimpaNumStr(chavedev));
             writeln(arquivo, 'Tipo=NFE');
           end;

        end;

//       writeln(arquivo, 'indFinal=0');
//       writeln(arquivo, 'indPres=9');
     end else
     begin
       dev := False;
       writeln(arquivo, 'finNFe=1');
//       writeln(arquivo, 'indFinal=1');
//       writeln(arquivo, 'indPres=3');
     end;

    { empresa }
    writeln(arquivo, '[Emitente]');
    writeln(arquivo, 'CNPJ=' + LimpaNumStr(cdsNota.fieldByName('EMPRESA_CNPJ').AsString));
    writeln(arquivo, 'IE=' + cdsNota.fieldByName('EMPRESA_IE').AsString);
    writeln(arquivo, 'Razao=' + cdsNota.fieldByName('EMPRESA_RAZAOSOCIAL').AsString);
    writeln(arquivo, 'Fantasia=' + cdsNota.fieldByName('EMPRESA_NOME').AsString);
    writeln(arquivo, 'Fone=' + cdsNota.fieldByName('EMPRESA_FONE').AsString);
    writeln(arquivo, 'CEP=' + LimpaNumStr(cdsNota.FieldByName('EMPRESA_CEP').AsString));
    writeln(arquivo, 'Logradouro=' + cdsNota.FieldByName('EMPRESA_LOGRADOURO').AsString);
    writeln(arquivo, 'Numero=' + cdsNota.FieldByName('EMPRESA_NUMERO').AsString);
    writeln(arquivo, 'Complemento=' + cdsNota.FieldByName('EMPRESA_COMPLEMENTO').AsString);
    writeln(arquivo, 'Bairro=' + cdsNota.FieldByName('EMPRESA_BAIRRO').AsString);
    writeln(arquivo, 'CidadeCod=' + cdsNota.FieldByName('EMPRESA_MUNIBGE').AsString);
    writeln(arquivo, 'Cidade=' + cdsNota.FieldByName('EMPRESA_CIDADE').AsString);
    writeln(arquivo, 'UF=' + cdsNota.FieldByName('EMPRESA_ESTADO').AsString);
    writeln(arquivo, 'IM=' + cdsNota.FieldByName('EMPRESA_IM').AsString);
    writeln(arquivo, 'CNAE=' + cdsNota.FieldByName('EMPRESA_CNAE').AsString);
    writeln(arquivo, 'PaisCod=1058');
    writeln(arquivo, 'Pais=BRASIL');
    if simples {and (tipo = '1')} then
     begin
       writeln(arquivo, 'CRT=1');
     end;

    { cliente }
    writeln(arquivo, '[Destinatario]');
    writeln(arquivo, 'CNPJ=' + cpf_cnpj);

    cpf_cnpj := LimpaNumStr(cdsNota.fieldByName('CLI_CPFCGC').AsString);
    ie := LimpaNumStr(cdsNota.fieldByName('CLI_RGIE').AsString);
    if length(cpf_cnpj) < 13 then
     begin
       writeln(arquivo, 'indIEDest=9');
     end else
     begin
       if (ie = '') or (uppercase(ie) = 'ISENTO') then
        begin
          if MatchStr(cdsNota.FieldByName('CLI_ESTADO').AsString,
                ['AM', 'BA', 'CE', 'GO', 'MG', 'MT', 'PE', 'RN', 'SE', 'SP', 'SC', 'RS']) then
            writeln(arquivo, 'indIEDest=9')
          else
            writeln(arquivo, 'indIEDest=2');
        end else
        begin
          comie := true;
          writeln(arquivo, 'indIEDest=1');
          writeln(arquivo, 'IE=' + ie);
        end;
     end;

    writeln(arquivo, 'ISUF=');
    writeln(arquivo, 'NomeRazao=' + cdsNota.fieldByName('CLI_RAZAOSOCIAL').AsString);
    writeln(arquivo, 'Fone=' + cdsNota.fieldByName('CLI_FONE').AsString);
    writeln(arquivo, 'CEP=' + funcoes.LimpaNumStr(cdsNota.FieldByName('CLI_CEP').AsString));
    writeln(arquivo, 'Logradouro=' + cdsNota.FieldByName('CLI_LOGRADOURO').AsString);
    writeln(arquivo, 'Numero=' + cdsNota.FieldByName('CLI_NUMERO').AsString);
    writeln(arquivo, 'Complemento=' + cdsNota.FieldByName('CLI_COMPLEMENTO').AsString);
    writeln(arquivo, 'Bairro=' + cdsNota.FieldByName('CLI_BAIRRO').AsString);
    writeln(arquivo, 'CidadeCod=' + cdsNota.FieldByName('CLI_MUNIBGE').AsString);
    writeln(arquivo, 'Cidade=' + cdsNota.FieldByName('CLI_CIDADE').AsString);
    writeln(arquivo, 'UF=' + cdsNota.FieldByName('CLI_ESTADO').AsString);
    writeln(arquivo, 'PaisCod=1058');
    writeln(arquivo, 'Pais=BRASIL');

    { lançamento de produtos }
    if ckAcrescimo.Checked then
     begin
       quant_itens := cdsItens.RecordCount;
       rateio := trunc((edtAcrescimo.Value / quant_itens) * 100) / 100;
       rateio_resto := edtAcrescimo.Value - (rateio * quant_itens);
       rateiofrete := trunc((edtFrete.Value / quant_itens) * 100) / 100;
       rateiofrete_resto := edtFrete.Value - (rateiofrete * quant_itens);
     end else
     begin
       rateio := 0;
       rateio_resto := 0;
       rateiofrete := 0;
       rateiofrete_resto := 0;
     end;
    i := 0;
    base := 0;
    while not cdsItens.EOF do
     begin
       inc(i);

       CFOP := CFOP_SALVO;

       origem := copy(cdsItens.FieldByName('SITTRIBU').AsString, 1, 1);

       if cdsItens.FieldByName('PS').AsString = 'P' then
        begin

          { produto }
          CST   := copy(cdsItens.FieldByName('SITTRIBU').AsString, 2, 2);
          if dev then
          begin
//            if (CFOP='6949') or (CFOP='5949') then
//              CSOSN := '400'
//            else
            if CST='41' then
              CSOSN := '500'
            else
            begin
              CSOSN := '900';
              base := base + cdsItens.FieldByName('VALOR_PAGO').AsCurrency;
            end;
          end else
          begin
            if simples then
             begin
               if outroestado then
                begin
                  CSOSN := '102'
                end else
                begin
                  if comie then
                    CSOSN := '101'
                  else
                    CSOSN := '102';
                end;

               if length(cpf_cnpj) < 13 then
                 CSOSN := '102';
             end;
            if ((CST = '10') or (CST = '60')) and ((CFOP = '5102') or (CFOP = '6102') or (CFOP = '6108') or
               (CFOP = '5405') or (CFOP = '6403')) then
             begin
               sub := true;
               if simples then
                begin
                  CSOSN := '500';
                end;
               if outroestado then
                 CFOP := '6404'
               else
                 CFOP := '5405';
             end else
             begin
               if simples then
                begin
                  if outroestado then
                   begin
                     if (CFOP = '6102') and consumidorfinal then
                       CFOP := '6108';
//                     if (CFOP = '6102') and (not consumidorfinal) then
//                       CFOP := '6212';
                   end;
                  if CST='90' then
                    CSOSN := '400';
                  if (CST='41') and (CFOP='5411') then
                    CSOSN := '500';
                end;
               if (CST<>'41') and (CST<>'90') then
                 base := base + cdsItens.FieldByName('VALOR_PAGO').AsCurrency;
             end;
          end;
          writeln(arquivo, Format('[Produto%.3d]', [i]));
          writeln(arquivo, 'CFOP=' + CFOP);
          { verifico se existe partnumber }
          if trim(cdsItens.FieldByName('PARTNUMBER').AsString) > '' then
            writeln(arquivo, 'Codigo=' + cdsItens.FieldByName('PARTNUMBER').AsString)
          else
            writeln(arquivo, 'Codigo=' + cdsItens.FieldByName('CODIGO').AsString);
          writeln(arquivo, 'EAN=' + cdsItens.FieldByName('BARRA').AsString);
          writeln(arquivo, 'cEANTrib=' + cdsItens.FieldByName('BARRA').AsString);
          if cdsItens.FieldByName('NCM').AsInteger > 0 then
            writeln(arquivo, 'NCM=' + cdsItens.FieldByName('NCM').AsString)
          else if cdsItens.FieldByName('NCM').AsInteger = 0 then
            writeln(arquivo, 'NCM=00000000');
          writeln(arquivo, 'Descricao=' + cdsItens.FieldByName('DESCRICAO2').AsString);
          writeln(arquivo, 'Unidade=' + cdsItens.FieldByName('UNIDADE').AsString);
          writeln(arquivo, 'Quantidade=' + FloatToStrF(cdsItens.FieldByName('QUANTIDADE').AsCurrency, ffFixed, 18, 2));
          if not ckDesconto.Checked then
           begin
             writeln(arquivo, 'ValorUnitario=' + FloatToStrF(cdsItens.FieldByName('VALOR_ITEM').AsCurrency, ffFixed, 18, 2));
             writeln(arquivo, 'ValorTotal=' + FloatToStrF(cdsItens.FieldByName('VALOR_PAGO').AsCurrency, ffFixed, 18, 2));
             descontoun := 0;
           end else
           begin
             writeln(arquivo, 'ValorUnitario=' + FloatToStrF(cdsItens.FieldByName('VALOR_VENDA').AsCurrency, ffFixed, 18, 2));
             writeln(arquivo, 'ValorTotal=' + FloatToStrF(cdsItens.FieldByName('VALOR_VENDA').AsCurrency *
                cdsItens.FieldByName('QUANTIDADE').AsCurrency, ffFixed, 18, 2));
             desconto := desconto + cdsItens.FieldByName('DESCONTO').AsCurrency;
             descontoun := cdsItens.FieldByName('DESCONTO').AsCurrency;
             writeln(arquivo, 'ValorDesconto=' + FloatToStrF(descontoun, ffFixed, 18, 2));
           end;
          if ckAcrescimo.Checked then
           begin
             if (i = 1) then
              begin
                writeln(arquivo, 'vOutro=' + FloatToStrF(rateio+rateio_resto, ffFixed, 18, 2));
                writeln(arquivo, 'vFrete=' + FloatToStrF(rateiofrete+rateiofrete_resto, ffFixed, 18, 2))
              end else
              begin
                writeln(arquivo, 'vOutro=' + FloatToStrF(rateio, ffFixed, 18, 2));
                writeln(arquivo, 'vFrete=' + FloatToStrF(rateiofrete, ffFixed, 18, 2));
              end;
           end;

          writeln(arquivo, 'indTot=1');
          writeln(arquivo, Format('[ICMS%.3d]', [i]));
          if simples and (tipo = '1') then
           begin
             writeln(arquivo, 'CSOSN=' + CSOSN);
           end else
           begin
             writeln(arquivo, 'CST=' + CST);
           end;
          writeln(arquivo, 'Origem=' + origem);
          writeln(arquivo, 'ValorBase=' + FloatToStrF(cdsItens.FieldByName('VALOR_PAGO').AsCurrency + descontoun, ffFixed, 18, 2));
          if dev and (not cxICMS.Checked) then
           begin
             devicms1 := (cdsItens.FieldByName('VALOR_PAGO').AsCurrency + descontoun) *
              (formPrincipal.cdsPerfil.FieldByName('ALIQUOTA_ICMSSIMPLES').AsFloat/100);
             devicmstotal := devicmstotal + devicms1;
             writeln(arquivo, 'Aliquota=' + FloatToStrF(formPrincipal.cdsPerfil.FieldByName('ALIQUOTA_ICMSSIMPLES').AsFloat, ffFixed, 18, 2));
             writeln(arquivo, 'Valor=' + FloatToStrF(devicms1, ffFixed, 18, 2));
           end else
           begin
             writeln(arquivo, 'Aliquota=0');
             writeln(arquivo, 'Valor=0');
           end;

          if outroestado and (not dev) then
           begin

             { ICMS UF DEST }
             if MatchStr(origem, ['1', '2', '3', '8']) then
               icmsdest := '4';

             if (CSOSN <> '500') or ((CSOSN = '500') and
               MatchStr(cdsNota.FieldByName('CLI_ESTADO').AsString,
                ['AM', 'BA', 'CE', 'GO', 'MG', 'MT', 'PE', 'RN', 'SE'])) then
              begin
                if (CSOSN <> '400') and (CFOP <> '6915')
                   and (not comie) then
                 begin
                   if not MatchStr(cdsNota.FieldByName('CLI_ESTADO').AsString,
                      ['RJ', 'DF']) then
                    begin
                     writeln(arquivo, Format('[ICMSUFDEST%.3d]', [i]));
                     writeln(arquivo, 'vBCUFDest=0');       // simples
                     writeln(arquivo, 'pFCPUFDest=2');      // simples
                     writeln(arquivo, 'pICMSUFDest=0');     // simples
                     writeln(arquivo, 'pICMSinter='+icmsdest);
                     writeln(arquivo, 'pICMSinterPart=100'); // 2019
                     writeln(arquivo, 'vFCPUFDest=0');
                     writeln(arquivo, 'vICMSUFDest=0');
                     writeln(arquivo, 'vICMSUFRemet=0');    // simples
                    end;
                 end;
              end;

           end;


        end else
        begin

          if cdsItens.FieldByName('VALOR_ITEM').AsCurrency > 0 then
           begin

              { serviço }
              writeln(arquivo, Format('[Produto%.3d]', [i]));
              if cdsNota.FieldByName('EMPRESA_ESTADO').AsString = cdsNota.FieldByName('CLI_ESTADO').AsString then
                writeln(arquivo, 'CFOP=5933') else
                writeln(arquivo, 'CFOP=6933');
              writeln(arquivo, 'Codigo=' + cdsItens.FieldByName('CODIGO').AsString);
              writeln(arquivo, 'EAN=' + cdsItens.FieldByName('BARRA').AsString);
              writeln(arquivo, 'NCM=99');
              writeln(arquivo, 'Descricao=' + cdsItens.FieldByName('DESCRICAO1').AsString);
              writeln(arquivo, 'Unidade=UN');
              writeln(arquivo, 'Quantidade=' + FloatToStrF(cdsItens.FieldByName('QUANTIDADE').AsCurrency, ffFixed, 18, 2));
              writeln(arquivo, 'ValorUnitario=' + FloatToStrF(cdsItens.FieldByName('VALOR_ITEM').AsCurrency, ffFixed, 18, 2));
              writeln(arquivo, 'ValorTotal=' + FloatToStrF(cdsItens.FieldByName('VALOR_PAGO').AsCurrency, ffFixed, 18, 2));
              writeln(arquivo, 'indTot=0');
              writeln(arquivo, Format('[ICMS%.3d]', [i]));
              writeln(arquivo, 'CST=41');
              writeln(arquivo, 'Origem=0');
              writeln(arquivo, 'ValorBase=0');
              writeln(arquivo, 'Aliquota=0');
              writeln(arquivo, 'Valor=0');
              writeln(arquivo, Format('[ISSQN%.3d]', [i]));
              writeln(arquivo, 'ValorBase=0' {+ FloatToStrF(cdsItens.FieldByName('VALOR_PAGO').AsCurrency, ffFixed, 18, 2)});
              writeln(arquivo, 'Aliquota=0' {+ FloatToStrF(cdsNota.FieldByName('ISSALIQ').AsCurrency, ffFixed, 18, 2)});
              writeln(arquivo, 'ValorISSQN=0' {+ FloatToStrF(cdsItens.FieldByName('VALOR_PAGO').AsCurrency * (cdsNota.FieldByName('ISSALIQ').AsCurrency / 100), ffFixed, 18, 2)});
              writeln(arquivo, 'MunicipioFatoGerador=' + cdsNota.FieldByName('EMPRESA_MUNIBGE').AsString);
              writeln(arquivo, 'CodigoServico=1402'); // assistência técnica

           end;

        end;

       { próximo produto }
       cdsItens.Next;
     end;

    { total }
    writeln(arquivo, '[Total]');
    if dev and (not cxICMS.Checked) then
     begin
       writeln(arquivo, 'BaseICMS=' + FloatToStrF(base, ffFixed, 18, 2));
       writeln(arquivo, 'ValorICMS='+ FloatToStrF(devicmstotal, ffFixed, 18, 2));
     end else
     begin
       writeln(arquivo, 'BaseICMS=0' {+ FloatToStrF(base, ffFixed, 18, 2)});
       writeln(arquivo, 'ValorICMS=0');
     end;

    if outroestado then
     begin
       { ICMS UF DEST }
       writeln(arquivo, 'vFCPUFDest=0');      // simples
       writeln(arquivo, 'vICMSUFDest=0');     // simples
       writeln(arquivo, 'vICMSUFRemet=0');    // simples
     end;

    writeln(arquivo, 'ValorProduto=' + FloatToStrF(cdsNota.FieldByName('VALOR_PRODUTOS').AsCurrency + desconto, ffFixed, 18, 2));
    writeln(arquivo, 'ValorDesconto=' + FloatToStrF(desconto, ffFixed, 18, 2));
    writeln(arquivo, 'ValorServicos=' + FloatToStrF(cdsNota.FieldByName('VALOR_SERVICOS').AsCurrency, ffFixed, 18, 2));
    writeln(arquivo, 'ValorBaseISS=0' {+ FloatToStrF(cdsNota.FieldByName('VALOR_SERVICOS').AsCurrency, ffFixed, 18, 2)});
    writeln(arquivo, 'ValorISSQN=0' {+ FloatToStrF(cdsNota.FieldByName('VALOR_ISS').AsCurrency, ffFixed, 18, 2)});
    if ckAcrescimo.Checked then
     begin
       writeln(arquivo, 'ValorOutrasDespesas=' + FloatToStrF(edtAcrescimo.Value, ffFixed, 18, 2));
       writeln(arquivo, 'ValorFrete=' + FloatToStrF(edtFrete.Value, ffFixed, 18, 2));
       writeln(arquivo, 'ValorNota=' + FloatToStrF(cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsCurrency + edtAcrescimo.Value + edtFrete.Value, ffFixed, 18, 2));
     end else
     begin
       writeln(arquivo, 'ValorNota=' + FloatToStrF(cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsCurrency, ffFixed, 18, 2));
     end;


    if cdsNota.FieldByName('EMPRESA_ESTADO').AsString = cdsNota.FieldByName('CLI_ESTADO').AsString then
     begin

      { transportador }
      writeln(arquivo, '[Transportador]');
      if trim(cdsNota.FieldByName('TRA_NOME').AsString) = '' then
       begin
         writeln(arquivo, 'FretePorConta=0');
       end else
       begin
         writeln(arquivo, 'FretePorConta=' + cdsNota.fieldByName('NOTA_FRETE').AsString);
         writeln(arquivo, 'CnpjCpf=' + cdsNota.fieldByName('TRA_CPFCGC').AsString);
         writeln(arquivo, 'IE=' + cdsNota.fieldByName('TRA_RGIE').AsString);
         writeln(arquivo, 'NomeRazao=' + cdsNota.fieldByName('TRA_NOME').AsString);
         writeln(arquivo, 'Endereco=' + trim(cdsNota.FieldByName('TRA_LOGRADOURO').AsString) + ' ' + cdsNota.FieldByName('TRA_NUMERO').AsString);
         writeln(arquivo, 'CidadeCod=' + cdsNota.FieldByName('TRA_MUNIBGE').AsString);
         writeln(arquivo, 'Cidade=' + cdsNota.FieldByName('TRA_CIDADE').AsString);
         writeln(arquivo, 'UF=' + cdsNota.FieldByName('TRA_ESTADO').AsString);
         writeln(arquivo, 'CEP=' + cdsNota.FieldByName('TRA_CEP').AsString);
         writeln(arquivo, 'Placa=' + cdsNota.FieldByName('NOTA_PLACAVEICULO').AsString);
         if trim(cdsNota.FieldByName('NOTA_UFVEICULO').AsString) > '' then
           writeln(arquivo, 'UFPlaca=' + cdsNota.FieldByName('NOTA_UFVEICULO').AsString)
         else
           writeln(arquivo, 'UFPlaca=AAA9999');

         if cdsNota.FieldByName('EMPRESA_ESTADO').AsString = cdsNota.FieldByName('CLI_ESTADO').AsString then
           writeln(arquivo, 'CFOP=5353') else
           writeln(arquivo, 'CFOP=6353');
         if cdsNota.FieldByName('NOTA_QUANTIDADE').AsInteger > 0 then
          begin
            writeln(arquivo, '[Volume001]');
            writeln(arquivo, 'Quantidade=' + cdsNota.fieldByName('NOTA_QUANTIDADE').AsString);
            writeln(arquivo, 'Especie=CAIXAS');
            writeln(arquivo, 'Marca=');
            writeln(arquivo, 'Numeracao=1');
            writeln(arquivo, 'PesoLiquido=' + cdsNota.fieldByName('NOTA_PESOLIQUIDO').AsString);
            writeln(arquivo, 'PesoBruto=' + cdsNota.fieldByName('NOTA_PESOBRUTO').AsString);
          end;
       end;

     end;

    { fatura }
    writeln(arquivo, '[Fatura]');
    writeln(arquivo, 'Numero= ' + FormatFloat('000000',nf_numero));
    writeln(arquivo, 'ValorOriginal=' + FloatToStrF(cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsCurrency, ffFixed, 18, 2));
    writeln(arquivo, 'ValorDesconto= 0,00');
    writeln(arquivo, 'ValorLiquido=' + FloatToStrF(cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsCurrency, ffFixed, 18, 2));

    if dev then
     begin

      { fatura }
      writeln(arquivo, '[PAG001]');
      writeln(arquivo, 'tpag=90');

     end else
     begin

      { duplicatas }
      i := 1;
      cdsPagamentos.First;
      while not (cdsPagamentos.Eof) do
       begin
         writeln(arquivo, Format('[Duplicata%.3d]', [i]));
         writeln(arquivo, 'Numero=' + Format('%.3d', [i]));
//         writeln(arquivo, 'Numero=' + FormatFloat('000000',nf_numero) + '-' + IntToStr(i));
         writeln(arquivo, 'DataVencimento=' + FormatDateTime('dd/mm/yyyy',cdsPagamentosDATAVENCIMENTO.AsDateTime));
  //       writeln(arquivo, 'Valor=' + FormatFloat('#,###,##0.00',cdsPagamentosVALOR.AsCurrency));
         writeln(arquivo, 'Valor=' + FloatToStrF(cdsPagamentosVALOR.AsCurrency, ffFixed, 18, 2));
         inc(i);
         cdsPagamentos.Next;
       end;

      { fatura }
      writeln(arquivo, '[PAG001]');
      writeln(arquivo, 'tpag=01');
      writeln(arquivo, 'tpIntegra=2');
      writeln(arquivo, 'vPag='+FloatToStrF(cdsNota.FieldByName('NOTA_VALOR_TOTAL').AsCurrency, ffFixed, 18, 2));
      writeln(arquivo, 'vTroca=0');

     end;


    { dados adicionais }
    writeln(arquivo, '[DadosAdicionais]');
    writeln(arquivo, 'Complemento=CODIGO INTERNO ' + cdsNota.FieldByName('CODIGO').AsString + '. ' +
      cdsNota.FieldByName('OBSERVACOES').AsString + '"');

    { finalização }
    writeln(arquivo, ',1,1)');

    { encerro o arquivo }
    CloseFile(arquivo);

    { arquivo gerado }
    Label3.Caption := Label3.Caption + ' [ok]';
    Label3.Font.Color := clBlack;
    Application.ProcessMessages;

    { aguardar retorno }
    tmrRetorno.Enabled := True;

  except

    on exception do
     begin

       { encerro o arquivo }
       CloseFile(arquivo);
       try
         DeleteFile('C:\ACBrMonitorPLUS\ENT.TXT');
       except
       end;

       { arquivo não foi gerado }
       Label3.Caption := Label3.Caption + ' [erro]';
       Label3.Font.Color := clBlack;
       formPrincipal.SocketConnection.Close;
       Application.ProcessMessages;

     end;

  end;

end;

procedure TformNFeGerar.cxButton2Click(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TformNFeGerar.tmrRetornoTimer(Sender: TObject);
var
  RetornoIni: TIniFile;
  secao,
  chave,
  motivo,
  arquivo,
  stat: string;
  arq: TextFile;
begin
  { contagem de tempo }
  tmrRetorno.Tag := tmrRetorno.Tag + 1;
  if tmrRetorno.Tag > 60 then
   begin
     tmrRetorno.Enabled := False;
     { erro }
     Label4.Caption := 'Retorno [erro]';
     Label4.Font.Color := clBlack;
     cxButton2.Enabled := True;
     Application.ProcessMessages;
     formPrincipal.MsgError('Tempo de resposta esgotado.', 'NFe');
     exit;
   end;

  { retorno }
  if FileExists('C:\ACBrMonitorPLUS\SAI.TXT') then
   begin
     tmrRetorno.Enabled := False;

     { analise do retorno }
     RetornoIni := TIniFile.Create('C:\ACBrMonitorPLUS\SAI.TXT');
     secao := Format('NFE%d', [nf_numero]);
     chave := RetornoIni.ReadString(secao, 'ChNFe', 'ERRO');
     motivo := RetornoIni.ReadString(secao, 'XMotivo', 'ERRO');
     arquivo := RetornoIni.ReadString(secao, 'Arquivo', 'ERRO');
     stat := RetornoIni.ReadString(secao, 'CStat', '0');
     RetornoIni.Free;

     { carrego o retorno }
     Memo1.Lines.LoadFromFile('C:\ACBrMonitorPLUS\SAI.TXT');
     DeleteFile('C:\ACBrMonitorPLUS\SAI.TXT');
     retorno := Memo1.Text;

     { erro ou sucesso }
     if stat <> '100' then
      begin
        { erro }
        Label4.Caption := 'Retorno [erro]';
        Label4.Font.Color := clBlack;
        cxButton2.Enabled := True;
        try
          if arquivo <> 'ERRO' then
            DeleteFile(arquivo);
        except
        end;
        Application.ProcessMessages;
        formPrincipal.MsgError('ERRO!'+#13#10#13#10+motivo, 'NFe');
      end else
      begin
        { bem sucedido }
        Label4.Caption := 'Retorno [ok]';
        Label4.Font.Color := clBlack;
        Application.ProcessMessages;

        { gravar resultado na base }
        cdsNFEMissao.Params[0].AsInteger := codMovimento;
        cdsNFEMissao.Params[1].AsInteger := nf_numero;
        cdsNFEMissao.Params[2].AsString := 'NFE';
        cdsNFEMissao.Params[3].Value := formPrincipal.GetTime;
        cdsNFEMissao.Params[4].Value := formPrincipal.GetTime;
        cdsNFEMissao.Params[5].AsString := chave;
        cdsNFEMissao.execute;

        { envio de email }
        AssignFile(arq, 'C:\ACBrMonitorPLUS\ENT.TXT');
        try
          ReWrite(arq);
          writeln(arq, 'NFe.EnviarEmail(' +
             email_destino + ',' +
             arquivo + ',1,' +
             Format('%s - NFE %d', [empresa_nome, nf_numero]) + ',' +
             email_copia + ')');
          CloseFile(arq);
        except
        end;

        { final }
        Label5.Caption := 'Sucesso!';
        Label5.Font.Color := clBlack;
        cxButton1.Visible := False;
        cxButton2.Enabled := True;
        formPrincipal.SocketConnection.Close;
        Application.ProcessMessages;
      end;
   end;
end;

end.
