unit extrato;
                        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDBEdit, DB, dxmdaset, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DBClient, ppDB, ppModule,
  raCodMod, ppBands, ppClass, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDBPipe, daDataModule,
  Menus, cxGraphics, GIFImg, cxLookAndFeels, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, ppParameter, dxSkinOffice2010Silver,
  dxSkinOffice2010Blue, dxGDIPlusClasses;

type
  TformExtrato = class(TForm)
    cdsContas: TClientDataSet;
    cdsContasCODIGO: TIntegerField;
    cdsContasCONTA: TStringField;
    dsrContas: TDataSource;
    dxExtratoConta: TdxMemData;
    dxExtratoContaCODCONTA: TIntegerField;
    dxExtratoContaDATAINI: TDateField;
    dxExtratoContaDATAFIM: TDateField;
    dsrExtratoConta: TDataSource;
    cdsExtrato: TClientDataSet;
    dsrExtrato: TDataSource;
    cdsExtratoUSUARIO: TStringField;
    cdsExtratoDESCRICAO: TStringField;
    cdsExtratoLETRA: TStringField;
    cdsExtratoINFODOC: TStringField;
    cdsExtratoDOCUMENTO: TStringField;
    cdsExtratoCLIENTE: TStringField;
    cdsExtratoGRUPO: TStringField;
    ppDBExtrato: TppDBPipeline;
    ppExtratoAntigo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    lbConta: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lbPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppDBText9: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel9: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    daDataModule1: TdaDataModule;
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Bevel1: TBevel;
    cdsExtratoDOC: TClientDataSet;
    dsrExtratoDOC: TDataSource;
    ppDBExtratoDOC: TppDBPipeline;
    cdsExtratoDOCCLIENTE: TStringField;
    cdsExtratoDOCDESCRICAO: TStringField;
    cdsExtratoDOCLETRA: TStringField;
    cdsExtratoDOCINFODOC: TStringField;
    cdsExtratoDOCDOCUMENTO: TStringField;
    ppExtrato: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel11: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape4: TppShape;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    ppDBText18: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel12: TppLabel;
    ppSubFuturo: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel13: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    lbPeriodo2: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape6: TppShape;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel16: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel14: TppLabel;
    ppLine4: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppLabel20: TppLabel;
    ppDBText25: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    cdsExtratoVALORCRE: TFloatField;
    cdsExtratoSALDO: TFloatField;
    cdsExtratoVALORDEB: TFloatField;
    cdsExtratoDOCVALORCRE: TFloatField;
    cdsExtratoDOCVALORDEB: TFloatField;
    cdsExtratoDATAHORA: TSQLTimeStampField;
    cdsExtratoDOCDATAHORA: TSQLTimeStampField;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formExtrato: TformExtrato;

implementation

uses principal;

{$R *.dfm}

procedure TformExtrato.FormShow(Sender: TObject);
begin
  try
    formPrincipal.ShowMsg('Lendo Contas...');

    dxExtratoConta.Active := True;
    dxExtratoConta.Insert;

    cdsContas.Active := True;
    cdsContas.RemoteServer.Close;

    { datas e conta }
    cxDBLookupComboBox1.Text := cdsContasCONTA.AsString;
    cxDBDateEdit1.Date := formPrincipal.GetTime;
    cxDBDateEdit2.Date := cxDBDateEdit1.Date;

    dxExtratoConta.FieldByName('CODCONTA').AsInteger := cdsContasCODIGO.AsInteger;
    dxExtratoConta.FieldByName('DATAINI').AsDateTime := formPrincipal.GetTime;
    dxExtratoConta.FieldByName('DATAFIM').AsDateTime := dxExtratoConta.FieldByName('DATAINI').AsDateTime;

    dxExtratoConta.Post;

    formPrincipal.HideMsg;
  except
    formPrincipal.HideMsg;
  end;
end;

procedure TformExtrato.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformExtrato.cxButton1Click(Sender: TObject);
begin
  with cdsExtrato do
   begin
     if active then close;

     params.ParamByName('CODCONTA').AsInteger :=
       dxExtratoConta.fieldByName('CODCONTA').AsInteger;
     params.ParamByName('CODEMPRESA').AsInteger :=
       formPrincipal.codempresa;
     params.ParamByName('DATAINI').AsDate :=
       dxExtratoConta.fieldByName('DATAINI').AsDateTime;
     params.ParamByName('DATAFIM').AsDate :=
       dxExtratoConta.fieldByName('DATAFIM').AsDateTime;
     open;

   end;

  with cdsExtratoDOC do
   begin
     if active then close;

     params.ParamByName('CODEMPRESA').AsInteger :=
       formPrincipal.codempresa;
     params.ParamByName('DATAINI').AsDate :=
       dxExtratoConta.fieldByName('DATAINI').AsDateTime;
     params.ParamByName('DATAFIM').AsDate :=
       dxExtratoConta.fieldByName('DATAFIM').AsDateTime;
     open;
     RemoteServer.Close;
   end;


  ppLabel10.Caption := Format('%d - %s', [
    Self.cdsContas.fieldByName('CODIGO').AsInteger,
    Trim(Self.cdsContas.fieldByName('CONTA').AsString)]);

  ppLabel11.Caption := Format('Período de %s até %s',
    [FormatDateTime('DD/MM/YYYY',
     Self.dxExtratoConta.fieldByName('DATAINI').AsDateTime),
     FormatDateTime('DD/MM/YYYY',
     Self.dxExtratoConta.fieldByName('DATAFIM').AsDateTime)]);

  lbPeriodo2.Caption := lbPeriodo.Caption;   

  ppExtrato.Print;
end;

end.
