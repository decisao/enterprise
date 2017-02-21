unit nova_localidade;   

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, ExtCtrls, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, DB, DBClient,
  Menus, GIFImg, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TformNovaLocalidade = class(TForm)
    Panel1: TPanel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    pnlDados: TPanel;
    lbLogradouro: TLabel;
    Image1: TImage;
    lbBairro: TLabel;
    lbCEP: TLabel;
    edLogradouro: TcxTextEdit;
    edBairro: TcxTextEdit;
    edCEP: TcxTextEdit;
    Bevel1: TBevel;
    lbTitulo: TLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edLogradouroEnter(Sender: TObject);
    procedure edLogradouroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formNovaLocalidade: TformNovaLocalidade;

implementation

uses logradouros, principal;

{$R *.dfm}

procedure TformNovaLocalidade.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformNovaLocalidade.FormShow(Sender: TObject);
begin
  if edLogradouro.CanFocus then
    edLogradouro.SetFocus;
end;

procedure TformNovaLocalidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformNovaLocalidade.edLogradouroEnter(Sender: TObject);
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

procedure TformNovaLocalidade.edLogradouroExit(Sender: TObject);
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

end.
