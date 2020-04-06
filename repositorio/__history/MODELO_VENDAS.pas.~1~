unit MODELO_VENDAS;

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
  cxCheckBox, cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxMemo,
  cxDBLookupComboBox, cxCalendar, dxPScxCommon, dxmdaset, dxBarExtDBItems,
  Grids, DBGrids, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSPrVwAdv,
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
  TformModeloVendas = class(TformCadModelo)
    pnlPainel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    pgcDetalhes: TcxPageControl;
    tabFechamento: TcxTabSheet;
    tabItens: TcxTabSheet;
    pnlItens: TPanel;
    grdItens: TcxGrid;
    grdItensDBTableView2: TcxGridDBTableView;
    grdItensDBTableView2BARRA: TcxGridDBColumn;
    grdItensDBTableView2DESCRICAO: TcxGridDBColumn;
    grdItensDBTableView2QUANTIDADE: TcxGridDBColumn;
    grdItensDBTableView2VALOR_PAGO: TcxGridDBColumn;
    grdItensLevel2: TcxGridLevel;
    Label10: TLabel;
    cxDBMemo1: TcxDBMemo;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    Label111: TLabel;
    cxDBTextEdit100: TcxDBTextEdit;
    tabPagamentos: TcxTabSheet;
    pnlPagamentos: TPanel;
    grdPagamentos: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsPagamentos: TClientDataSet;
    cdsPagamentosSEL: TStringField;
    cdsPagamentosCODIGO: TIntegerField;
    cdsPagamentosNUMERO: TSmallintField;
    cdsPagamentosCODDOCUMENTO: TIntegerField;
    cdsPagamentosSTATUS: TStringField;
    cdsPagamentosDOCUMENTO: TStringField;
    cdsPagamentosTIPO_DOC: TStringField;
    dsrPagamentos: TDataSource;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    cxGridDBTableView1DATAVENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView1DATAPAGO: TcxGridDBColumn;
    cxGridDBTableView1STATUS: TcxGridDBColumn;
    cxGridDBTableView1DOCUMENTO: TcxGridDBColumn;
    impnota: TdxBarButton;
    cdsPagamentosVALOR: TFloatField;
    cdsPagamentosDATAVENCIMENTO: TSQLTimeStampField;
    cdsPagamentosDATAPAGO: TSQLTimeStampField;
    dxBarButton8: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure dxBarButton6Click(Sender: TObject);
    procedure pgcDetalhesChange(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure impnotaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton99Click(Sender: TObject);
    procedure dxBarButton100Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codCliente: longint;
    Cliente: string;
  end;

var
  formModeloVendas: TformModeloVendas;

implementation

uses data_os, principal, printmov, saida, compra, printcupom, contareceber,
  individuais, data_orcamentos, funcoes, NFe_gerar;

{$R *.dfm}

procedure TformModeloVendas.FormCreate(Sender: TObject);
begin
  inherited;

  codCliente := 0;
  Cliente := '';

  EnableRefresh;

  { estou usando dmoOS para apresentar os itens }
  dmoOS := TdmoOS.Create(Self);

  SetEmpresaFilter('MO.CODEMPRESA');

  SetOrderBy('MO.DATA DESC');

  SetCampoSoma('NOTA_VALOR_TOTAL', 'Total');

  SetCampoRodape('CODIGO', 'N=0', '');
  SetCampoRodape('NOTA_VALOR_TOTAL', 'T=#,##0.00', 'SUM');
  SetCampoRodape('ABERTO', 'A=#,##0.00', 'SUM');

end;

procedure TformModeloVendas.btnExcluirClick(Sender: TObject);
var
  dmoEstorno: TdmoOS;
begin

  if formPrincipal.cdsUsuarios.FieldByName('ESTORNO').AsString = 'N' then
   begin
     formPrincipal.MsgError(
       'Você não possui o privilégio de efetuar estornos ou exclusões.',
       'Estorno');
     exit;
   end;

  if formPrincipal.Pergunta(
      'Deseja mesmo fazer o estorno?',
      'Estorno') = IDYES then
   begin

     formPrincipal.ShowMsg('Estornando...');
     btnCancelarClick(Sender);
     dmoEstorno := TdmoOS.Create(Self);

     try

       with dmoEstorno.cdsEstorno do
        begin
          Params[0].AsInteger :=
            cdsDados.fieldByName('CODIGO').AsInteger;
          Params[1].AsString :=
            formPrincipal.usuario;
          execute;
          if Params[0].AsInteger > 0 then
           begin
             formPrincipal.HideMsg;
             formPrincipal.MsgError(
               'O estorno falhou. Por favor, abra um chamado de suporte.',
               'Estorno');
           end;
        end;
       dmoEstorno.Free;
       formPrincipal.HideMsg;
       Recarregar('CODIGO');

     except
       on exception do
        begin
          try
            dmoEstorno.Free;
          except
          end;
          formPrincipal.HideMsg;
          formPrincipal.MsgError(
            'O estorno falhou. Por favor, abra um chamado de suporte.',
            'Estorno');
        end;
     end;

   end;

end;

procedure TformModeloVendas.btnModificarClick(Sender: TObject);
begin

  if (cdsDados.FieldByName('FECHADO').AsString = 'N') and
     (pos('PRODUÇÃO', cdsDados.FieldByName('STATUS').AsString) = 0) then
   begin

     { compra ou venda }
     if pos('PED COMPRA', cdsDados.FieldByName('STATUS').AsString) = 0 then
      begin

        { continuo a venda }
        try
          formSaida := TformSaida.Create(Self);
          formSaida.Tag := TAction(Sender).Tag;
          formSaida.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
          formSaida.Continuar := True;
          if formSaida.ShowModal = mrOk then
            Recarregar('CODIGO');
        finally
          try
            formSaida.Release;
          except
          end
        end

      end else
      begin

        { continuo a compra }
        try
          formCompra := TformCompra.Create(Self);
          formCompra.Tag := TAction(Sender).Tag;
          formCompra.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
          formCompra.Continuar := True;
          formCompra.Processo := 'COM';
          if formCompra.ShowModal = mrOk then
            Recarregar('CODIGO');
        finally
          try
            formCompra.Release;
          except
          end
        end

      end;

   end else
   begin

     { desativo visualização dos itens }
     pnlItens.Visible := False;
     pnlPagamentos.Visible := False;
     pgcDetalhes.ActivePage := tabFechamento;

     inherited;

   end;

end;

procedure TformModeloVendas.dxBarButton100Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintVenda(cdsDados.fieldByName('CODIGO').AsInteger, 2);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformModeloVendas.dxBarButton14Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formIndividuais := TformIndividuais.Create(Self);
    formIndividuais.Tag := formPrincipal.actIndividuais.Tag;
    formIndividuais.SetWhereDynamic(
      Format('ID.CODMOVSAIDA = %d', [cdsDados.fieldByName('CODIGO').AsInteger]),
      Format('Mov. Produtos da Venda %d - %s', [cdsDados.fieldByName('CODIGO').AsInteger, cdsDados.fieldByName('NOME').AsString]));
    formIndividuais.AutoLoad := True;
    formIndividuais.ShowModal;
  finally
    try
      formIndividuais.Release;
    except
    end
  end

end;

procedure TformModeloVendas.dxBarButton6Click(Sender: TObject);
begin
  inherited;

  if (ecf_class = 'SEM ECF') or (ecf_class = 'NFE') then
   begin

      try
        formPrintmov := TformPrintmov.Create(Self);
        formPrintmov.Caption := 'PEDIDO DE VENDA';
        formPrintmov.codMovimento :=
          cdsDados.fieldByName('CODIGO').AsInteger;
        formPrintmov.numImpMov :=
          formPrincipal.cdsPerfil.fieldByName('OSFECHADA_PADRAO').AsInteger;
        formPrintmov.impressora :=
          formPrincipal.cdsImpressoras.fieldByName('FECHAMENTO').AsString;
        formPrintmov.showmodal;
      finally
        try
          { destruo o form }
          formPrintMov.Release;
        except
        end
      end;

   end else
   begin

      try
        formPrintCupom := TformPrintCupom.Create(Self);
        formPrintCupom.codMovimento :=
          cdsDados.fieldByName('CODIGO').AsInteger;
        formPrintCupom.showmodal;
      finally
        try
          { destruo o form }
          formPrintCupom.Release;
        except
        end
      end


   end;

end;

procedure TformModeloVendas.dxBarButton8Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formContaReceber := TformContaReceber.Create(Self);
    formContaReceber.Tag :=
      formPrincipal.actContaReceber.Tag;
    formContaReceber.SetWhereDynamic(
      Format('PAGAMENTOS.CODMOVIMENTO = %d',
        [cdsDados.FieldByName('CODIGO').AsInteger]),
      Format('Conta a receber da Venda %d - %s',
        [cdsDados.fieldByName('CODIGO').AsInteger,
         cdsDados.fieldByName('NOME').AsString]));
    formContaReceber.AutoLoad := True;
    formContaReceber.ShowModal;
  finally
    try
      formContaReceber.Release;
    except
    end
  end
end;

procedure TformModeloVendas.dxBarButton99Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintVenda(cdsDados.fieldByName('CODIGO').AsInteger, 1);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformModeloVendas.pgcDetalhesChange(Sender: TObject);
begin
  inherited;

  { mostro os itens, se houver }
  if (pgcDetalhes.ActivePage = tabItens) and (not pnlItens.Visible) then
   begin

     with dmoOS.cdsItens do
      try
        if active then close;
        params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
        formPrincipal.ShowMsg('Lendo Produtos e Serviços...');
        open;
        RemoteServer.Close;
        pnlItens.Visible := True;
        grdItens.Visible := not IsEmpty;
        formPrincipal.HideMsg;
      except
        on exception do
         begin
           RemoteServer.Close;
           formPrincipal.HideMsg;
           raise;
         end;
      end;

   end;

  { mostro os pagamentos, se houver }
  if (pgcDetalhes.ActivePage = tabPagamentos) and (not pnlPagamentos.Visible) then
   begin

     with cdsPagamentos do
      try
        if active then close;
        params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
        formPrincipal.ShowMsg('Lendo Pagamentos...');
        open;
        RemoteServer.Close;
        pnlPagamentos.Visible := True;
        grdPagamentos.Visible := not IsEmpty;
        formPrincipal.HideMsg;
      except
        on exception do
         begin
           RemoteServer.Close;
           formPrincipal.HideMsg;
           raise;
         end;
      end;

   end;

end;

procedure TformModeloVendas.btnAdicionarClick(Sender: TObject);
begin
//  inherited;
  try
    formSaida := TformSaida.Create(Self);
    formSaida.Tag := TAction(Sender).Tag;
    if not cdsDados.IsEmpty then
     begin
       formSaida.codCliente := cdsDados.fieldByName('CODCLIENTE').AsInteger;
       formSaida.Cliente := cdsDados.fieldByName('NOME').AsString;
     end else
     begin
       if codCliente > 0 then
        begin
          formSaida.codCliente := codCliente;
          formSaida.Cliente := Cliente;
        end;
     end;
    if formSaida.ShowModal = mrOk then
      CarregarRegistro('MO.CODIGO', formSaida.codMovimento);
  finally
    try
      formSaida.Release;
    except
    end
  end
end;

procedure TformModeloVendas.impnotaClick(Sender: TObject);
begin
  inherited;
  if cdsDados.FieldByName('NOTA_NUMERO').AsInteger > 0 then
   begin
     if formPrincipal.Pergunta(
         'Deseja imprimir novamente NF para este movimento?',
         'Reimprimir nota') = IDNO then
       exit;
   end;


  if trim(formPrincipal.cdsImpressoras.FieldByName('ECF').AsString) <> 'NFE' then
   begin

      { nota fiscal de formulário }
      try
        formPrintmov := TformPrintmov.Create(Self);
        formPrintmov.nf := True;
        formPrintmov.Caption := 'NOTA FISCAL';
        formPrintmov.codMovimento :=
          cdsDados.fieldByName('CODIGO').AsInteger;
        formPrintmov.numImpMov :=
          formPrincipal.cdsPerfil.fieldByName('NOTA_PADRAO').AsInteger;
        formPrintmov.impressora :=
          formPrincipal.cdsImpressoras.fieldByName('NF').AsString;
        formPrintmov.showmodal;
      finally
        try
          { destruo o form }
          formPrintMov.Release;
        except
        end
      end

   end else
   begin

      { nota fiscal eletrônica }
      try
        formNFeGerar := TformNFeGerar.Create(Self);
        formNFeGerar.codMovimento :=
          cdsDados.fieldByName('CODIGO').AsInteger;
        formNFeGerar.showmodal;
        Recarregar('CODIGO');
      finally
        try
          { destruo o form }
          formNFeGerar.Release;
        except
        end
      end

   end;


end;

procedure TformModeloVendas.FormShow(Sender: TObject);
begin
  inherited;
  if (trim(formPrincipal.cdsImpressoras.fieldByName('NF').AsString) > '') or
     (trim(formPrincipal.cdsImpressoras.FieldByName('ECF').AsString) = 'NFE') then
    impnota.Visible := ivAlways
  else
    impnota.Visible := ivNever;
end;

end.
