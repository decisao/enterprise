unit tributario;
                   
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, Menus, GIFImg,
  cxCurrencyEdit, DB, DBClient, dxmdaset, cxLookAndFeels, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TformTributario = class(TForm)
    Panel1: TPanel;
    pnlDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    edtICMS: TcxCurrencyEdit;
    cdsTributario: TClientDataSet;
    dsrTributario: TDataSource;
    dxMemProdutos: TdxMemData;
    dxMemProdutosCODPRODUTO: TIntegerField;
    edtSitTribu: TcxComboBox;
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
  formTributario: TformTributario;

implementation

uses principal;

{$R *.dfm}

procedure TformTributario.edtSenhaEnter(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxMaskEdit then
    begin
     TcxMaskEdit(Sender).Style.Color := clInfoBk;
     TcxMaskEdit(Sender).Style.Font.Style := [fsBold];
     TcxMaskEdit(Sender).Style.Shadow := True;
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

procedure TformTributario.edtSenhaExit(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxMaskEdit then
    begin
     TcxMaskEdit(Sender).Style.Color := clWindow;
     TcxMaskEdit(Sender).Style.Font.Style := [];
     TcxMaskEdit(Sender).Style.Shadow := False;
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

procedure TformTributario.cxButton1Click(Sender: TObject);
begin
  try
    formPrincipal.ShowMsg('Atualizando...');
    with dxMemProdutos do
     begin
       first;
       while not eof do
        begin
          cdsTributario.Params[0].AsInteger := dxMemProdutosCODPRODUTO.AsInteger;
          cdsTributario.Params[1].AsString := edtSitTribu.Text;
          cdsTributario.Params[2].AsFloat := edtICMS.Value;
          cdsTributario.Params[3].AsInteger := formPrincipal.codempresa;
          cdsTributario.Execute;
          next;
        end;
     end;
    formPrincipal.MsgError('Produtos atualizados.', 'Pronto');
  except
    raise;
    formPrincipal.MsgError('Erro na atualização.', 'Erro');
  end;
end;

procedure TformTributario.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformTributario.FormShow(Sender: TObject);
begin
  edtSittribu.SetFocus;
end;

procedure TformTributario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformTributario.FormCreate(Sender: TObject);
begin
   dxMemProdutos.Open;
end;

end.
