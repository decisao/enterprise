unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, Menus, GIFImg,
  dxSkinsCore, dxSkinOffice2007Silver, cxLookAndFeels, dxSkinOffice2007Blue,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxImage, dxGDIPlusClasses, dxSkinDevExpressStyle;

type
  TformLogin = class(TForm)
    Panel1: TPanel;
    pnlDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtSenha: TcxTextEdit;
    dlcUsuario: TcxLookupComboBox;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    cxImage1: TcxImage;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dlcUsuarioPropertiesCloseUp(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

uses principal;

{$R *.dfm}

procedure TformLogin.edtSenhaEnter(Sender: TObject);
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

procedure TformLogin.edtSenhaExit(Sender: TObject);
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

procedure TformLogin.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformLogin.FormShow(Sender: TObject);
begin
  dlcUsuario.SetFocus;
end;

procedure TformLogin.dlcUsuarioPropertiesCloseUp(Sender: TObject);
begin
  if edtSenha.CanFocus then
   begin
     edtSenha.Clear;
     edtSenha.SetFocus;
   end;
end;

procedure TformLogin.cxButton1Click(Sender: TObject);
begin
  formPrincipal.cdsUsuarios.Locate('EMAIL',
    dlcUsuario.Text, []);
    
  if (formPrincipal.cdsUsuarios.fieldByName('SENHAWEB').AsString =
     edtSenha.Text) then
    ModalResult := mrOk
  else
   begin
     formPrincipal.MsgError(
       'Usuário ou Senha incorretos!',
       'Login');
     if edtSenha.CanFocus then
       edtSenha.SetFocus;
   end;
end;

procedure TformLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

end.
