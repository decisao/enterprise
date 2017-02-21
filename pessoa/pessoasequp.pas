unit pessoasequp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  dxPScxCommon, ExtCtrls, dxBarExtItems, dxStatusBar,
  DBCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls,
  cxContainer, cxTextEdit, dxmdaset, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBarExtDBItems, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxPCdxBarPopupMenu,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformPessoasEquip = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosCODEQUIPAMENTO: TIntegerField;
    cdsDadosCODMARCA: TIntegerField;
    cdsDadosCODMODELO: TIntegerField;
    cdsDadosSERIE: TStringField;
    cdsDadosGARANTIA: TStringField;
    cdsDadosDATAINI: TDateField;
    cdsDadosDATAFIM: TDateField;
    cdsDadosTIPOCONTRATO: TStringField;
    cdsDadosNUMERADOR: TIntegerField;
    cdsDadosMARCA: TStringField;
    cdsDadosMODELO: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1MARCA: TcxGridDBColumn;
    cxGrid1DBTableView1MODELO: TcxGridDBColumn;
    Label1: TLabel;
    dedModelo: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    dedMarca: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dedSERIE: TcxDBTextEdit;
    Label2: TLabel;
    dedNUMERADOR: TcxDBTextEdit;
    GroupBox1: TGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    cdsDadosTERRITORIO: TStringField;
    Label93: TLabel;
    dblLocalizacao: TcxDBLookupComboBox;
    memTipoContrato: TdxMemData;
    memTipoContratoITEM: TStringField;
    dsrTipoContrato: TDataSource;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure dedModeloClick(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
  public
    { Public declarations }
    codCliente: longint;
  end;

var
  formPessoasEquip: TformPessoasEquip;

implementation

uses marcas, modelos;

{$R *.dfm}

procedure TformPessoasEquip.FormCreate(Sender: TObject);
begin
  inherited;

  with memTipoContrato do
   try
     active := True;
     AppendRecord([nil, 'MANUTENÇÃO' ]);
     AppendRecord([nil, 'DEMANDA'    ]);
     AppendRecord([nil, 'LOCAÇÃO'    ]);
     AppendRecord([nil, 'GARANTIA'   ]);
   except
   end;

end;

procedure TformPessoasEquip.Label1Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formMarcas := TformMarcas.Create(Self);
    formMarcas.AutoLoad := True;
    if formMarcas.ShowModal = mrOk then
     if formMarcas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODMARCA').AsInteger :=
          formMarcas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('MARCA').AsString :=
          formMarcas.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formMarcas.Release;
    except
    end
  end

end;

procedure TformPessoasEquip.dedModeloClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formModelos := TformModelos.Create(Self);
    formModelos.AutoLoad := True;
    formModelos.SetWhereDynamic(
      Format('CODEQUIPAMENTO = %d', [cdsDados.fieldByName('CODMARCA').AsInteger]),
      Format('Modelos da Marca %s', [cdsDados.fieldByName('MARCA').AsString]));
    if formModelos.ShowModal = mrOk then
     if formModelos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODMODELO').AsInteger :=
          formModelos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('MODELO').AsString :=
          formModelos.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formModelos.Release;
    except
    end
  end

end;

procedure TformPessoasEquip.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;

  with Dataset do
   begin
     fieldByName('CODCLIENTE').AsInteger := codCliente;
     fieldByName('CODEQUIPAMENTO').AsInteger := 0;
     fieldByName('GARANTIA').AsString := 'N';
   end;
   
end;

end.
