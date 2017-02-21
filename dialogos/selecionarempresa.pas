unit selecionarempresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, ExtCtrls, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, DBClient, Menus,
  cxGraphics, GIFImg, dxSkinsCore, dxSkinOffice2007Silver, cxLookAndFeels,
  dxSkinOffice2007Blue, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TformSelecionarEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    dlcEmpresa: TcxLookupComboBox;
    Bevel1: TBevel;
    dsrEmpresas: TDataSource;
    procedure dlcEmpresaEnter(Sender: TObject);
    procedure dlcEmpresaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSelecionarEmpresa: TformSelecionarEmpresa;

implementation

uses principal;

{$R *.dfm}

procedure TformSelecionarEmpresa.dlcEmpresaEnter(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxLookupComboBox(Sender).Style.Shadow := True;
    end;

//   if Sender is TcxTextEdit then
//    begin
//     TcxTextEdit(Sender).Style.Color := clInfoBk;
//     TcxTextEdit(Sender).Style.Font.Style := [fsBold];
//     TcxTextEdit(Sender).Style.Shadow := True;
//    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
        (Components[i] as TLabel).Font.Style := [fsBold, fsUnderline]
      else
        (Components[i] as TLabel).Font.Style := [fsBold];
end;

procedure TformSelecionarEmpresa.dlcEmpresaExit(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clWindow;
     TcxLookupComboBox(Sender).Style.Font.Style := [];
     TcxLookupComboBox(Sender).Style.Shadow := False;
    end;

//   if Sender is TcxTextEdit then
//    begin
//     TcxTextEdit(Sender).Style.Color := clWindow;
//     TcxTextEdit(Sender).Style.Font.Style := [];
//     TcxTextEdit(Sender).Style.Shadow := False;
//    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [];

end;

procedure TformSelecionarEmpresa.FormCreate(Sender: TObject);
begin
  with formPrincipal.cdsEmpresas do
   if not active then
    begin
      try
        formPrincipal.ShowMsg('Ativando Multiempresa...');
        open;
      except
        on exception do
          formPrincipal.HideMsg;
      end;
      formPrincipal.HideMsg;
    end;

end;

procedure TformSelecionarEmpresa.FormShow(Sender: TObject);
begin
  formPrincipal.HideMsg;

  { localizo a empresa atual }
  formPrincipal.cdsEmpresas.Locate('CODIGO',
    formPrincipal.codempresa, []);
  dlcEmpresa.EditValue :=
    formPrincipal.cdsEmpresas.FieldByName('CODIGO').AsInteger;
  formPrincipal.cdsEmpresas.RemoteServer.Close;
  if dlcEmpresa.CanFocus then
    dlcEmpresa.SetFocus;
end;

procedure TformSelecionarEmpresa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

end.
