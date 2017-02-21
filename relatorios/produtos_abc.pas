unit produtos_abc;        

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_RELATORIO, cxLookAndFeelPainters, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ExtCtrls, ppModule, daDataModule, ppCtrls, ppVar, ppPrnabl, ppBands,
  ppCache, ppStrtch, ppMemo, cxCheckBox, cxGroupBox, cxRadioGroup,
  cxGraphics, Menus, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, ppParameter, dxGDIPlusClasses;

type
  TformRepProdutosAbc = class(TformRepModelo)
    cdsRelatorioCODIGO: TIntegerField;
    cdsRelatorioDESCRICAO: TStringField;
    cdsRelatorioQUANTIDADE: TFMTBCDField;
    cdsRelatorioVALOR_PAGO: TFMTBCDField;
    cdsRelatorioTOTAL_CUSTO: TFMTBCDField;
    cdsRelatorioTOTAL_LUCRO: TFMTBCDField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    rdClasse: TcxRadioGroup;
    lbCodigo: TppLabel;
    lbProduto: TppLabel;
    lbQuantidade: TppLabel;
    lbVBruto: TppLabel;
    lbVLiquido: TppLabel;
    lbVContrib: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine1: TppLine;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRepProdutosAbc: TformRepProdutosAbc;

implementation

uses funcoes, principal;

{$R *.dfm}

procedure TformRepProdutosAbc.cxButton1Click(Sender: TObject);
begin

  { título do relatório }
  SetTitulo('Curva ABC de Produtos Vendidos');

  { filtrar por empresa? }
  if ckEmpresa.Checked then
   begin

     { uma empresa }
     SetWhereDynamic(
       'MOVIMENTOS.FECHA_DATA_FLUXO BETWEEN ''' +
       InverteDiaMes(DateToStr(dedDataIni.Date)) + ''' AND ''' +
       InverteDiaMes(DateToStr(dedDataFim.Date)) + ''' AND ' +
       'MOVIMENTOS.CODEMPRESA = ' +
       IntToStr(dlcEmpresa.EditValue),
       'Curva dos produtos vendidos entre ' +
       DateToStr(dedDataIni.Date) + ' e ' +
       DateToStr(dedDataFim.Date) +
       '; filtrando dados da empresa "' +
       dlcEmpresa.EditText + '"')

   end else
   begin

     { todas as empresas }
     SetWhereDynamic(
       'MOVIMENTOS.FECHA_DATA_FLUXO BETWEEN ''' +
       InverteDiaMes(DateToStr(dedDataIni.Date)) + ''' AND ''' +
       InverteDiaMes(DateToStr(dedDataFim.Date)) + '''',
       'Curva dos produtos vendidos entre ' +
       DateToStr(dedDataIni.Date) + ' e ' +
       DateToStr(dedDataFim.Date) +
       '; em todas as empresas');

   end;

  { classificação // ordenação }
  case rdClasse.ItemIndex of
    0: begin
         SetOrderBy('4 DESC');
         SetDescricao(GetDescricao + '; classificando pelo valor bruto');
       end;
    1: begin
         SetOrderBy('5 DESC');
         SetDescricao(GetDescricao + '; classificando pelo valor de custo');
       end;
    2: begin
         SetOrderBy('6 DESC');
         SetDescricao(GetDescricao + '; classificando pela contribuição');
       end;
    3: begin
         SetOrderBy('3 DESC');
         SetDescricao(GetDescricao + '; classificando pela quantidade');
       end;
  end;

  inherited;

end;

procedure TformRepProdutosAbc.FormCreate(Sender: TObject);
begin
  inherited;

  { classificação }
  rdClasse.ItemIndex := 0;
  
end;

end.
