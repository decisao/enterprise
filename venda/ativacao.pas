unit ativacao;   

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, DB, dxmdaset, DBClient, cxGroupBox,
  cxRadioGroup, Menus, cxGraphics, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, cxLookAndFeels, dxSkinOffice2010Silver,
  dxSkinOffice2010Blue;

type
  TformAtivacao = class(TForm)
    memAtivacao: TdxMemData;
    dsrAtivacao: TDataSource;
    memAtivacaoAPARELHO: TStringField;
    memAtivacaoSERIE: TStringField;
    memAtivacaoSERIE2: TStringField;
    memAtivacaoVALOR1: TFloatField;
    memAtivacaoVALOR2: TFloatField;
    memAtivacaoREBATE: TStringField;
    memAtivacaoCODOPERADORA: TIntegerField;
    memAtivacaoCODPLANO: TIntegerField;
    memAtivacaoNUMERO: TStringField;
    memAtivacaoCODATIVACAO: TIntegerField;
    memAtivacaoCODAPARELHO: TIntegerField;
    cdsAtivacaoLer: TClientDataSet;
    cdsAtivacaoLerCODATIVACAO: TIntegerField;
    cdsAtivacaoLerCODAPARELHO: TIntegerField;
    cdsAtivacaoLerAPARELHO: TStringField;
    cdsAtivacaoLerSERIE: TStringField;
    cdsAtivacaoLerSERIE2: TStringField;
    cdsAtivacaoLerNUMERO: TStringField;
    cdsAtivacaoLerCODOPERADORA: TIntegerField;
    cdsAtivacaoLerCODPLANO: TIntegerField;
    cdsAtivacaoLerREBATE: TStringField;
    cdsOperadoras: TClientDataSet;
    cdrOperadoras: TDataSource;
    cdsPlanos: TClientDataSet;
    dsrPlanos: TDataSource;
    cdsPlanosCODIGO: TIntegerField;
    cdsPlanosCODOPERADORA: TIntegerField;
    cdsPlanosNOME: TStringField;
    cdsPlanosTIPO: TStringField;
    cdsAtivacaoGravar: TClientDataSet;
    memAtivacaoCONTRATO: TStringField;
    memAtivacaoVOUCHER: TStringField;
    memAtivacaoTIPOATIVACAO: TStringField;
    cdsAtivacaoLerCONTRATO: TStringField;
    cdsAtivacaoLerVOUCHER: TStringField;
    cdsAtivacaoLerTIPOATIVACAO: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel3: TPanel;
    lbAPARELHO: TLabel;
    lbSERIE: TLabel;
    lbSERIE2: TLabel;
    lbVALOR1: TLabel;
    lbVALOR2: TLabel;
    lbOPERADORA: TLabel;
    lbPLANO: TLabel;
    lbNUMERO: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dedAPARELHO: TcxDBTextEdit;
    dedSERIE: TcxDBTextEdit;
    dedSERIE2: TcxDBTextEdit;
    dedVALOR1: TcxDBTextEdit;
    dedVALOR2: TcxDBTextEdit;
    dedREBATE: TcxDBCheckBox;
    dedOPERADORA: TcxDBLookupComboBox;
    dedPLANO: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Bevel1: TBevel;
    cdsAtivacaoLerVALOR1: TFloatField;
    cdsAtivacaoLerVALOR2: TFloatField;
    cdsOperadorasCODIGO: TIntegerField;
    cdsOperadorasNOME: TStringField;
    cdsAtivacaoLerDESCONTO_ADM: TFloatField;
    memAtivacaoDESCONTO_ADM: TFloatField;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure dedAPARELHOEnter(Sender: TObject);
    procedure dedAPARELHOExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure memAtivacaoCODOPERADORAChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    codMovimento: longint;
  end;

var
  formAtivacao: TformAtivacao;

implementation

uses principal;

{$R *.dfm}

procedure TformAtivacao.FormShow(Sender: TObject);
begin

  try

    formPrincipal.ShowMsg('Lendo Ativação...');

    with cdsOperadoras do
     begin
       if active then close;
       open;
     end;

//    with cdsPlanos do
//     begin
//       if active then close;
//       open;
//     end;
//
    with cdsAtivacaoLer do
     begin
       if active then close;
       Params.ParamByName('CODMOVIMENTO').AsInteger := codMovimento;
       open;
     end;

    with memAtivacao do
     begin
       if active then close;
       open;
       AppendRecord([
         nil,
         cdsAtivacaoLer.FieldByName('APARELHO').AsString,
         cdsAtivacaoLer.FieldByName('SERIE').AsString,
         cdsAtivacaoLer.FieldByName('SERIE2').AsString,
         cdsAtivacaoLer.FieldByName('VALOR1').AsFloat,
         cdsAtivacaoLer.FieldByName('VALOR2').AsFloat,
         cdsAtivacaoLer.FieldByName('REBATE').AsString,
         cdsAtivacaoLer.FieldByName('CODOPERADORA').AsInteger,
         cdsAtivacaoLer.FieldByName('CODPLANO').AsInteger,
         cdsAtivacaoLer.FieldByName('NUMERO').AsString,
         cdsAtivacaoLer.FieldByName('CODATIVACAO').AsInteger,
         cdsAtivacaoLer.FieldByName('CODAPARELHO').AsInteger,
         cdsAtivacaoLer.FieldByName('CONTRATO').AsString,
         cdsAtivacaoLer.FieldByName('VOUCHER').AsString,
         cdsAtivacaoLer.FieldByName('TIPOATIVACAO').AsString,
         cdsAtivacaoLer.FieldByName('DESCONTO_ADM').AsFloat
       ]);
     end;

    formPrincipal.HideMsg;

  except
    on exception do
     begin
       formPrincipal.HideMsg;
     end;
  end;

end;

procedure TformAtivacao.memAtivacaoCODOPERADORAChange(Sender: TField);
begin
  if cdsPlanos.Active then
    cdsPlanos.Close;
  if not Sender.IsNull then
   begin
     cdsPlanos.Params[0].AsInteger := Sender.AsInteger;
     cdsPlanos.Open;
   end;
end;

procedure TformAtivacao.dedAPARELHOEnter(Sender: TObject);
var
  i: word;
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

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsBold, fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [fsBold];
end;

procedure TformAtivacao.dedAPARELHOExit(Sender: TObject);
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

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [];
end;

procedure TformAtivacao.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformAtivacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
       Close;

   if key = vk_Return then
    if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
     if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformAtivacao.cxButton1Click(Sender: TObject);
begin

  try

    formPrincipal.ShowMsg('Gravando ativação...');

    with cdsAtivacaoGravar do
     begin

       FetchParams;

       Params.ParamByName('CODATIVACAO').AsInteger  :=
         memAtivacao.FieldByName('CODATIVACAO').AsInteger;

       Params.ParamByName('CODAPARELHO').AsInteger  :=
         memAtivacao.FieldByName('CODAPARELHO').AsInteger;

       Params.ParamByName('APARELHO').AsString      :=
         memAtivacao.FieldByName('APARELHO').AsString;

       Params.ParamByName('SERIE').AsString         :=
         memAtivacao.FieldByName('SERIE').AsString;

       Params.ParamByName('SERIE2').AsString        :=
         memAtivacao.FieldByName('SERIE2').AsString;

       Params.ParamByName('NUMERO').AsString        :=
         memAtivacao.FieldByName('NUMERO').AsString;

       Params.ParamByName('CODOPERADORA').AsInteger :=
         memAtivacao.FieldByName('CODOPERADORA').AsInteger;

       Params.ParamByName('CODPLANO').AsInteger     :=
         memAtivacao.FieldByName('CODPLANO').AsInteger;

       Params.ParamByName('REBATE').AsString        :=
         memAtivacao.FieldByName('REBATE').AsString;

       Params.ParamByName('CONTRATO').AsString        :=
         memAtivacao.FieldByName('CONTRATO').AsString;

       Params.ParamByName('VOUCHER').AsString        :=
         memAtivacao.FieldByName('VOUCHER').AsString;

       Params.ParamByName('TIPOATIVACAO').AsString        :=
         memAtivacao.FieldByName('TIPOATIVACAO').AsString;

       Params.ParamByName('DESCONTO_ADM').AsFloat :=
         memAtivacao.FieldByName('DESCONTO_ADM').AsFloat;

       Execute;

     end;

    formPrincipal.HideMsg;
    close;

  except
    on exception do
     begin
       formPrincipal.HideMsg;
       raise;
     end;
  end;


end;

end.
