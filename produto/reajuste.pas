unit reajuste;
                  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, Menus, GIFImg,
  cxCurrencyEdit, DB, DBClient, cxLookAndFeels, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TformReajuste = class(TForm)
    Panel1: TPanel;
    pnlDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dlcMarca: TcxLookupComboBox;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    edtReajuste: TcxCurrencyEdit;
    cdsMarcas: TClientDataSet;
    dsrMarcas: TDataSource;
    cdsReajuste: TClientDataSet;
    dsrReajuste: TDataSource;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formReajuste: TformReajuste;

implementation

uses principal;

{$R *.dfm}

procedure TformReajuste.edtSenhaEnter(Sender: TObject);
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

   if Sender is TcxCurrencyEdit then
    begin
     TcxCurrencyEdit(Sender).Style.Color := clInfoBk;
     TcxCurrencyEdit(Sender).Style.Font.Style := [fsBold];
     TcxCurrencyEdit(Sender).Style.Shadow := True;
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

procedure TformReajuste.edtSenhaExit(Sender: TObject);
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

   if Sender is TcxCurrencyEdit then
    begin
     TcxCurrencyEdit(Sender).Style.Color := clWindow;
     TcxCurrencyEdit(Sender).Style.Font.Style := [];
     TcxCurrencyEdit(Sender).Style.Shadow := False;
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

procedure TformReajuste.cxButton1Click(Sender: TObject);
begin
  try
    formPrincipal.ShowMsg('Reajustando...');
    cdsMarcas.Locate('DESCRICAO', dlcMarca.Text, []);
    cdsReajuste.Params[0].AsInteger :=
      cdsMarcas.FieldByName('CODIGO').AsInteger;
    cdsReajuste.Params[1].AsFloat := edtReajuste.Value;
    cdsReajuste.Execute;
    formPrincipal.MsgError('Reajuste realizado.', 'Reajuste');
  except
    formPrincipal.MsgError('Erro no reajuste.', 'ERRO');
  end;
end;

procedure TformReajuste.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformReajuste.FormShow(Sender: TObject);
begin
  dlcMarca.SetFocus;
end;

procedure TformReajuste.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformReajuste.FormCreate(Sender: TObject);
begin

   cdsMarcas.Open;
   
end;

end.
