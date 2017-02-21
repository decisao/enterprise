unit connconfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  cxLookAndFeelPainters, cxRadioGroup, cxButtons, IniFiles, cxGroupBox, Menus,
  dxSkinsCore, dxSkinOffice2007Silver, cxGraphics, cxLookAndFeels, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TformConnConfig = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel3: TPanel;
    Label2: TLabel;
    edtConnData: TcxTextEdit;
    rgServer: TcxRadioGroup;
    Bevel1: TBevel;
    Label1: TLabel;
    edtID: TcxTextEdit;
    procedure edtConnDataEnter(Sender: TObject);
    procedure edtConnDataExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConnConfig: TformConnConfig;

implementation

uses principal;

{$R *.dfm}

procedure TformConnConfig.edtConnDataEnter(Sender: TObject);
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

procedure TformConnConfig.edtConnDataExit(Sender: TObject);
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

procedure TformConnConfig.cxButton1Click(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TformConnConfig.cxButton2Click(Sender: TObject);
var
  MeuIni: TIniFile;
  secao: string;
  tipo: string;
begin

  { connection.ini }
  MeuIni := TIniFile.Create(formPrincipal.GetINIConnect);
  secao  := 'mid-tier';
  MeuIni.WriteString(secao, 'URL', edtConnData.Text);
  MeuIni.WriteString(secao, 'ID', edtID.Text);
  if rgServer.ItemIndex = 0 then
    tipo := 'W'
  else
    tipo := 'U';
  MeuIni.WriteString(secao, 'Server', tipo);
  MeuIni.Free;

  { fim }
  modalresult := mrOk;
end;

procedure TformConnConfig.FormShow(Sender: TObject);
var
  MeuIni: TIniFile;
  secao: string;
  tipo: string;
begin
  MeuIni := TIniFile.Create(formPrincipal.GetINIConnect);
  secao  := 'mid-tier';
  edtConnData.Text := MeuIni.ReadString(secao, 'URL', 'localhost');
  edtID.Text := MeuIni.ReadString(secao, 'ID', '');
  tipo := MeuIni.ReadString(secao, 'Server', 'W');
  if tipo = 'W' then
    rgServer.ItemIndex := 0
  else
    rgServer.ItemIndex := 1;
  MeuIni.Free;
end;

end.
