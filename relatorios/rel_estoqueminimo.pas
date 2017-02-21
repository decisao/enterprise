unit rel_estoqueminimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_RELATORIO, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, Menus, ppParameter, ppBands, ppCtrls, ppStrtch,
  ppMemo, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, DB, DBClient, StdCtrls, cxButtons, cxCheckBox, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxGDIPlusClasses, ExtCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinDevExpressStyle, ComCtrls, dxCore, cxDateUtils, ppDesignLayer;

type
  TformRelEstoqueMinimo = class(TformRepModelo)
    Label1: TLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelEstoqueMinimo: TformRelEstoqueMinimo;

implementation

{$R *.dfm}

procedure TformRelEstoqueMinimo.cxButton1Click(Sender: TObject);
begin
  SetTitulo('Estoque abaixo do Mínimo');
  SetWhereDynamic(
    Format('CODEMPRESA = %s', [dlcEmpresa.EditValue]),
    Format('Estoque abaixo do mínimo da empresa %s - %s', [dlcEmpresa.EditValue, dlcEmpresa.Text]));
  SetOrderBy('DESCRICAO');

  inherited;

end;

end.
