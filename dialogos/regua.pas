unit regua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, StdCtrls, cxCheckBox,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, cxButtons, ExtCtrls,
  cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TformRegua = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    nLinhas: TcxSpinEdit;
    nColunas: TcxSpinEdit;
    cComp: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    c18: TcxCheckBox;
    ePorta: TcxTextEdit;
    Label3: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRegua: TformRegua;

implementation

uses dosprint, principal;

{$R *.dfm}

procedure TformRegua.cxButton1Click(Sender: TObject);
var
  inicial, efeito: string;
  coluna, linha: integer;
begin
  { verifico se eh comprimido }
  if cComp.checked then
    efeito := '1'
  else
    efeito := '';
  { verifico se vai ser com 1/8 de linha }
  if c18.checked then
    inicial := #27#48
  else
    inicial := #27#50;
  { inicio a impressao }
  DOSPrintOpen(ePorta.text, inicial, '');
  { linhas e colunas }
  for linha := 0 to Trunc(nLinhas.value) - 1 do
   for coluna := 0 to Trunc(nColunas.value) - 1 do
     if linha = 0 then
       DOSPrintAdd(coluna, linha, IntToStr(coluna mod 10), efeito)
     else if coluna = 0 then
       DOSPrintAdd(coluna, linha, IntToStr(linha), efeito);
  { fechamento da impressao }
  try
    DOSPrintSendPage(1);
    DOSPrintClose;
  except
    on exception do
     try
       DOSPrintClose;
     except
     end;
  end;
end;

procedure TformRegua.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformRegua.FormShow(Sender: TObject);
begin
  formPrincipal.HideMsg;
end;

end.
