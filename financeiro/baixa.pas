unit baixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxCheckBox, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxMemo, cxControls,
  cxContainer, cxEdit, cxTextEdit, DB, cxDBLookupComboBox, dxmdaset,
  DBClient, ppDB, ppBands, ppCache, ppClass, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppPrnabl, ppStrtch, ppRichTx,
  ppCtrls, Menus, cxGraphics, GIFImg, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, cxLookAndFeels, ppParameter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinDevExpressStyle, ppDesignLayer;

type
  TformBaixa = class(TForm)
    cdsContas: TClientDataSet;
    cdsContasCODIGO: TIntegerField;
    cdsContasCONTA: TStringField;
    dsrContas: TDataSource;
    cdsBaixa: TClientDataSet;
    dxDadosBaixa: TdxMemData;
    dsrDadosBaixa: TDataSource;
    dxDadosBaixaCODIGO: TIntegerField;
    dxDadosBaixaCLIENTE: TStringField;
    dxDadosBaixaMOVIMENTOS: TStringField;
    dxDadosBaixaVALOR: TFloatField;
    dxDadosBaixaACRESCIMO: TFloatField;
    dxDadosBaixaCODCONTA: TIntegerField;
    dxDadosBaixaTOTAL: TFloatField;
    dxDadosBaixaCODCLIENTE: TIntegerField;
    dxDadosBaixaDESCONTO: TFloatField;
    dxDadosBaixaPARCIAL: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel3: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    dedACRESCIMO: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    ckComprovante: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dedPARCIAL: TcxDBTextEdit;
    ckParcial: TcxDBCheckBox;
    Bevel1: TBevel;
    Label5: TLabel;
    cxDBMemo2: TcxDBMemo;
    dxDadosBaixaEXTENSO: TStringField;
    ppDBPipeline: TppDBPipeline;
    ppReportReceber: TppReport;
    ppDetailBand1: TppDetailBand;
    ppRichText1: TppRichText;
    dxDadosBaixaDATAEXTENSO: TStringField;
    dxDadosBaixaEMPRESA: TStringField;
    dxDadosBaixaCNPJ: TStringField;
    dxDadosBaixaCPF: TStringField;
    dxDadosBaixaVALORFMT: TStringField;
    dxDadosBaixaCOMPROVANTE: TStringField;
    ppRichText2: TppRichText;
    ppLine1: TppLine;
    ppReportPagar: TppReport;
    ppDetailBand2: TppDetailBand;
    ppRichText3: TppRichText;
    ppRichText4: TppRichText;
    ppLine2: TppLine;
    procedure FormShow(Sender: TObject);
    procedure dxDadosBaixaCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure dedACRESCIMOEnter(Sender: TObject);
    procedure dedACRESCIMOExit(Sender: TObject);
    procedure dxDadosBaixaPARCIALChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo: longint;
    valor: extended;
    codcliente: longint;
    cliente: string;
    movimentos: string;
    codconta: longint;
    contador: integer;
    pagar: boolean;
  end;

var
  formBaixa: TformBaixa;

implementation

uses principal;

{$R *.dfm}

function Extenso(XValor: Real): String;
var
Centavo,Real,Mil,Milhoes,E,T,XTx,XVal1,XVal2,Msg:String;
Cent1,XConta:Integer;
const
UN: array[1..19] of string = ('um ', 'dois ', 'tres ', 'quatro ', 'cinco ', 'seis ', 'sete ', 'oito ', 'nove ','dez ','onze ', 'doze ', 'treze ', 'quatorze ', 'quinze ', 'dezesseis ', 'dezessete ', 'dezoito ', 'dezenove ');
DZ: array[2..9] of string = ('vinte ', 'trinta ', 'quarenta ', 'cinquenta ', 'sessenta ', 'setenta ', 'oitenta ', 'noventa ');
CT: array[1..9] of String = ('cento ', 'duzentos ', 'trezentos ', 'quatrocentos ', 'quinhentos ', 'seiscentos ', 'setecentos ', 'oitocentos ', 'novecentos ');
begin
 Msg:='';
 Result:='';
 Str(XValor:2:2,T);
 XConta:=Length(T)-1;
 XValor:=StrToFloat(IntToStr(Trunc(XValor))+','+Copy(T,XConta,2));
 XTx:=FormatFloat('000000000.00',XValor);
 if (StrToFloat(XTx)>999999999.99) or (XTx='') then begin
  Msg:=Msg+'VALOR SUPERIOR A R$ 999.999.999,99 MILHÕES,';
  Msg:=Msg+'OU BASE PARA DESCRIÇÃO É NULO.';
  Msg:=Msg+'EXTENSO IMPOSSÍVEL DE SER GERADO.';
  Msg:=Msg+'FAVOR PROCEDER A CORREÇÃO.';
  ShowMessage(Msg);
  Exit;
 end;
// Escrevendo Milhoes (casa da centena)
 XVal1:=Copy(XTx,1,1);
 if (XVal1='1') and (Copy(XTx,1,3)='100') then Result:=Result+'cem '
 else if StrToFloat(XVal1)>0 then Result:=Result+CT[StrToInt(Copy(XTx,1,1))];
 E:='e ';
 if Copy(XTx,1,1)='0' then E:='';
// Escrevendo Milhoes (casa da dezena), se for dezena redonda
 XVal1:=Copy(XTx,2,1);
 if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,2,1))];
// Escrevendo Milhoes (casa da dezena) se for casa dos dez
 XVal2:=Copy(XTx,2,2);
 if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,2,2))];
 E:='e ';
 if Copy(XTx,1,2)='00' then E:='';
// Escrevendo Milhoes (casa da dezena) se for casa da dezena+unidades
 XVal2:=Copy(XTx,2,1);
 XVal1:=Copy(XTx,3,1);
 if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,3,1))];
 MILHOES:='milhões ';
 if Copy(XTx,1,3)='001' then MILHOES:='milhão ';
 if Copy(XTx,1,3)='000' then MILHOES:='';
// Escrevendo milhões
 if (StrToFloat(Copy(XTx,4,6))>0) and (Copy(XTx,1,3)<>'000') then Result:=Result+MILHOES+', '
 else Result:=Result+MILHOES;
// Escrevendo Mil (casa da centena)
 XVal1:=Copy(XTx,4,1);
 if (XVal1='1') and (Copy(XTx,4,3)='100') then Result:=Result+'cem '
 else if StrToFloat(XVal1)>0 then Result:=Result+CT[StrToInt(Copy(XTx,4,1))];
 E:='e ';
 if Copy(XTx,4,1)='0' then E:='';
// Escrevendo Mil (casa da dezena), se for dezena redonda
 XVal1:=Copy(XTx,5,1);
 if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,5,1))];
// Escrevendo Mil (casa da dezena) se for casa dos dez
 XVal2:=Copy(XTx,5,2);
 if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,5,2))];
 E:='e ';
 if Copy(XTx,4,2)='00' then E:='';
// Escrevendo Mil (casa da dezena) se for casa da dezena+unidades
 XVal2:=Copy(XTx,5,1);
 XVal1:=Copy(XTx,6,1);
 if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,6,1))];
 MIL:='mil ';
 if Copy(XTx,4,3)='000' then MIL:='';
// Escrevendo Reais
 if (StrToFloat(Copy(XTx,7,3))>0) and (Copy(XTx,4,3)<>'000') then Result:=Result+MIL+', '
 else Result:=Result+MIL;
// Escrevendo Reais (casa da centena)
 XVal1:=Copy(XTx,7,1);
 if (XVal1='1') and (Copy(XTx,7,3)='100') then Result:=Result+'cem '
 else if StrToFloat(XVal1)>0 then Result:=Result+CT[StrToInt(Copy(XTx,7,1))];
 E:='e ';
 if Copy(XTx,7,1)='0' then E:='';
// Escrevendo Reais (casa da dezena), se for dezena redonda
 XVal1:=Copy(XTx,8,1);
 if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,8,1))];
// Escrevendo Reais (casa da dezena) se for casa dos dez
 XVal2:=Copy(XTx,8,2);
 if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,8,2))];
 E:='e ';
 if (Copy(XTx,8,1)='0') or (Copy(XTx,8,2)='00') then E:='';
// Escrevendo Reais (casa da dezena) se for casa da dezena+unidades
 XVal2:=Copy(XTx,8,1);
 XVal1:=Copy(XTx,9,1);
 if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,9,1))];
 Real:='reais ';
 if Copy(XTx,4,6)='000000' then Real:='de reais ';
 if (Copy(XTx,7,3)='000') and (Int(StrToFloat(XTx))=0) then Real:='';
 if Copy(XTx,7,3)='001' then Real:='real ';
 if Copy(XTx,4,3)='001' then Real:='reais ';
// Escrevendo Reais
 Result:=Result+Real;
 E:='e ';
 if int(StrToFloat(XTx))=0 then E:='';
 Cent1:=0;
 if Copy(XTx,11,2)='00' then Cent1:=1;
// Escrevendo Centavos (casa dezena) se for dezena redonda
 XVal1:=Copy(XTx,11,1);
 if StrToFloat(XVal1)>1 then Result:=Result+E+Dz[StrToInt(Copy(XTx,11,1))];
// Escrevendo Centavos (casa dezena) se for casa dos dez
 XVal2:=Copy(XTx,11,2);
 if (StrToFloat(XVal2)>=10) and (StrToFloat(XVal2)<=19) then Result:=Result+E+UN[StrToInt(Copy(XTx,11,2))];
// Escrevendo Centavos (casa da dezena) se for casa da dezena+unidades
 XVal2:=Copy(XTx,11,1);
 XVal1:=Copy(XTx,12,1);
 if (XVal2<>'1') and (XVal1<>'0') then Result:=Result+E+UN[StrToInt(Copy(XTx,12,1))];
 Centavo:='centavos ';
 if Cent1=1 then Centavo:='';
 if Copy(XTx,11,2)='01' then Centavo:='centavo ';
 Result:=Result+Centavo;
end;

procedure TformBaixa.FormShow(Sender: TObject);
begin

  { somente 1 conta = possibilidade da baixa parcial }
  ckParcial.Visible := (contador = 1);
  dedParcial.Visible := (contador = 1);

  try
//    bug do foco da janela
//    formPrincipal.ShowMsg('Lendo Contas...');
    with dxDadosBaixa do
     begin
       Active := True;
       OnCalcFields := nil;
       append;
       fieldByName('CODIGO').AsInteger := codigo;
       fieldByName('CLIENTE').AsString := cliente;
       fieldByName('MOVIMENTOS').AsString := trim(movimentos);
       fieldByName('VALOR').AsFloat := valor;
       fieldByName('CODCONTA').AsInteger := codconta;
       fieldByName('ACRESCIMO').AsFloat := 0;
       fieldByName('CODCLIENTE').AsInteger := codcliente;
       fieldByName('DESCONTO').AsFloat := 0;
       fieldByName('PARCIAL').AsString := 'T';
       fieldByName('EXTENSO').AsString := trim(uppercase(Extenso(valor)));
       fieldByName('DATAEXTENSO').AsString := FormatDateTime(
         'dd "de" mmmm "de" yyyy', formPrincipal.GetTime);
       fieldByName('EMPRESA').AsString :=
         formPrincipal.cdsPerfil.fieldByName('EMP_RAZAOSOCIAL').AsString;
       fieldByName('CNPJ').AsString :=
         formPrincipal.cdsPerfil.fieldByName('EMP_CNPJ').AsString;
       fieldByName('CPF').AsString := '';
       fieldByName('VALORFMT').AsString := FloatToStrF(
         valor, ffCurrency, 18, 2);
       fieldByName('COMPROVANTE').AsString := 'S';
       OnCalcFields := dxDadosBaixaCalcFields;
     end;
    cdsContas.Active := True;
    cdsContas.RemoteServer.Close;
//    formPrincipal.HideMsg;
  except
//    formPrincipal.HideMsg;
  end;
end;

procedure TformBaixa.dxDadosBaixaCalcFields(DataSet: TDataSet);
begin
  dxDadosBaixa.OnCalcFields := nil;
  with dxDadosBaixa do
   begin
     if (fieldByName('DESCONTO').AsFloat > 0) and
        (fieldByName('PARCIAL').AsString = 'P') then
      begin
        fieldByName('TOTAL').AsFloat :=
          fieldByName('DESCONTO').AsFloat +
          fieldByName('ACRESCIMO').AsFloat;
        fieldByName('VALORFMT').AsString := FloatToStrF(
          fieldByName('DESCONTO').AsFloat +
          fieldByName('ACRESCIMO').AsFloat,
          ffCurrency, 18, 2);
        fieldByName('EXTENSO').AsString := trim(uppercase(
          Extenso(
            fieldByName('DESCONTO').AsFloat +
            fieldByName('ACRESCIMO').AsFloat
          )));
      end else
      begin
        fieldByName('TOTAL').AsFloat :=
          fieldByName('VALOR').AsFloat +
          fieldByName('ACRESCIMO').AsFloat;
        fieldByName('VALORFMT').AsString := FloatToStrF(
          fieldByName('VALOR').AsFloat +
          fieldByName('ACRESCIMO').AsFloat,
          ffCurrency, 18, 2);
        fieldByName('EXTENSO').AsString := trim(uppercase(
          Extenso(
            fieldByName('VALOR').AsFloat +
            fieldByName('ACRESCIMO').AsFloat
          )));
      end;
   end;
  dxDadosBaixa.OnCalcFields := dxDadosBaixaCalcFields;
end;

procedure TformBaixa.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TformBaixa.cxButton2Click(Sender: TObject);
begin

  { verificação de senha }
  if not formPrincipal.VerificaSenha(Self, 'Baixar') then exit;

  dxDadosBaixa.OnCalcFields := nil;
  if dxDadosBaixa.State in [dsInsert, dsEdit] then
    dxDadosBaixa.Post;
  dxDadosBaixa.First;

//  with cdsBaixa do
   try
     formPrincipal.ShowMsg('Baixando...');
     cdsBaixa.Params[0].AsInteger :=
       dxDadosBaixa.FieldByName('CODCLIENTE').AsInteger;
     cdsBaixa.Params[1].AsString :=
       dxDadosBaixa.FieldByName('MOVIMENTOS').AsString;
     cdsBaixa.Params[2].AsFloat :=
       dxDadosBaixa.FieldByName('ACRESCIMO').AsFloat;
     cdsBaixa.Params[3].AsFloat :=
       dxDadosBaixa.FieldByName('DESCONTO').AsFloat;
     cdsBaixa.Params[4].AsInteger :=
       dxDadosBaixa.FieldByName('CODCONTA').AsInteger;
     cdsBaixa.Params[5].AsString :=
       formPrincipal.usuario;
     cdsBaixa.Execute;
     formPrincipal.HideMsg;

     { recibo }
     if dxDadosBaixa.FieldByName('COMPROVANTE').AsString = 'S' then
      begin
        if pagar then
          ppReportPagar.Print
        else
          if ecf_class = 'CUPOM' then
           begin
             ECFX.Inicializar;
             ECFX.DadosEmpresa(
               '',        // nome
               '',        // cnpj
               '',        // telefone
               '',                                                       // historico
               formPrincipal.cdsImpressoras.fieldByName('RECIBO').AsString, // impressora
               formPrincipal.cdsPerfil.fieldByName('COPIAS_RECIBO').AsInteger // copias
             );
             ECFX.Recibo(
               dxDadosBaixa.FieldByName('EMPRESA').AsString,
               dxDadosBaixa.FieldByName('CLIENTE').AsString,
               dxDadosBaixa.FieldByName('CNPJ').AsString,
               dxDadosBaixa.FieldByName('CPF').AsString,
               dxDadosBaixa.FieldByName('DATAEXTENSO').AsString,
               dxDadosBaixa.FieldByName('EXTENSO').AsString,
               dxDadosBaixa.FieldByName('VALORFMT').AsString,
               dxDadosBaixa.FieldByName('MOVIMENTOS').AsString,
               formPrincipal.usuario
             );
           end else ppReportReceber.Print;
      end;
     modalresult := mrOk;

   except
     on exception do
      begin
        cdsBaixa.RemoteServer.Close;
        formPrincipal.MsgError(
          'A baixa não foi executada.',
          'Erro');
      end;
   end;

end;

procedure TformBaixa.dedACRESCIMOEnter(Sender: TObject);
begin
   if Sender is TEdit then
    begin
     TEdit(Sender).Color := clInfoBK;
     TEdit(Sender).Font.Style := [fsBold];
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
   if Sender is TcxDBComboBox then
    begin
     TcxDBComboBox(Sender).Style.Color := clInfoBk;
     TcxDBComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBComboBox(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBLookupComboBox then
    begin
     TcxDBLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBLookupComboBox(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBMemo then
    begin
     TcxDBMemo(Sender).Style.Color := clInfoBK;
     TcxDBMemo(Sender).Style.Font.Style := [fsBold];
    end;

end;

procedure TformBaixa.dedACRESCIMOExit(Sender: TObject);
var
  i: word;
begin
   if Sender is TEdit then
    begin
     TEdit(Sender).Color := clWindow;
     TEdit(Sender).Font.Style := [];
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
   if Sender is TcxDBComboBox then
    begin
     TcxDBComboBox(Sender).Style.Color := clWindow;
     TcxDBComboBox(Sender).Style.Font.Style := [];
     TcxDBComboBox(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBLookupComboBox then
    begin
     TcxDBLookupComboBox(Sender).Style.Color := clWindow;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [];
     TcxDBLookupComboBox(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBMemo then
    begin
     TcxDBMemo(Sender).Style.Color := clWindow;
     TcxDBMemo(Sender).Style.Font.Style := [];
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if Assigned((Components[i] as TLabel).OnClick) then
        (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
        (Components[i] as TLabel).Font.Style := [];
end;

procedure TformBaixa.dxDadosBaixaPARCIALChange(Sender: TField);
begin
  dedPARCIAL.Enabled := (Sender.AsString = 'P');
end;

end.
