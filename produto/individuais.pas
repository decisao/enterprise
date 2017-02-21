unit individuais;

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
  cxCheckBox, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxMaskEdit,
  dxmdaset, dxBarExtDBItems, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxRadioGroup, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxLookAndFeelPainters,
  cxLookAndFeels, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinDevExpressStyle, cxNavigator, dxSkinsdxRibbonPainter;

type
  TformIndividuais = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosBARRA: TStringField;
    cdsDadosSERIE: TStringField;
    cdsDadosSERIE2: TStringField;
    cdsDadosCODMOVENTRADA: TIntegerField;
    cdsDadosCODMOVSAIDA: TIntegerField;
    cdsDadosCODOPERADORA: TIntegerField;
    cdsDadosCODPLANO: TIntegerField;
    cdsDadosNUMERO_FONE: TStringField;
    cdsDadosREBATE: TStringField;
    cdsDadosATIVACAO: TStringField;
    cdsDadosVENDIDO: TStringField;
    cdsDadosTEMPOESTOQUE: TFloatField;
    cdsDadosCODPRODUTO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosCODCOMPRA: TIntegerField;
    cdsDadosCODVENDA: TIntegerField;
    cdsDadosCODFORNECEDOR: TIntegerField;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosFORNECEDOR: TStringField;
    cdsDadosCLIENTE: TStringField;
    cdsDadosOPERADORA: TStringField;
    cdsDadosPLANO: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1BARRA: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE: TcxGridDBColumn;
    cxGrid1DBTableView1SERIE2: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODMOVENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1CODMOVSAIDA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_FONE: TcxGridDBColumn;
    cxGrid1DBTableView1REBATE: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVACAO: TcxGridDBColumn;
    cxGrid1DBTableView1VENDIDO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1DATASAIDA: TcxGridDBColumn;
    cxGrid1DBTableView1TEMPOESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODFORNECEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1CODCLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1FORNECEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1OPERADORA: TcxGridDBColumn;
    cxGrid1DBTableView1PLANO: TcxGridDBColumn;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    dedSerie: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxTabSheet3: TcxTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    dedNUMSERIE: TcxDBTextEdit;
    dedSERIE2: TcxDBTextEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cdsDadosVALOR_PAGO: TFloatField;
    cdsDadosQUANTIDADE: TFMTBCDField;
    lbOPERADORA: TLabel;
    dedOPERADORA: TcxDBLookupComboBox;
    lbPLANO: TLabel;
    dedPLANO: TcxDBLookupComboBox;
    cdsDadosTOTAL_CUSTO: TFMTBCDField;
    cdsDadosVENDA_ITEM: TFMTBCDField;
    cdsDadosCOMPRA_ITEM: TFMTBCDField;
    cdsDadosTOTAL_LUCRO: TFMTBCDField;
    Label20: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label21: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    Label22: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    Label23: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label24: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxGrid1DBTableView1TOTAL_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_LUCRO: TcxGridDBColumn;
    cdsDadosDATAENTRADA: TDateField;
    cdsDadosDATASAIDA: TDateField;
    radVenda: TcxDBRadioGroup;
    cdsPlanos: TClientDataSet;
    cdsPlanosCODIGO: TIntegerField;
    cdsPlanosCODOPERADORA: TIntegerField;
    cdsPlanosNOME: TStringField;
    cdsPlanosTIPO: TStringField;
    dsrPlanos: TDataSource;
    cdsDadosCODEMPRESA: TIntegerField;
    cxGrid1DBTableView1CODEMPRESA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure btnModificarClick(Sender: TObject); override;
    procedure btnSalvarClick(Sender: TObject); override;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cdsDadosCODOPERADORAChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formIndividuais: TformIndividuais;

implementation

uses operadoras, planosservico, principal;

{$R *.dfm}

procedure TformIndividuais.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('CODIGO',         'ID.CODIGO'        );
  AdicionarCampo('BARRA',          'ID.BARRA'         );
  AdicionarCampo('SERIE',          'ID.SERIE'         );
  AdicionarCampo('SERIE2',         'ID.SERIE2'        );
  AdicionarCampo('QUANTIDADE',     'ID.QUANTIDADE'    );
  AdicionarCampo('VALOR_PAGO',     'ID.VALOR_PAGO'    );
  AdicionarCampo('CODMOVENTRADA',  'ID.CODMOVENTRADA' );
  AdicionarCampo('CODMOVSAIDA',    'ID.CODMOVSAIDA'   );
  AdicionarCampo('CODOPERADORA',   'ID.CODOPERADORA'  );
  AdicionarCampo('CODPLANO',       'ID.CODPLANO'      );
  AdicionarCampo('NUMERO_FONE',    'ID.NUMERO_FONE'   );
  AdicionarCampo('REBATE',         'ID.REBATE'        );
  AdicionarCampo('ATIVACAO',       'ID.ATIVACAO'      );
  AdicionarCampo('VENDIDO',        'ID.VENDIDO'       );
  AdicionarCampo('DATAENTRADA',    'CAST(ID.DATAENTRADA AS DATE)');
  AdicionarCampo('DATASAIDA',      'CAST(ID.DATASAIDA   AS DATE)');
  AdicionarCampo('TEMPOESTOQUE',   'ID.TEMPOESTOQUE'  );
  AdicionarCampo('CODPRODUTO',     'PO.CODIGO'        );
  AdicionarCampo('DESCRICAO',      'PO.DESCRICAO'     );
  AdicionarCampo('CODCOMPRA',      'ME.CODIGO'        );
  AdicionarCampo('CODVENDA',       'MS.CODIGO'        );
  AdicionarCampo('CODFORNECEDOR',  'CE.CODIGO'        );
  AdicionarCampo('CODCLIENTE',     'CS.CODIGO'        );
  AdicionarCampo('FORNECEDOR',     'CE.NOME'          );
  AdicionarCampo('CLIENTE',        'CS.NOME'          );
  AdicionarCampo('OPERADORA',      'OP.NOME'          );
  AdicionarCampo('PLANO',          'PL.NOME'          );
  SetOrderBy('ID.CODIGO DESC');
  SetEmpresaFilter('ID.CODEMPRESA');

  SetCampoRodape('QUANTIDADE' , 'Q=#####.##', 'SUM');
  SetCampoRodape('VALOR_PAGO' , 'T=#,##0.00', 'SUM');
  SetCampoRodape('TOTAL_CUSTO', 'C=#,##0.00', 'SUM');
  SetCampoRodape('TOTAL_LUCRO', 'L=#,##0.00', 'SUM');
end;

procedure TformIndividuais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  barra: string;
  tecla: word;
begin
  inherited;

  { busca por código de barras }
  if (pgcDados.ActivePage = tabVisual) and (key = vk_F6) then
   begin
     barra := InputBox('Código de Barras', 'Use o leitor para ler o código:', '');
     if barra > '' then
      begin
        if length(barra) < 14 then
          cmbSelecionar.ItemIndex := 0 else
        if length(barra) < 20 then
          cmbSelecionar.ItemIndex := 1 else
          cmbSelecionar.ItemIndex := 5;
        edtSelecionar.Text := barra;
        tecla := 13;
        edtSelecionarKeyDown(nil, tecla, []);
      end;
   end;

end;

procedure TformIndividuais.Label20Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formOperadoras := TformOperadoras.Create(Self);
    formOperadoras.AutoLoad := True;
    formOperadoras.Transferir := True;
    formOperadoras.Multiselect := False;
    formOperadoras.Tag := formPrincipal.actOperadoras.Tag;
    if formOperadoras.ShowModal = mrOk then
     if formOperadoras.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODOPERADORA').AsInteger :=
          formOperadoras.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('OPERADORA').AsString :=
          formOperadoras.cdsDados.FieldByName('NOME').AsString;
      end;
  finally
    try
      { destruo o form }
      formOperadoras.Release;
    except
    end
  end

end;

procedure TformIndividuais.Label21Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPlanosServico := TformPlanosServico.Create(Self);
    formPlanosServico.AutoLoad := True;
    formPlanosServico.Transferir := True;
    formPlanosServico.MultiSelect := False;
    formPlanosServico.Tag := formPrincipal.actOperadoras.Tag;
    formPlanosServico.SetWhereDynamic(
      Format('CODOPERADORA = %d', [cdsDados.fieldByName('CODOPERADORA').AsInteger]),
      Format('Planos da Operadora %s', [cdsDados.fieldByName('OPERADORA').AsString]));
    if formPlanosServico.ShowModal = mrOk then
     if formPlanosServico.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODPLANO').AsInteger :=
          formPlanosServico.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('PLANO').AsString :=
          formPlanosServico.cdsDados.FieldByName('NOME').AsString;
      end;
  finally
    try
      { destruo o form }
      formPlanosServico.Release;
    except
    end
  end

end;

procedure TformIndividuais.btnModificarClick(Sender: TObject);
begin
  inherited;

  if formPrincipal.cdsUsuarios.fieldByName('CUSTO').AsString = 'S' then
   begin
     Label20.Visible := True;
     cxDBTextEdit16.Visible := True;
     Label22.Visible := True;
     cxDBTextEdit18.Visible := True;
     Label26.Visible := True;
     cxDBTextEdit22.Visible := True;
   end else
   begin
     Label20.Visible := False;
     cxDBTextEdit16.Visible := False;
     Label22.Visible := False;
     cxDBTextEdit18.Visible := False;
     Label26.Visible := False;
     cxDBTextEdit22.Visible := False;
   end;

  if not formPrincipal.cdsOperadoras.Active then
    formPrincipal.cdsOperadoras.Open;

  cdsDadosCODOPERADORAChange(cdsDadosCODOPERADORA);

  radVenda.Visible := (not cdsDadosCODVENDA.IsNull);

  if dedSerie.CanFocus then
    dedSerie.SetFocus;
end;

procedure TformIndividuais.btnSalvarClick(Sender: TObject);
begin
  inherited;

  { foco no campo certo }
  try
    if pgcDados.ActivePage = tabDetalhe then
     begin
       if cxPageControl1.ActivePage = cxTabSheet3 then
         dedSERIE2.SetFocus
       else
         dedSERIE.SetFocus;
     end;
  except
  end;
end;

procedure TformIndividuais.cdsDadosAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if formPrincipal.cdsUsuarios.fieldByName('CUSTO').AsString = 'S' then
   begin
     cxGrid1DBTableView1TOTAL_CUSTO.Visible := True;
     cxGrid1DBTableView1TOTAL_LUCRO.Visible := True;
   end else
   begin
     cxGrid1DBTableView1TOTAL_CUSTO.Visible := False;
     cxGrid1DBTableView1TOTAL_LUCRO.Visible := False;
   end;
end;

procedure TformIndividuais.cdsDadosCODOPERADORAChange(Sender: TField);
begin
  inherited;
  if pgcDados.ActivePage = tabDetalhe then
   begin
     if cdsPlanos.Active then
       cdsPlanos.Close;
     if not Sender.IsNull then
      begin
        cdsPlanos.Params[0].AsInteger := Sender.AsInteger;
        cdsPlanos.Open;
      end;
   end;
end;

end.
