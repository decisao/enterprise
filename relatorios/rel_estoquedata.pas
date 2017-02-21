unit rel_estoquedata;

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
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TformRelEstoqueData = class(TformRepModelo)
    Label1: TLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel5: TppLabel;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelEstoqueData: TformRelEstoqueData;

implementation

{$R *.dfm}

procedure TformRelEstoqueData.cxButton1Click(Sender: TObject);
begin

  cdsRelatorio.Params[0].Value := dedDataFim.Date;
  cdsRelatorio.Params[1].AsInteger := StrToInt(dlcEmpresa.EditValue);

  SetTitulo('Estoque em uma Data');

  SetDescricao(Format('Estoque da empresa %s - %s em %s',
    [dlcEmpresa.EditValue, dlcEmpresa.Text, FormatDateTime('DD/MM/YYYY', dedDataFim.Date)]));

  SetOrderBy('DESCRICAO');

  inherited;

end;

end.
