unit printcupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, DBClient, Menus, GIFImg,
  cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2010Blue,
  dxGDIPlusClasses;

type
  TformPrintCupom = class(TForm)
    Panel1: TPanel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    Image1: TImage;
    Label1: TLabel;
    cdsLoadMov: TClientDataSet;
    cdsLoadItens: TClientDataSet;
    cdsPagamento: TClientDataSet;
    cdsPagamentoSEL: TStringField;
    cdsPagamentoCODIGO: TIntegerField;
    cdsPagamentoNUMERO: TSmallintField;
    cdsPagamentoCODDOCUMENTO: TIntegerField;
    cdsPagamentoSTATUS: TStringField;
    cdsPagamentoDOCUMENTO: TStringField;
    cdsPagamentoTIPO_DOC: TStringField;
    cdsPagamentoTOTAL: TAggregateField;
    cdsPagamentoVALOR: TFloatField;
    cdsPagamentoDATAVENCIMENTO: TSQLTimeStampField;
    cdsPagamentoDATAPAGO: TSQLTimeStampField;
    Label2: TLabel;
    lbCAMINHO: TLabel;
    lbCopias: TLabel;
    dedCopias: TcxComboBox;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codmovimento: integer;
  end;

var
  formPrintCupom: TformPrintCupom;

implementation

uses principal;

{$R *.dfm}

procedure TformPrintCupom.edtSenhaEnter(Sender: TObject);
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

procedure TformPrintCupom.edtSenhaExit(Sender: TObject);
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

procedure TformPrintCupom.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformPrintCupom.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformPrintCupom.cxButton1Click(Sender: TObject);
var
  cupom: integer;
  desconto, sicms: extended;
  CPF,
  endereco: string;
begin

  desconto := 0;

  cdsLoadMov.Params[0].AsInteger := codmovimento;
  cdsLoadMov.Open;

  if cdsLoadMov.fieldByName('PESSOAFISICA').AsString = 'F' then
    CPF := cdsLoadMov.fieldByName('CPF').AsString
  else
    CPF := cdsLoadMov.fieldByName('CGC').AsString;

  ECFX.Inicializar;
  ECFX.DadosEmpresa(
    formPrincipal.cdsPerfil.FieldByName('EMP_NOME').AsString,        // nome
    formPrincipal.cdsPerfil.FieldByName('EMP_CNPJ').AsString,        // cnpj
    formPrincipal.cdsPerfil.FieldByName('EMP_FONE').AsString,        // telefone
    cdsLoadMov.fieldByName('HISTORICOPAG').AsString,                 // historico
    formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString, // impressora
    (dedCopias.ItemIndex + 1) * -1                                   // copias
  );
  ECFX.AbrirCupomFiscal(cupom, CPF);

  cdsLoadItens.Params[0].AsInteger := codmovimento;
  cdsLoadItens.Open;
  while not cdsLoadItens.Eof do
   begin
     if cdsLoadItens.FieldByName('SITTRIBU').AsString = '060' then
       sicms := -1 else
     if cdsLoadItens.FieldByName('SITTRIBU').AsString = '041' then
       sicms := 0 else
       sicms := cdsLoadItens.fieldByName('ICMS_VENDA').AsCurrency;

     ECFX.LancarItem(
       cdsLoadItens.fieldByName('BARRA').AsString,
       cdsLoadItens.fieldByName('VALOR_VENDA').AsCurrency,
       cdsLoadItens.fieldByName('QUANTIDADE').AsCurrency,
       0,
       'UN',
       cdsLoadItens.fieldByName('DESCRICAO1').AsString,
       cdsLoadItens.fieldByName('SERIE').AsString,
       sicms
     );
     desconto := desconto + cdsLoadItens.fieldByName('DESCONTO').AsCurrency *
       cdsLoadItens.fieldByName('QUANTIDADE').AsCurrency;
     cdsLoadItens.Next;
   end;

  ECFX.TotalizaCupomFiscal(
    desconto,
    0);

  cdsPagamento.Params[0].AsInteger := codmovimento;
  cdsPagamento.Open;
  while not cdsPagamento.Eof do
   begin

     { se o documentos estiver fechado eu abro }
     if not formPrincipal.dsrDocumentos.DataSet.Active then
       formPrincipal.cdsDocumentos.Open;
       
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
     cdsPagamento.Next;
   end;

  { endereço do cliente }
  endereco := trim(cdsLoadMov.FieldByName('LOGRADOURO').AsString) + ', ' +
    IntToStr(cdsLoadMov.FieldByName('NUMERO').AsInteger) + ' ' +
    trim(cdsLoadMov.FieldByName('COMPLEMENTO').AsString) + ' - ' +
    trim(cdsLoadMov.FieldByName('BAIRRO').AsString) + ' - ' +
    trim(cdsLoadMov.FieldByName('CIDADE').AsString) + ', ' +
    cdsLoadMov.FieldByName('ESTADO').AsString;

  ECFX.Fechamento(
    trim(cdsLoadMov.FieldByName('NOME').AsString) + ' ' + CPF,
    endereco,
    '',
    cdsLoadMov.FieldByName('OBSERVACOES').AsString,
    'VENDEDOR: ' + cdsLoadMov.FieldByName('VENDEDOR').AsString + ' - ' +
    'VENDA: ' + IntToStr(codMovimento)
  );

  cdsPagamento.RemoteServer.Close;
  close;

end;

procedure TformPrintCupom.FormShow(Sender: TObject);
begin
   { numero do movimento }
   Label1.Caption := Label1.Caption + ' ' + IntToStr(codmovimento);
   lbCAMINHO.Caption := formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString;
   dedCopias.ItemIndex := 0;

end;

end.
