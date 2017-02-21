unit rep_procurvagrupo;  

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_RELATORIO, cxLookAndFeelPainters, ppBands, ppCtrls,
  ppStrtch, ppMemo, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, StdCtrls, cxButtons,
  cxCheckBox, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ExtCtrls, cxGroupBox, cxRadioGroup, cxGraphics, Menus, cxLookAndFeels,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ppParameter, dxGDIPlusClasses;

type
  TformRepCurvaProGrupo = class(TformRepModelo)
    cdsRelatorioCODIGO: TIntegerField;
    cdsRelatorioDESCRICAO: TStringField;
    cdsRelatorioGRUPO: TStringField;
    cdsRelatorioQUANTIDADE: TFMTBCDField;
    cdsRelatorioVALOR_PAGO: TFMTBCDField;
    cdsRelatorioTOTAL_CUSTO: TFMTBCDField;
    cdsRelatorioTOTAL_LUCRO: TFMTBCDField;
    rdClasse: TcxRadioGroup;
    lbCodigo: TppLabel;
    lbProduto: TppLabel;
    lbQuantidade: TppLabel;
    lbVBruto: TppLabel;
    lbVLiquido: TppLabel;
    lbVContrib: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLabel1: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBText7: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    rdTipo: TcxRadioGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppReportEndFirstPass(Sender: TObject);
    procedure ppReportStartFirstPass(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    tQuant,
    tBruto,
    tLiquido,
    tContrib: extended;
  public
    { Public declarations }
  end;

var
  formRepCurvaProGrupo: TformRepCurvaProGrupo;

implementation

uses funcoes, principal;

{$R *.dfm}

procedure TformRepCurvaProGrupo.cxButton1Click(Sender: TObject);
begin

  { título do relatório }
  SetTitulo('Curva ABC de Produtos Vendidos por Grupo');

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
         SetOrderBy('3, 5 DESC');
         SetDescricao(GetDescricao + '; classificando pelo valor bruto');
       end;
    1: begin
         SetOrderBy('3, 6 DESC');
         SetDescricao(GetDescricao + '; classificando pelo valor de custo');
       end;
    2: begin
         SetOrderBy('3, 7 DESC');
         SetDescricao(GetDescricao + '; classificando pela contribuição');
       end;
    3: begin
         SetOrderBy('3, 4 DESC');
         SetDescricao(GetDescricao + '; classificando pela quantidade');
       end;
  end;

  { analítico // sintético }
  case rdTipo.ItemIndex of
    0: begin
         ppGroupHeaderBand1.Visible := True;
         ppDetailBand1.Visible := True;
         linCab.Visible := False;
         ppLabel2.Visible := False;
         ppLabel3.Visible := False;
         ppLabel4.Visible := False;
         ppLabel5.Visible := False;
         ppDBText8.Visible := False;
         ppDBCalc7.Visible := True;
         ppLabel1.Visible := True;
         ppDBCalc2.Visible := True;
         ppLabel7.Visible := True;
       end;
    1: begin
         ppGroupHeaderBand1.Visible := False;
         ppDetailBand1.Visible := False;
         linCab.Visible := True;
         ppLabel2.Visible := True;
         ppLabel3.Visible := True;
         ppLabel4.Visible := True;
         ppLabel5.Visible := True;
         ppDBText8.Visible := True;
         ppDBCalc7.Visible := False;
         ppLabel1.Visible := False;
         ppDBCalc2.Visible := False;
         ppLabel7.Visible := False;
       end;
  end;

  inherited;

end;

procedure TformRepCurvaProGrupo.FormCreate(Sender: TObject);
begin
  inherited;

  { classificação }
  rdClasse.ItemIndex := 0;

  { tipo }
  rdTipo.ItemIndex := 0;
  
end;

procedure TformRepCurvaProGrupo.ppReportEndFirstPass(Sender: TObject);
begin
  inherited;

  tQuant   := ppDBCalc3.Value;
  tBruto   := ppDBCalc4.Value;
  tLiquido := ppDBCalc5.Value;
  tContrib := ppDBCalc6.Value;
  
end;

procedure TformRepCurvaProGrupo.ppReportStartFirstPass(Sender: TObject);
begin
  inherited;

  tQuant   := 0;
  tBruto   := 0;
  tLiquido := 0;
  tContrib := 0;
  
end;

procedure TformRepCurvaProGrupo.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;

  if tQuant > 0 then
    Value := FloatToStrF((ppDBCalc8.Value * 100) / tQuant, ffFixed, 18, 2) + '%'
  else
    Value := '';

end;

procedure TformRepCurvaProGrupo.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;

  if tBruto > 0 then
    Value := FloatToStrF((ppDBCalc9.Value * 100) / tBruto, ffFixed, 18, 2) + '%'
  else
    Value := '';

end;

procedure TformRepCurvaProGrupo.ppVariable3Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;

  if tLiquido > 0 then
    Value := FloatToStrF((ppDBCalc10.Value * 100) / tLiquido, ffFixed, 18, 2) + '%'
  else
    Value := '';

end;

procedure TformRepCurvaProGrupo.ppVariable4Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;

  if tContrib > 0 then
    Value := FloatToStrF((ppDBCalc11.Value * 100) / tContrib, ffFixed, 18, 2) + '%'
  else
    Value := '';

end;

end.



