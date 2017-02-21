unit compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, vendas, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, DBClient, ActnList,
  ExtCtrls, dxBar, dxPSCore, dxBarExtItems, Menus,
  dxStatusBar, cxMemo, cxDBEdit, cxContainer, cxTextEdit, StdCtrls,
  DBCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  cxDBLookupComboBox, cxCalendar, dxPScxCommon, dxmdaset, dxBarExtDBItems,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, cxGroupBox, cxRadioGroup, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, cxNavigator, dxSkinsdxRibbonPainter,
  dxSkinDevExpressStyle;

type
  TformCompras = class(TformVendas)
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCompras: TformCompras;

implementation

uses compra, individuais, data_etiquetas, principal, contapagar,
  data_orcamentos;

{$R *.dfm}

procedure TformCompras.btnAdicionarClick(Sender: TObject);
begin
//  inherited;
    try
      formCompra := TformCompra.Create(Self);
      formCompra.Tag := Self.Tag;
      formCompra.Processo := 'COM';
      if not cdsDados.IsEmpty then
       begin
         formCompra.codCliente := cdsDados.fieldByName('CODCLIENTE').AsInteger;
         formCompra.Cliente := cdsDados.fieldByName('NOME').AsString;
       end;
      formCompra.ShowModal;
      CarregarRegistro('MO.CODIGO', formCompra.codMovimento);
    finally
      try
        formCompra.Release;
      except
      end
    end
end;

procedure TformCompras.FormCreate(Sender: TObject);
begin
  inherited;

  SetOrderBy('MO.DATA DESC');
end;

procedure TformCompras.dxBarButton9Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formIndividuais := TformIndividuais.Create(Self);
    formIndividuais.Tag := formPrincipal.actIndividuais.Tag;
    formIndividuais.SetWhereDynamic(
      Format('ID.CODMOVENTRADA = %d', [cdsDadosCODIGO.AsInteger]),
      Format('Itens da Compra %d - %s', [cdsDadosCODIGO.AsInteger, cdsDadosNOME.AsString]));
    formIndividuais.AutoLoad := True;
    formIndividuais.ShowModal;
  finally
    try
      formIndividuais.Release;
    except
    end
  end

end;

procedure TformCompras.dxBarButton10Click(Sender: TObject);
var
  salto: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasCompras(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    1);
  dmoEtiquetas.ppEtiqCompras04x20.Print;
  dmoEtiquetas.Free;
end;

procedure TformCompras.dxBarButton12Click(Sender: TObject);
var
  salto: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasCompras(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    1);
  dmoEtiquetas.ppEtiqCompras03x10.Print;
  dmoEtiquetas.Free;

end;

procedure TformCompras.dxBarButton11Click(Sender: TObject);
var
  salto,
  parcelas: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { parcelas }
  try
    parcelas := StrToInt(InputBox('Parcelas',
      'Digite o número de parcelas do preço:' , '1'));
  except
    on exception do
      parcelas := 1;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasCompras(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    parcelas);
  dmoEtiquetas.ppEtiqCompras04x20preco.Print;
  dmoEtiquetas.Free;


end;

procedure TformCompras.dxBarButton13Click(Sender: TObject);
var
  salto,
  parcelas: integer;
begin
  inherited;

  { etiquetas a saltar }
  try
    salto := StrToInt(InputBox('Saltar etiquetas',
      'Digite o número de etiquetas para saltar:' , '0'));
  except
    on exception do
      salto := 0;
  end;

  { parcelas }
  try
    parcelas := StrToInt(InputBox('Parcelas',
      'Digite o número de parcelas do preço:' , '1'));
  except
    on exception do
      parcelas := 1;
  end;

  { impressão }
  dmoEtiquetas := TdmoEtiquetas.Create(Self);
  dmoEtiquetas.PrepareEtiquetasCompras(
    cdsDados.fieldByName('CODIGO').AsInteger,
    salto,
    parcelas);
  dmoEtiquetas.ppEtiqCompras03x10preco.Print;
  dmoEtiquetas.Free;

end;

procedure TformCompras.dxBarButton15Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formContaPagar := TformContaPagar.Create(Self);
    formContaPagar.Tag :=
      formPrincipal.actContaPagar.Tag;
    formContaPagar.SetWhereDynamic(
      Format('PAGAMENTOS.CODMOVIMENTO = %d',
        [cdsDados.FieldByName('CODIGO').AsInteger]),
      Format('Contas a pagar da Compra %d - %s',
        [cdsDados.fieldByName('CODIGO').AsInteger,
         cdsDados.fieldByName('NOME').AsString]));
    formContaPagar.AutoLoad := True;
    formContaPagar.ShowModal;
  finally
    try
      formContaPagar.Release;
    except
    end
  end

end;

procedure TformCompras.dxBarButton16Click(Sender: TObject);
var
  b: TBookMark;
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  if formPrincipal.Pergunta(
    'Tem certeza que deseja excluir a compra selecionada?',
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
          'A compra não pode ser excluída. Podem haver produtos já vendidos.',
          'Erro ao excluir');
      end else formPrincipal.Pronto('Excluída!');
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

procedure TformCompras.dxBarButton17Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintCompra(cdsDadosCODIGO.AsInteger);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

end.
