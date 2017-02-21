unit orcamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, Menus, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxCheckBox, cxDBLookupComboBox, cxCalendar, dxPScxCommon, dxmdaset,
  dxBarExtDBItems, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppReport, ppVar, ppStrtch, ppMemo,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSPrVwAdv, dxPSPrVwRibbon, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  cxNavigator, dxSkinsdxRibbonPainter, dxSkinDevExpressStyle;

type
  TformOrcamentos = class(TformCadModelo)
    cdsDadosSEL: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDATA: TDateField;
    cdsDadosHORA: TTimeField;
    cdsDadosSTATUS: TStringField;
    cdsDadosNOME: TStringField;
    cdsDadosNOMEUSER: TStringField;
    cdsDadosUSUARIOFECHAMENTO: TStringField;
    cdsDadosDATAFECHA: TDateField;
    cdsDadosOBSERVACOES: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1NOTA_VALOR_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEUSER: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIOFECHAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAFECHA: TcxGridDBColumn;
    cdsDadosCODCLIENTE: TIntegerField;
    cdsDadosFECHADO: TStringField;
    cdsDadosCONDICAOPAGAMENTO: TStringField;
    cdsDadosNOTA_NUMERO: TIntegerField;
    cdsDadosCODCOMPRA: TIntegerField;
    btnImpOrcamento: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cdsDadosNOTA_VALOR_TOTAL: TFMTBCDField;
    dxBarButton10: TdxBarButton;
    cdsDadosABERTO: TFMTBCDField;
    cxGrid1DBTableView1ABERTO: TcxGridDBColumn;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cdsDadosNOTA_CODTRANSPORTADOR: TIntegerField;
    cdsDadosNOTA_PLACAVEICULO: TStringField;
    cdsDadosNOTA_UFVEICULO: TStringField;
    cdsDadosNOTA_FRETE: TSmallintField;
    cdsDadosNOTA_QUANTIDADE: TFloatField;
    cdsDadosNOTA_PESOBRUTO: TFloatField;
    cdsDadosNOTA_PESOLIQUIDO: TFloatField;
    cdsDadosCHNFE: TStringField;
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure btnImpOrcamentoClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IniciarAdicionando: boolean;
    codCliente: longint;
    Cliente: string;
  end;

var
  formOrcamentos: TformOrcamentos;

implementation

uses orcamento, principal, saida, os, data_orcamentos;

{$R *.dfm}

procedure TformOrcamentos.btnAdicionarClick(Sender: TObject);
begin
//  inherited;
    try
      formOrcamento := TformOrcamento.Create(Self);
      formOrcamento.Tag := Self.Tag;
      formOrcamento.Processo := 'ORC';
      if not cdsDados.IsEmpty then
       begin
         formOrcamento.codCliente := cdsDados.fieldByName('CODCLIENTE').AsInteger;
         formOrcamento.Cliente := cdsDados.fieldByName('NOME').AsString;
       end else
       begin
         if codCliente > 0 then
          begin
            formOrcamento.codCliente := codCliente;
            formOrcamento.Cliente := Cliente;
          end;
       end;
      if formOrcamento.ShowModal = mrOk then
        CarregarRegistro('MO.CODIGO', formOrcamento.codMovimento);
    finally
      try
        formOrcamento.Release;
      except
      end
    end
end;

procedure TformOrcamentos.btnModificarClick(Sender: TObject);
begin
//  inherited;
    try
      formOrcamento := TformOrcamento.Create(Self);
      formOrcamento.Tag := Self.Tag;
      formOrcamento.Processo := 'ORC';
      formOrcamento.Continuar := True;
      formOrcamento.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
      if formOrcamento.ShowModal = mrOk then
        Recarregar('CODIGO');
    finally
      try
        formOrcamento.Release;
      except
      end
    end
end;

procedure TformOrcamentos.FormCreate(Sender: TObject);
begin
  IniciarAdicionando := False;

  codCliente := 0;
  Cliente := '';

  inherited;

  AdicionarCampo('CODIGO',                'MO.CODIGO');
  AdicionarCampo('DATA',                  'CAST(MO.DATA AS DATE)');
  AdicionarCampo('HORA',                  'CAST(MO.DATA AS TIME)');
  AdicionarCampo('DATAFECHA',             'CAST(MO.DATAFECHAMENTO AS DATE)');
  AdicionarCampo('NOMEUSER',              'VE.NOMEUSER');
  AdicionarCampo('NOME',                  'CL.NOME');

  SetEmpresaFilter('MO.CODEMPRESA');
  SetOrderBy('MO.DATA DESC');

  SetCampoSoma('NOTA_VALOR_TOTAL', 'Total');

  SetCampoRodape('CODIGO', 'N=0', '');
  SetCampoRodape('NOTA_VALOR_TOTAL', 'T=#,##0.00', 'SUM');
end;

procedure TformOrcamentos.FormShow(Sender: TObject);
begin
  inherited;
  if IniciarAdicionando then
    btnAdicionarClick(Sender);
end;

procedure TformOrcamentos.btnImpOrcamentoClick(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintOrcamento(cdsDadosCODIGO.AsInteger, 1);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;
end;

procedure TformOrcamentos.dxBarButton10Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintOrcamento(cdsDadosCODIGO.AsInteger, 2);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformOrcamentos.dxBarButton11Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintOV(cdsDadosCODIGO.AsInteger, 1);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformOrcamentos.dxBarButton12Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintOV(cdsDadosCODIGO.AsInteger, 2);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformOrcamentos.dxBarButton6Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;
  
  try
    formOrcamento := TformOrcamento.Create(Self);
    formOrcamento.Tag := Self.Tag;
    formOrcamento.Processo := 'ORC';
    formOrcamento.Cloning := True;
    formOrcamento.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
    if formOrcamento.ShowModal = mrOk then
      CarregarRegistro('MO.CODIGO', formOrcamento.codMovimento);
  finally
    try
      formOrcamento.Release;
    except
    end
  end

end;

procedure TformOrcamentos.dxBarButton7Click(Sender: TObject);
var
  novaos: longint;
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formSaida := TformSaida.Create(Self);
    formSaida.Cloning := True;
    formSaida.Processo := 'OSA';
    formSaida.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
    formSaida.ShowModal;
    novaos := formSaida.codMovimento;
    try
      formOS := TformOS.Create(Self);
      formOS.SetWhereDynamic(
        Format('MO.CODIGO = %d', [novaos]),
        'Nova Ordem de Serviço automaticamente criada!');
      formOS.AutoLoad := True;
      formOS.AutoEdit := True;
      formOS.ShowModal;
    finally
      try
        formOS.Release;
      except
      end
    end
  finally
    try
      formSaida.Release;
    except
    end
  end

end;

procedure TformOrcamentos.dxBarButton8Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;

  try
    formSaida := TformSaida.Create(Self);
    formSaida.Cloning := True;
    formSaida.Processo := 'VEN';
    formSaida.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
    formSaida.ShowModal;
  finally
    try
      formSaida.Release;
    except
    end
  end

end;

procedure TformOrcamentos.dxBarButton9Click(Sender: TObject);
var
  b: TBookMark;
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  if formPrincipal.Pergunta(
    'Tem certeza que deseja excluir o orçamento selecionado?',
    'Excluir') = IDYES then
   try
     cdsDados.OnReconcileError := nil;
     b := cdsDados.Bookmark;
     Desmarcartudo1Click(nil);
     cdsDados.Delete;
     if cdsDados.ApplyUpdates(0) > 0 then
      begin
        cdsDados.CancelUpdates;
        cdsDados.BookMark := b;
        if id_sel >= 0 then
         begin
           cdsDados.Edit;
           cdsDados.Fields[id_sel].AsString := 'S';
         end;
        formPrincipal.MsgError(
          'O orçamento não pode ser excluído. Pode estar em uso por outro terminal.',
          'Erro ao excluir');
      end else formPrincipal.Pronto('Excluído!');
     cdsDados.OnReconcileError := cdsDadosReconcileError;
   except
     on e: exception do
      begin
        cdsDados.OnReconcileError := cdsDadosReconcileError;
        formPrincipal.MsgError(
          'ERRO: ' + e.Message,
          'Erro ao excluir');
      end;
   end;

end;

end.
