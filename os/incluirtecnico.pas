unit incluirtecnico;
                        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, DBClient,
  cxCalendar, Menus, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TformIncluirTecnico = class(TForm)
    cdsTecnicos: TClientDataSet;
    dsrTecnicos: TDataSource;
    Panel1: TPanel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    pnlDados: TPanel;
    Label1: TLabel;
    Image1: TImage;
    dlcUsuario: TcxLookupComboBox;
    Label2: TLabel;
    dedDATAINI: TcxDateEdit;
    dedDATAFIM: TcxDateEdit;
    Label3: TLabel;
    dedPORCENTAGEM: TcxMaskEdit;
    Label4: TLabel;
    cdsTecnicosCODIGO: TIntegerField;
    cdsTecnicosNOMEUSER: TStringField;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codUsuario,
    codRecurso: integer;
    Direitos: string;
  end;

var
  formIncluirTecnico: TformIncluirTecnico;

implementation

uses principal;

{$R *.dfm}

procedure TformIncluirTecnico.edtSenhaEnter(Sender: TObject);
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

procedure TformIncluirTecnico.edtSenhaExit(Sender: TObject);
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

procedure TformIncluirTecnico.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformIncluirTecnico.FormShow(Sender: TObject);
begin
 dlcUsuario.SetFocus;
end;

procedure TformIncluirTecnico.cxButton1Click(Sender: TObject);
begin
  if FormatDateTime('DD/MM/YYYY', dedDataIni.Date) = '00/00/0000' then
   begin
     formPrincipal.MsgError('A data de início não pode ficar vazia.', 'Erro');
     exit;
   end;
  cdsTecnicos.Locate('NOMEUSER', dlcUsuario.Text, []);
  modalresult := mrOk;
end;

procedure TformIncluirTecnico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
   if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
    if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);
end;

procedure TformIncluirTecnico.FormCreate(Sender: TObject);
begin
  Direitos := '';

  formPrincipal.ShowMsg('Lendo usuários...');
  try
    with cdsTecnicos do
      Open;
    formPrincipal.HideMsg;
  except
    on exception do
     begin
       formPrincipal.HideMsg;
     end
  end;
end;

end.
