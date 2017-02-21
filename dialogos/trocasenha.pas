unit trocasenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, ExtCtrls,
  cxLookAndFeelPainters, cxButtons, DB, DBClient, Menus, cxGraphics,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxGDIPlusClasses;

type
  TformTrocaSenha = class(TForm)
    cdsSenha: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Image1: TImage;
    edtSenha: TcxTextEdit;
    edtSenhaNova: TcxTextEdit;
    edtSenhaConfirmacao: TcxTextEdit;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTrocaSenha: TformTrocaSenha;

implementation

uses principal;

{$R *.dfm}

procedure TformTrocaSenha.edtSenhaEnter(Sender: TObject);
var
  i: word;
begin
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

procedure TformTrocaSenha.edtSenhaExit(Sender: TObject);
var
  i: word;
begin
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

procedure TformTrocaSenha.FormShow(Sender: TObject);
begin
  formPrincipal.HideMsg;
  if edtSenha.CanFocus then
    edtSenha.SetFocus;
end;

procedure TformTrocaSenha.cxButton1Click(Sender: TObject);
begin
  with cdsSenha do
   begin
     Params.paramByName('CODUSUARIO').AsInteger      :=
       formPrincipal.codUsuario;
     Params.paramByName('SENHAATUAL').AsString       :=
       edtSenha.Text;
     Params.paramByName('SENHANOVA').AsString        :=
       edtSenhaNova.Text;
     Params.paramByName('SENHACONFIRMACAO').AsString :=
       edtSenhaConfirmacao.Text;
     Params.paramByName('MAQUINA').AsString          :=
       formPrincipal.computador;
     Params.paramByName('DATAHORAREMOTO').Value := now;

     Execute;

     if Params.paramByName('RESULTADO').AsInteger = 0 then
      begin

        formPrincipal.MsgError(
          'Por favor, feche o sistema para que as alterações ' +
          'tenham efeito.',
          'Senha Alterada!');

        formTrocaSenha.Close;

      end else
        formPrincipal.MsgError(
          'Verifique se entrou corretamente com a sua senha atual e ' +
          'tente novamente.',
          'ERRO - Senha não alterada');

   end;
end;

procedure TformTrocaSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

end.
