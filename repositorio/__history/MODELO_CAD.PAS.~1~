unit MODELO_CAD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Grids, crtl, MidasLib,
  DBGrids, Menus, Db, DBCtrls, Mask, FMTBcd, DBClient, SqlExpr,
  Provider, dxBar, cxPC, cxControls, dxBarExtItems, cxGraphics, dxStatusBar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  ActnList, cxDropDownEdit, cxDBEdit,
  cxCalendar, cxMemo, cxMaskEdit, cxContainer, cxTextEdit,
  StrUtils, cxDBLookupComboBox, cxGridDBDataDefinitions, dxPScxCommon,
  cxCheckBox, cxButtons, dxmdaset, dxBarExtDBItems, cxGroupBox, cxLookAndFeels,
  cxGridExportLink, ShellApi, dxSkinsCore,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxSkinOffice2007Blue, cxLookAndFeelPainters,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, cxNavigator, dxSkinsdxRibbonPainter,
  dxSkinDevExpressStyle;

const
  CM_EXPANDGROUPS = WM_USER + 1002;
  CM_FORMLOGOUT   = WM_USER + 9;
  CM_FORMSEARCH   = WM_USER + 8;
  TASKBAR_HEIGHT  = 30;

type
  TformCadModelo = class(TForm)
    dsrDados: TDataSource;
    cdsDados: TClientDataSet;
    pgcDados: TcxPageControl;
    tabVisual: TcxTabSheet;
    tabDetalhe: TcxTabSheet;
    dxBarManagerCad: TdxBarManager;
    dxBarDockControl_BotoesSelecao: TdxBarDockControl;
    dxBarDockControl_Selecao: TdxBarDockControl;
    pnlFundoGrade: TPanel;
    btnAdicionar: TdxBarLargeButton;
    dxBarDockControl_Links: TdxBarDockControl;
    lblWhere: TdxBarStatic;
    dxBarButton1: TdxBarButton;
    btnModificar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSair: TdxBarLargeButton;
    dbnDetalhes: TDBNavigator;
    dxBarDockControl_BotesDetalhes: TdxBarDockControl;
    btnSalvar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    dxBarDockControlWhere: TdxBarDockControl;
    dxStatusBar: TdxStatusBar;
    dxBarSubItem1: TdxBarSubItem;
    pnlEdicao: TPanel;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    edtSelecionar: TdxBarEdit;
    cmbSelecionar: TdxBarCombo;
    tmrFocus: TTimer;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    grdDados: TcxGrid;
    dxComponentPrinter: TdxComponentPrinter;
    dxBarSubItem2: TdxBarSubItem;
    dxBarPopupPrint: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    btnAjuda: TdxBarLargeButton;
    actDetalhes: TActionList;
    tmrRelogio: TTimer;
    btnRestaurar: TdxBarButton;
    tmrLabel: TTimer;
    menuGrade: TPopupMenu;
    SelecionarTudo1: TMenuItem;
    Desmarcartudo1: TMenuItem;
    sep1: TMenuItem;
    atualizargrade1: TMenuItem;
    dedDataIni: TdxBarDateCombo;
    dedDataFim: TdxBarDateCombo;
    cmbSelecionar2: TdxBarCombo;
    edtSelecionar2: TdxBarEdit;
    tmrFocus2: TTimer;
    Action1: TAction;
    btnOcultos: TdxBarButton;
    btnEmpresas: TdxBarButton;
    lbSEL: TdxBarStatic;
    btnAplicarData: TdxBarButton;
    memDataEntre: TdxMemData;
    memDataEntreFILTRO: TStringField;
    dsrDataEntre: TDataSource;
    memDataEntreCAMPO: TStringField;
    tmrSemDireito: TTimer;
    tmrSel: TTimer;
    memCampos: TdxMemData;
    memCamposSEL: TStringField;
    memCamposCAMPO: TStringField;
    memCamposCOLUNA: TIntegerField;
    dsrCampos: TDataSource;
    Invertermarcao1: TMenuItem;
    sep3: TMenuItem;
    tmrMove: TTimer;
    memDataGraph: TdxMemData;
    memDataGraphNome: TStringField;
    memDataGraphValor: TFloatField;
    menuGrafico: TdxBarButton;
    FileSaveDialog: TFileSaveDialog;
    SaveDialog: TSaveDialog;
    dxComponentPrinterLink1: TdxGridReportLink;
    tmrShift: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState); virtual;
    procedure edtPesquisar2Enter(Sender: TObject);
    procedure edtPesquisar2Exit(Sender: TObject);
    procedure edtPesquisar2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDadosDblClick(Sender: TObject);
    procedure cdsDadosAfterOpen(DataSet: TDataSet);
    procedure cmbSelecionarChange(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); virtual;
    procedure btnModificarClick(Sender: TObject); virtual;
    procedure btnSairClick(Sender: TObject); virtual;
    procedure btnSalvarClick(Sender: TObject); virtual;
    procedure btnCancelarClick(Sender: TObject); virtual;
    procedure btnExcluirClick(Sender: TObject); virtual;
    procedure edtSelecionarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmrFocusTimer(Sender: TObject);
    procedure lbModeloMouseEnter(Sender: TObject);
    procedure lbModeloMouseLeave(Sender: TObject);
    procedure edtSelecionarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btnAjudaClick(Sender: TObject); virtual;
    procedure pgcDadosChange(Sender: TObject);
    procedure cdsDadosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure tmrRelogioTimer(Sender: TObject);
    procedure tmrLabelTimer(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure Desmarcartudo1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cdsDadosAfterEdit(DataSet: TDataSet); virtual;
    procedure atualizargrade1Click(Sender: TObject);
    procedure menuGradePopup(Sender: TObject);
    procedure tmrFocus2Timer(Sender: TObject);
    procedure cmbSelecionar2Change(Sender: TObject);
    procedure cdsDadosBeforePost(DataSet: TDataSet); virtual;
    procedure cdsDadosNewRecord(DataSet: TDataSet); virtual;
    procedure dsrDadosDataChange(Sender: TObject; Field: TField);
    procedure edtSelecionarEnter(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ckBoxMouseEnter(Sender: TObject);
    procedure ckBoxMouseLeave(Sender: TObject);
    procedure btnOcultosClick(Sender: TObject); virtual;
    procedure btnEmpresasClick(Sender: TObject); virtual;
    procedure tmrSemDireitoTimer(Sender: TObject);
    procedure cdsDadosAfterScroll(DataSet: TDataSet); virtual;
    procedure tmrSelTimer(Sender: TObject);
    procedure Invertermarcao1Click(Sender: TObject);
    procedure tmrMoveTimer(Sender: TObject);
    procedure edtSelecionarCurChange(Sender: TObject);
    procedure cdsDadosBeforeOpen(DataSet: TDataSet);
    procedure cdsDadosAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDadosBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure tmrShiftTimer(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtSelecionar2Change(Sender: TObject);
  private
    { Private declarations }
    WhereArgDynamic: string;
    acao: TReconcileAction;
    traducao: TStringList;
    last_label: TLabel;
    last_labelcaption: string;
    somaCampo,
    somaDescricao,
    securityvar: string;
    gradeOculto,
    gradeSel: integer;
    vlinks,
    sc_novo,
    sc_detalhes,
    sc_imprimir,
    sc_exportar,
    sc_salvar,
    sc_excluir,
    sc_ajuda: boolean;
    errorcount: integer;
    op: string;
    tempo1: extended;
    procedure CMExpandGroups(var Msg: TMessage); message CM_EXPANDGROUPS;
    procedure Desconectar(var Message: TMessage); message CM_FORMLOGOUT;
    procedure Pesquisar(var Message: TMessage); message CM_FORMSEARCH;
    procedure SetSecurity(s: string);
    procedure cdsDadosSELChange(Sender: TField);
    procedure WMMove(var Msg: TWMMove); message WM_MOVE;
// DEVEXPRESS 12 e 13
//    procedure cxGrid1DBTableView1StylesGetContentStyle(
//      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
//      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  public
    { Public declarations }
    WhereArgStatic: string;
    AutoLoad: boolean;
    CacheView: boolean;
    AutoEdit: boolean;
    empresaFilter: boolean;
    empresaFCode: string;
    tmpSQL: string;
    tmpSQLSel: string;
    tmpSQLGroup: string;
    OrderByArg: string;
    MultiSelect: boolean;
    Transferir: boolean;
    salvo: boolean;
    no_sel: longint;
    to_sel: extended;
    novo_registro: boolean;
    PesquisaTexto: string;
    PesquisaCampo,
    PesquisaContendo: string;
    refreshon,
    fullrefresh: boolean;
    id_sel,
    id_soma: integer;
    function SelMarcado: boolean;
    procedure ConfigControls;
    procedure SetWhereDynamic(st, stmsg: string);
    procedure AdicionarCampo(s1, s2: string);
    procedure Liberar;
    procedure Recarregar(chave: string);
    procedure RecarregarNovo;
    procedure CarregarRegistro(campo: string; codigo: longint);
    procedure SetOrderBy(s: string);
    procedure SelectFilter;
    procedure SelectRelease;
    procedure FocusOnField(c: string);
    procedure ConfigPages;
    function CampoRequerido(c: string): boolean;
    function VerificaRequeridos(cds: TClientDataset): boolean;
    procedure SalvarDataset(cds: TClientDataset; s: string);
    procedure CancelarDataset(cds: TClientDataset);
    procedure SetEmpresaFilter(c: string);
    procedure SetCampoSoma(c, d: string);
    procedure AdicionarFiltroData(c, d: string);
    procedure FiltrarCampos;
    procedure MostrarCampos;
    procedure SetCampoRodape(c, m, t: string);
    procedure EnableRefresh;
    procedure VerificarCampos;
  end;

var
  formCadModelo: TformCadModelo;

implementation

uses
  principal, funcoes, reconcile, thSequencia, MODELO_SELCAMPOS,
  MODELO_GRAFICO;

{$R *.DFM}

procedure TformCadModelo.EnableRefresh;
begin
  refreshon := True;
end;

procedure TformCadModelo.VerificarCampos;
begin
  if pnlEdicao.CanFocus then
    pnlEdicao.SetFocus;
end;

procedure TformCadModelo.WMMove(var Msg: TWMMove);
begin
  if Active then
   begin
     if tmrMove.Enabled then
       tmrMove.Enabled := False;
     tmrMove.Enabled := True;
   end;
end;

procedure TformCadModelo.FiltrarCampos;
begin
  memCampos.First;
  while not memCampos.Eof do
   begin
     cxGrid1DBTableView1.Columns[memCamposCOLUNA.AsInteger].Visible :=
       (memCamposSEL.AsString = 'S');
     memCampos.next;
   end;
  if id_sel >= 0 then
    cxGrid1DBTableView1.Columns[0].Visible := False;
end;

procedure TformCadModelo.MostrarCampos;
begin
  memCampos.First;
  while not memCampos.Eof do
   begin
     cxGrid1DBTableView1.Columns[memCamposCOLUNA.AsInteger].Visible := True;
     memCampos.next;
   end;
  if id_sel >= 0 then
    cxGrid1DBTableView1.Columns[0].Visible := True;
end;

procedure TformCadModelo.SetCampoSoma(c, d: string);
begin
  somaCampo := c;
  somaDescricao := d;
  SetCampoRodape(c, 'T=#,##0.00', 'SUM');
end;

procedure TformCadModelo.SetCampoRodape(c, m, t: string);
var
  i: word;
begin
  for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
   if cxGrid1DBTableView1.Columns[i].DataBinding.FieldName = c then
    begin
      with cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add do
       begin
         ItemLink := cxGrid1DBTableView1.Columns[i];
         Format := m;
         if t = 'SUM' then
           Kind := skSum
         else if t = 'MED' then
           Kind := skAverage
         else if t = 'MIN' then
           Kind := skMin
         else if t = 'MAX' then
           Kind := skMax
         else
           Kind := skCount;
         Position := spFooter;
       end;
      with cxGrid1DBTableView1.DataController.Summary.DefaultGroupSummaryItems.Add do
       begin
         ItemLink := cxGrid1DBTableView1.Columns[i];
         Format := m;
         if t = 'SUM' then
           Kind := skSum
         else if t = 'MED' then
           Kind := skAverage
         else if t = 'MIN' then
           Kind := skMin
         else if t = 'MAX' then
           Kind := skMax
         else
           Kind := skCount;
         Position := spFooter;
       end;
    end;
end;

procedure TformCadModelo.AdicionarFiltroData(c, d: string);
begin
  if not memDataEntre.Active then
   begin
     memDataEntre.Open;
     memDataEntre.InsertRecord([nil, '[sem filtro]', '']);
     dxBarManagerCad.Bars[5].Visible := True;
   end else memDataEntre.InsertRecord([nil, d, c]);
end;

function TformCadModelo.SelMarcado: boolean;
begin
  { se houver SEL, edição somente no campo marcado }
  if id_sel >= 0 then
    if no_sel = 1 then
      if cdsDados.Fields[id_sel].AsString = 'S' then
          Result := True else
       begin
         cdsDados.DisableControls;
         cdsDados.First;
         while (cdsDados.Fields[id_sel].AsString = 'N') and (not cdsDados.Eof) do
           cdsDados.Next;
         cdsDados.EnableControls;
         Result := (cdsDados.Fields[id_sel].AsString = 'S');
       end
    else Result := False
  else Result := True;
end;

procedure TformCadModelo.cdsDadosSELChange(Sender: TField);
var
  s: integer;
  t: extended;
begin
  { verifico se está em inserção }
  if cdsDados.State = dsInsert then
    exit;

  { atualização }
  if tmrSel.Enabled then
    tmrSel.Enabled := False;

//  { foco para iniciar atualização }
//  if grdDados.CanFocus then
//    grdDados.SetFocus;

  s := no_sel;
  t := to_sel;

  { desativo os eventos lentos }
  cdsDados.AfterEdit := nil;
  cdsDados.BeforePost := nil;
  cdsDados.AfterScroll := nil;

  { processo o SelectUnico }
  if not MultiSelect then
   try
     if s = 1 then
      begin
        if cdsDados.Fields[id_sel].AsString = 'S' then
         begin
           cdsDados.Edit;
           cdsDados.Fields[id_sel].AsString := 'N';
           cdsDados.Post;
         end else
         begin
           s := 0;
           t := 0;
         end;
      end else
      begin
        if cdsDados.Fields[id_sel].AsString = 'S' then
         begin
           s := 1;
           if (somaCampo > '') and (id_soma >= 0) then
             t := cdsDados.fields[id_soma].AsFloat
           else
             t := 0;
         end else
         begin
           s := 0;
           t := 0;
         end;
      end;
   except

// ROTINA QUE BUSCA E DESMARCA QUANDO OUTRO É SELECIONADO
// TEM PROBLEMAS DE PERFORMANCE PQ FAZ FETCH ALL
//   try
//     cdsDados.Fields[id_sel].OnChange := nil;
//     cdsDados.DisableControls;
//     o := cdsDados.Fields[id_sel].AsString;
//     if o = 'S' then
//      begin
//        cdsDados.Edit;
//        cdsDados.Fields[id_sel].AsString := 'N';
//        cdsDados.Post;
//        p := cdsDados.RecNo;
//        if cdsDados.Locate('SEL', 'S', []) then
//         begin
//           cdsDados.Edit;
//           cdsDados.Fields[id_sel].AsString := 'N';
//           cdsDados.Post;
//           cdsDados.MoveBy(p - cdsDados.RecNo);
//         end;
//        cdsDados.edit;
//        cdsDados.Fields[id_sel].AsString := 'S';
//        cdsDados.post;
//        s := 1;
//        if (somaCampo > '') and (id_soma >= 0) then
//          t := cdsDados.fields[id_soma].AsFloat
//        else
//          t := 0;
//      end else
//      begin
//        s := 0;
//        t := 0;
//      end;
//     cdsDados.EnableControls;
//     cdsDados.Fields[id_sel].OnChange := cdsDadosSELChange;
//   except
//     cdsDados.EnableControls;
//     cdsDados.Fields[id_sel].OnChange := cdsDadosSELChange;
   end else

   { processo o SelectMultiplo }
   if Sender.AsString = 'S' then
    begin
      inc(s);
      if (id_soma >= 0) then
        t := t + cdsDados.fields[id_soma].AsFloat;
    end else
    begin
      dec(s);
      if (id_soma >= 0) then
        t := t - cdsDados.fields[id_soma].AsFloat;
    end;

  no_sel := s;
  to_sel := t;

  { ativo os eventos lentos }
  cdsDados.AfterEdit := cdsDadosAfterEdit;
  cdsDados.BeforePost := cdsDadosBeforePost;
  cdsDados.AfterScroll := cdsDadosAfterScroll;

  { atualização }
  tmrSel.Enabled := True;

end;

// DEVEXPRESS 11
procedure TformCadModelo.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  { se o campo SEL existir e for "S", mudo de cor }
  if gradeSel >= 0 then
    if ARecord.Values[gradeSel] = 'S' then
      AStyle := formPrincipal.ColunaMarcada;
  { se o campo OCULTO existir e for "S", mudo de cor }
  if gradeOculto >= 0 then
    if (ARecord.Values[gradeOculto] = 'S') and (AStyle <> formPrincipal.ColunaMarcada) then
      AStyle := formPrincipal.ColunaOculta;
end;

procedure TformCadModelo.SetEmpresaFilter(c{, n}: string);
begin
  empresaFilter := True;
  empresaFCode := c;
//  empresaFName := n;
end;

procedure TformCadModelo.Desconectar(var Message: TMessage);
var
  i: word;
begin

  { termino a edição }
  tag := 66;
  if pgcDados.ActivePage = tabDetalhe then
    btnCancelarClick(nil);

  { fecho o formulários pai deste }
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TForm then
      if (TForm(Components[i]).Owner = (Self as TForm)) and
         (TForm(Components[i]) <> Application.MainForm) then
       begin
         PostMessage(TForm(Components[i]).Handle, CM_FORMLOGOUT, 0, 0);
         Application.ProcessMessages;
       end;

  { fecho ele mesmo }
  modalresult := mrCancel;
end;

procedure TformCadModelo.Pesquisar(var Message: TMessage);
var
  i, j, maxWhere, maxFrom: word;
  CampoSel, CampoTrad, s, slike, tmpFullSql: string;
begin

 { se foi apertado enter }
 if (edtSelecionar.Text > '') or AutoLoad then
  begin

   if (length(edtSelecionar.Text) < 2) and (not AutoLoad) then
    begin
      formPrincipal.MsgError(
        'A expressão de busca deve conter pelo menos 2 caracteres!',
        'Mais Detalhes!');
      tmrFocus.Enabled := True;
      exit;
    end;

   pnlFundoGrade.Caption := '...';
   pnlFundoGrade.Repaint;

   try
     formPrincipal.ShowMsg('Fazendo pesquisa...');

     with cdsDados do
      begin

       if not AutoLoad then
        begin

          { nome do campo selecionado }
          for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
            if cxGrid1DBTableView1.Columns[i].Caption = cmbSelecionar.Items[cmbSelecionar.ItemIndex] then
             CampoSel := cxGrid1DBTableView1.Columns[i].DataBinding.FieldName;

          { verifico se existem traduções de campos }
          if traducao.Count > 0 then
           begin
             CampoTrad := traducao.Values[CampoSel];
             if CampoTrad = '' then
               CampoTrad := CampoSel;
           end else CampoTrad := CampoSel;

          { campo String }
          if fieldByName(CampoSel) is TStringField then
           begin

             { traduzo o arqumento }
             slike := trim(funcoes.Coringa(edtSelecionar.Text));

             { elimino os % redundantes }
             while pos('%%', slike) > 0 do
               System.delete(slike, pos('%%', slike), 1);

             { uso like para selecionar partes }
             tmpSQLSel := 'WHERE ' + CampoTrad + ' LIKE ''' + slike + '''';
           end
          { campo Data }
          else
          if (fieldByName(CampoSel) is TDateField) or
             (fieldByName(CampoSel) is TDateTimeField) or
             (fieldByName(CampoSel) is TSQLTimeStampField) then
           begin

            { data completa dia/mes/ano }
            if (length(trim(edtSelecionar.Text)) = 10) and
               (copy(edtSelecionar.Text, 3, 1) = '/') and
               (copy(edtSelecionar.Text, 6, 1) = '/') then
             begin
               tmpSQLSel := 'WHERE ' + CampoTrad + ' = ''' +
                 funcoes.InverteDiaMes(edtSelecionar.Text) + '''';
             end else
            { somente o mês/ano }
            if (length(trim(edtSelecionar.Text)) = 7) and
               (copy(edtSelecionar.Text, 3, 1) = '/') then
             begin
               tmpSQLSel := 'WHERE EXTRACT(MONTH FROM ' + CampoTrad + ') = ' +
                 copy(edtSelecionar.Text, 1, 2) + ' AND ' +
                 'EXTRACT(YEAR FROM ' + CampoTrad + ') = ' +
                 copy(edtSelecionar.Text, 4, 4) + ' ';
             end else
            { somente o ano }
            if length(trim(edtSelecionar.Text)) = 4 then
             begin
               tmpSQLSel := 'WHERE EXTRACT(YEAR FROM ' + CampoTrad + ') = ' +
                 edtSelecionar.Text + ' ';
             end else
            { data nenhuma, texto de ajuda }
             begin
               formPrincipal.HideMsg;
               formPrincipal.MsgError(
                 'Exemplos: ' + #13#10 +
                 '31/12/2005 para um dia' + #13#10 +
                 '10/2005 para um mês' + #13#10 +
                 '2005 para um ano',
                 'Data inválida');
               pnlFundoGrade.Caption := 'Digite uma nova expressão de pesquisa';
               pnlFundoGrade.Repaint;
               tmrFocus.Enabled := True;
               exit;
             end;

           end
          { campo decimal }
          else
          if (fieldByName(CampoSel) is TFloatField) or
             (fieldByName(CampoSel) is TBCDField) or
             (fieldByName(CampoSel) is TFMTBCDField) then
           begin

            { validação de campo decimal }
            s := edtSelecionar.Text;
            while pos(',', s) > 0 do s[pos(',', s)] := '.';
            for i := 1 to length(s) do
             if not (s[i] in ['0'..'9', '.']) then
              begin
                formPrincipal.HideMsg;
                formPrincipal.MsgError(
                  'Utilize apenas números e decimais na seleção deste campo. Exemplo: 25,00',
                  'Entrada inválida');
                pnlFundoGrade.Caption := 'Digite uma nova expressão de pesquisa';
                pnlFundoGrade.Repaint;
                tmrFocus.Enabled := True;
                exit;
              end;

            tmpSQLSel := ' WHERE ' + CampoTrad + ' = ' +
              s;

           end
          else
          begin

            { validação de campo numérico }
            s := edtSelecionar.Text;
            for i := 1 to length(s) do
             if not (s[i] in ['0'..'9']) then
              begin
                formPrincipal.HideMsg;
                formPrincipal.MsgError(
                  'Utilize apenas números na seleção deste campo. Exemplo: 1999',
                  'Entrada inválida');
                pnlFundoGrade.Caption := 'Digite uma nova expressão de pesquisa';
                pnlFundoGrade.Repaint;
                tmrFocus.Enabled := True;
                exit;
              end;

            tmpSQLSel := ' WHERE ' + CampoTrad + ' = ' +
              edtSelecionar.Text;
          end;

          { SEGUNDA SELECAO }
          if (cmbSelecionar2.ItemIndex >= 0) and
             (edtSelecionar2.Text > '') then
           begin

             { nome do campo selecionado2 }
             for i := 0 to Self.ComponentCount - 1 do
              if Self.Components[i] is TcxGridDBColumn then
               if (Self.Components[i] as TcxGridDBColumn).Caption = cmbSelecionar2.Items[cmbSelecionar2.ItemIndex] then
                CampoSel := (Self.Components[i] as TcxGridDBColumn).DataBinding.FieldName;

             { verifico se existem traduções de campos }
             if traducao.Count > 0 then
              begin
                CampoTrad := traducao.Values[CampoSel];
                if CampoTrad = '' then
                  CampoTrad := CampoSel;
              end else CampoTrad := CampoSel;

             { campo String }
             if fieldByName(CampoSel) is TStringField then
               tmpSQLSel := tmpSQLSel + ' AND ' + CampoTrad + ' LIKE ''' +
                 funcoes.Coringa(edtSelecionar2.Text) + ''''
             { campo Data }
             else
             if (fieldByName(CampoSel) is TDateTimeField) or
                (fieldByName(CampoSel) is TSQLTimeStampField) then
               tmpSQLSel := tmpSQLSel + ' AND ' + CampoTrad + ' = ''' +
                 funcoes.InverteDiaMes(edtSelecionar2.Text) + ''''
             { campo numérico }
             else
               tmpSQLSel := tmpSQLSel + ' AND ' + CampoTrad + ' = ' +
                 edtSelecionar2.Text;

           end

        end else
        begin

//          AutoLoad := False;
          if (WhereArgStatic > '') or (WhereArgDynamic > '') then
            tmpSQLSel := ' WHERE '
          else
            tmpSQLSel := ' ';

        end;

       if WhereArgStatic > '' then
        if tmpSQLSel <> ' WHERE ' then
          tmpSQLSel := ' ' + tmpSQLSel + ' AND ' +
            WhereArgStatic
        else
          tmpSQLSel := ' ' + tmpSQLSel + ' ' +
            WhereArgStatic;

       if WhereArgDynamic > '' then
        if tmpSQLSel <> ' WHERE ' then
          tmpSQLSel := ' ' + tmpSQLSel + ' AND ' +
            WhereArgDynamic
        else
          tmpSQLSel := ' ' + tmpSQLSel + ' ' +
            WhereArgDynamic;

        { ocultos }
        if funcoes.CampoExiste(cdsDados, 'OCULTO') and (not btnOcultos.Down) then
         begin

           { verifico se existe traducao para OCULTO }
           CampoTrad := traducao.Values['OCULTO'];
           if CampoTrad = '' then
             CampoTrad := 'OCULTO';

           { adiciono o filtragem do OCULTO }
           if tmpSQLSel <> ' WHERE ' then
             tmpSQLSel := ' ' + tmpSQLSel + ' AND ' +
                CampoTrad + ' = ' + QuotedStr('N')
           else
             tmpSQLSel := ' ' + tmpSQLSel + ' ' +
                CampoTrad + ' = ' + QuotedStr('N');

         end;

        { empresas }
        if empresaFilter and (not btnEmpresas.Down) then
         begin

           { verifico se existe traducao para EmpresaCode }
           CampoTrad := traducao.Values[empresaFCode];
           if CampoTrad = '' then
             CampoTrad := empresaFCode;

           { montagem da expressão - parte I }
           s := Format('%s = %d', [CampoTrad, formPrincipal.codempresa]);

           { adiciono o filtragem de EMPRESA }
           if tmpSQLSel <> ' WHERE ' then
             tmpSQLSel := ' ' + tmpSQLSel + ' AND ' + s
           else
             tmpSQLSel := ' ' + tmpSQLSel + ' ' + s;

         end;

       { verifico se o WHERE é anterior ao último FROM }
       i := 0;
       s := tmpSQL;
       repeat
         j := AnsiPos('FROM', AnsiUpperCase(s));
         if j > 0 then
          begin
            s := copy(s, j + 1, length(s) - j);
            i := i + j;
          end;
       until j = 0;
       maxFrom := i;

       i := 0;
       s := tmpSQL;
       repeat
         j := AnsiPos('WHERE', AnsiUpperCase(s));
         if j > 0 then
          begin
            s := copy(s, j + 1, length(s) - j);
            i := i + j;
          end;
       until j = 0;
       maxWhere := i;

       { se o where for depois do FROM, substituo }
       if (maxWhere > 0) and (maxWhere > maxFrom) then
         tmpSQLSel := AnsiReplaceText(tmpSQLSel, 'WHERE', 'AND');

       tmpFullSQL :=
         tmpSQL + ' ' + tmpSQLSel + ' ' + tmpSQLGroup;

//       { Order By }
//       CampoSel := '';
//       for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
//        begin
//          if cxGrid1DBTableView1.Columns[i].SortOrder = soAscending then
//            CampoSel := cxGrid1DBTableView1.Columns[i].DataBinding.FieldName;
//          if cxGrid1DBTableView1.Columns[i].SortOrder = soDescending then
//            CampoSel := cxGrid1DBTableView1.Columns[i].DataBinding.FieldName + ' DESC';
//        end;
//       if CampoSel > '' then
//         tmpFullSQL := tmpFullSQL + ' ORDER BY ' + CampoSel
//       else
//         if OrderByArg > '' then
//           tmpFullSQL := tmpFullSQL + ' ' + OrderByArg;

       cdsDados.CommandText := tmpFullSQL;

//       formPrincipal.HideMsg;
//       ShowMessage(cdsDados.CommandText);
//       ShowMessage(DecimalSeparator);

       if Active then
         Close;
       Open;
       RemoteServer.Close;

      end;

     if not cdsDados.IsEmpty then
      begin
       btnAdicionar.Enabled := True;
       btnModificar.Enabled := False;
       btnImprimir.Enabled := True;
       grdDados.Visible := True;
       if not AutoLoad then
         grdDados.SetFocus
       else
         tmrFocus.Enabled := True;
      end else
      begin
       btnAdicionar.Enabled := True;
       tmrFocus.Enabled := True;
      end;

     if AutoLoad then
       AutoLoad := False;

     formPrincipal.HideMsg;

   except
     on e: exception do
      begin
        formPrincipal.CONN_DBError(
          Self.Name + ': Pesquisa: ',
          cmbSelecionar.Items[cmbSelecionar.ItemIndex] + '=' +
          edtSelecionar.Text,
          e.message);
        if AutoLoad then
          AutoLoad := False;
        formPrincipal.HideMsg;
        raise;
      end;
   end;

   Screen.Cursor := crDefault;

  end else
  begin
    edtSelecionar.Text  := AnsiUpperCase(edtSelecionar.Text);
    edtSelecionar2.Text := AnsiUpperCase(edtSelecionar2.Text);
  end;

end;

procedure TformCadModelo.SalvarDataset(cds: TClientDataset; s: string);
begin

  if cds.Active then
   begin

     { gravo se estiver pendente }
     if (not cds.IsEmpty) and (cds.State in [dsInsert, dsEdit]) then
       cds.Post;

     { se existirem alteraçÕes, aplico }
     if (cds.ChangeCount > 0) or (s = 'Imagem') then
       try
         formPrincipal.ShowMsg('Gravando ' + s + '...');
         if not cds.IsEmpty then
          begin
            cds.Edit;
            if funcoes.CampoExiste(cds, 'LOG_USUARIO') then
              cds.fieldByName('LOG_USUARIO').AsString := formPrincipal.usuario;
            if funcoes.CampoExiste(cds, 'LOG_MAQUINA') then
              cds.fieldByName('LOG_MAQUINA').AsString := funcoes.GetMachine;
            if funcoes.CampoExiste(cds, 'LOG_DATA') then
              cds.fieldByName('LOG_DATA').AsDateTime := formPrincipal.GetTime;
            if funcoes.CampoExiste(cds, 'LOG_HORA') then
              cds.fieldByName('LOG_HORA').AsDateTime := formPrincipal.GetTime;
            if funcoes.CampoExiste(cds, 'DATACADAST') then
              cds.fieldByName('DATACADAST').AsDateTime := formPrincipal.GetTime;
            cds.Post;
          end;
         cds.ApplyUpdates(-1);
         cds.RemoteServer.Close;
         formPrincipal.HideMsg;
       except
         on exception do
          begin
            formPrincipal.MsgError(
              'Falha ao gravar ' + s + '.',
              'Erro de gravação');
            raise;
          end;
       end

   end;
end;

procedure TformCadModelo.CancelarDataset(cds: TClientDataset);
begin
  if cds.Active then
   begin
     { cancelo se estiver pendente }
     if (not cds.IsEmpty) and (cds.State in [dsInsert, dsEdit]) then
       cds.Cancel;
     { se existirem alterações, cancelo }
     if cds.ChangeCount > 0 then
       try
         cds.CancelUpdates;
       except
       end;
   end;
end;

function TformCadModelo.CampoRequerido(c: string): boolean;
var
  i, j: word;
begin
  { verifico se um campo é requerido }
  result := false;
  for i := 0 to ComponentCount - 1 do
   if Components[i] is TClientDataset then
    begin
      if TClientDataset(Components[i]).Name = 'cdsDados' then
       for j := 0 to TClientDataset(Components[i]).FieldCount - 1 do
        if TClientDataset(Components[i]).Fields[j].FieldName = c then
          result := TClientDataset(Components[i]).Fields[j].Required;
    end;
end;

function TformCadModelo.VerificaRequeridos(cds: TClientDataset): boolean;
var
  campo: string;
  i: word;
begin
  { procuro o nome do campo que deve ser preenchido }
  campo := '';
  for i := 0 to cds.FieldCount - 1 do
   if cds.Fields[i].Required and
    ((trim(cds.Fields[i].DisplayText) = '') or
      cds.Fields[i].IsNull) then
     begin
       formPrincipal.HideMsg;
       formPrincipal.MsgError(
         'O campo ' + QuotedStr(cdsDados.Fields[i].DisplayLabel) +
         ' não pode ficar vazio.',
         'Campo vazio');
       campo := cdsDados.Fields[i].FieldName;
       break;
     end;

  { tento localizá-lo, se encontrado }
  if campo > '' then
   begin
     result := false;
     FocusOnField(campo);
   end else result := true;
end;

procedure TformCadModelo.FocusOnField(c: string);
var
  i: word;
begin
  { tento localizá-lo }
  for i := 0 to ComponentCount - 1 do
   begin

     { TcxDBTextEdit }
     if Components[i] is TcxDBTextEdit then
       if TcxDBTextEdit(Components[i]).DataBinding.DataField = c then
        begin
          if not TcxDBTextEdit(Components[i]).CanFocus then
           begin
             if TcxDBTextEdit(Components[i]).Parent is TcxTabSheet then
               (TcxTabSheet(TcxDBTextEdit(Components[i]).Parent).Parent as TcxPageControl).ActivePage :=
                 TcxTabSheet(TcxDBTextEdit(Components[i]).Parent);
           end;
          if TcxDBTextEdit(Components[i]).CanFocus then
            TcxDBTextEdit(Components[i]).SetFocus;
        end;

     { TcxDBMaskEdit }
     if Components[i] is TcxDBMaskEdit then
       if TcxDBMaskEdit(Components[i]).DataBinding.DataField = c then
        begin
          if not TcxDBMaskEdit(Components[i]).CanFocus then
           begin
             if TcxDBMaskEdit(Components[i]).Parent is TcxTabSheet then
               (TcxTabSheet(TcxDBMaskEdit(Components[i]).Parent).Parent as TcxPageControl).ActivePage :=
                 TcxTabSheet(TcxDBMaskEdit(Components[i]).Parent);
           end;
          if TcxDBMaskEdit(Components[i]).CanFocus then
            TcxDBMaskEdit(Components[i]).SetFocus;
        end;

   end;
end;

procedure TformCadModelo.ConfigControls;
var
  i, j: word;
  c: string;
  A: TAction;
  LB: TLabel;
begin

  { laço dos componentes visuais menos grade }
  for i := 0 to ComponentCount - 1 do
   begin

     { TLabel }
     if Components[i] is TLabel then
      begin
        TLabel(Components[i]).Transparent := True;
        if (fsUnderline in TLabel(Components[i]).Font.Style) and
           (TLabel(Components[i]).Font.Color = clMaroon) then
         begin
           if Assigned(TLabel(Components[i]).OnClick) then
            begin
              TLabel(Components[i]).OnMouseEnter := lbModeloMouseEnter;
              TLabel(Components[i]).OnMouseLeave := lbModeloMouseLeave;
              TLabel(Components[i]).Cursor := crHandPoint;

              { crio uma ação para o label Alt+letra }
              A := TAction.Create(Self);
              A.Caption := TLabel(Components[i]).Caption;
              A.OnExecute := TLabel(Components[i]).OnClick;
              c := TLabel(Components[i]).Caption;
              j := 0;
              repeat
                inc(j);
              until (c[j] in ['A'..'Z']) or (j = length(c));
              A.ShortCut := TextToShortCut('Alt+' + c[j]);
              A.ActionList := actDetalhes;

            end else
            begin
              TLabel(Components[i]).OnMouseEnter := nil;
              TLabel(Components[i]).OnMouseLeave := nil;
              TLabel(Components[i]).Cursor := crDefault;
              TLabel(Components[i]).Enabled := False;
            end;
         end;
      end else

     { TcxTextEdit }
     if Components[i] is TcxTextEdit then
      begin
        TcxTextEdit(Components[i]).BeepOnEnter := False;
        if TcxTextEdit(Components[i]).Properties.CharCase = ecNormal then
          TcxTextEdit(Components[i]).Properties.CharCase := ecUpperCase;
        if TcxTextEdit(Components[i]).Properties.CharCase = ecLowerCase then
          TcxTextEdit(Components[i]).Properties.CharCase := ecNormal;

        if TcxTextEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxTextEdit(Components[i]).TabStop := False;
           TcxTextEdit(Components[i]).Style.Color := clBtnFace;
           TcxTextEdit(Components[i]).OnEnter := nil;
           TcxTextEdit(Components[i]).OnExit := nil;
           TcxTextEdit(Components[i]).OnKeyDown := nil;
         end else
         begin
           TcxTextEdit(Components[i]).TabStop := True;
           TcxTextEdit(Components[i]).Style.Color := clWindow;
           TcxTextEdit(Components[i]).OnEnter := edtPesquisar2Enter;
           TcxTextEdit(Components[i]).OnExit := edtPesquisar2Exit;
         end;
      end else

     { TcxDBTextEdit }
     if Components[i] is TcxDBTextEdit then
      begin
        TcxDBTextEdit(Components[i]).BeepOnEnter := False;
        if (TcxDBTextEdit(Components[i]).DataBinding.DataField = 'CODIGO') and (TcxDBTextEdit(Components[i]).Tag = 0) then
          TcxDBTextEdit(Components[i]).Properties.ReadOnly := True;
        if TcxDBTextEdit(Components[i]).Tag <> 2 then
         begin
           if TcxDBTextEdit(Components[i]).Properties.CharCase = ecNormal then
             TcxDBTextEdit(Components[i]).Properties.CharCase := ecUpperCase;
           if TcxDBTextEdit(Components[i]).Properties.CharCase = ecLowerCase then
             TcxDBTextEdit(Components[i]).Properties.CharCase := ecNormal;
         end;
        if TcxDBTextEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxDBTextEdit(Components[i]).TabStop := False;
           TcxDBTextEdit(Components[i]).Style.Color := clBtnFace;
           TcxDBTextEdit(Components[i]).OnEnter := nil;
           TcxDBTextEdit(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBTextEdit(Components[i]).TabStop := True;
           TcxDBTextEdit(Components[i]).Style.Color := clWindow;
           TcxDBTextEdit(Components[i]).OnEnter := edtPesquisar2Enter;
           TcxDBTextEdit(Components[i]).OnExit := edtPesquisar2Exit;
           if CampoRequerido(TcxDBTextEdit(Components[i]).DataBinding.DataField) and
             TcxDBTextEdit(Components[i]).Visible then
            begin
              LB := TLabel.Create(TcxDBTextEdit(Components[i]).Parent);
              LB.Parent := TcxDBTextEdit(Components[i]).Parent;
              LB.Font.Color := clRed;
              LB.Caption := '*';
              LB.Transparent := True;
              LB.Top := TcxDBTextEdit(Components[i]).Top;
              LB.Left := TcxDBTextEdit(Components[i]).Left +
                TcxDBTextEdit(Components[i]).Width;
            end;
         end;
      end else

     { TcxDBMaskEdit }
     if Components[i] is TcxDBMaskEdit then
      begin
        TcxDBMaskEdit(Components[i]).BeepOnEnter := False;
        if TcxDBMaskEdit(Components[i]).Properties.CharCase = ecNormal then
          TcxDBMaskEdit(Components[i]).Properties.CharCase := ecUpperCase;
        if TcxDBMaskEdit(Components[i]).Properties.ReadOnly then
         begin
           TcxDBMaskEdit(Components[i]).TabStop := False;
           TcxDBMaskEdit(Components[i]).Style.Color := clBtnFace;
           TcxDBMaskEdit(Components[i]).OnEnter := nil;
           TcxDBMaskEdit(Components[i]).OnExit := nil;
           if CampoRequerido(TcxDBMaskEdit(Components[i]).DataBinding.DataField) and
              TcxDBMaskEdit(Components[i]).Visible then
            begin
              LB := TLabel.Create(TcxDBMaskEdit(Components[i]).Parent);
              LB.Parent := TcxDBMaskEdit(Components[i]).Parent;
              LB.Font.Color := clBlack;
              LB.Caption := '*';
              LB.Transparent := True;
              LB.Top := TcxDBMaskEdit(Components[i]).Top;
              LB.Left := TcxDBMaskEdit(Components[i]).Left +
                TcxDBMaskEdit(Components[i]).Width;
            end;
         end else
         begin
           TcxDBMaskEdit(Components[i]).TabStop := True;
           TcxDBMaskEdit(Components[i]).Style.Color := clWindow;
           TcxDBMaskEdit(Components[i]).OnEnter := edtPesquisar2Enter;
           TcxDBMaskEdit(Components[i]).OnExit := edtPesquisar2Exit;
           if CampoRequerido(TcxDBMaskEdit(Components[i]).DataBinding.DataField) and
              TcxDBMaskEdit(Components[i]).Visible then
            begin
              LB := TLabel.Create(TcxDBMaskEdit(Components[i]).Parent);
              LB.Parent := TcxDBMaskEdit(Components[i]).Parent;
              LB.Font.Color := clRed;
              LB.Caption := '*';
              LB.Top := TcxDBMaskEdit(Components[i]).Top;
              LB.Left := TcxDBMaskEdit(Components[i]).Left +
                TcxDBMaskEdit(Components[i]).Width;
            end;
         end;
      end else

     { TcxDBComboBox }
     if Components[i] is TcxDBComboBox then
      begin
        TcxDBComboBox(Components[i]).BeepOnEnter := False;
        TcxDBComboBox(Components[i]).Tag := 1;
        if TcxDBComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxDBComboBox(Components[i]).TabStop := False;
           TcxDBComboBox(Components[i]).Style.Color := clBtnFace;
           TcxDBComboBox(Components[i]).OnEnter := nil;
           TcxDBComboBox(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBComboBox(Components[i]).TabStop := True;
           TcxDBComboBox(Components[i]).Style.Color := clWindow;
           TcxDBComboBox(Components[i]).OnEnter := edtPesquisar2Enter;
           TcxDBComboBox(Components[i]).OnExit := edtPesquisar2Exit;
           if CampoRequerido(TcxDBComboBox(Components[i]).DataBinding.DataField) and
              TcxDBComboBox(Components[i]).Visible then
            begin
              LB := TLabel.Create(TcxDBComboBox(Components[i]).Parent);
              LB.Parent := TcxDBComboBox(Components[i]).Parent;
              LB.Font.Color := clRed;
              LB.Caption := '*';
              LB.Transparent := True;
              LB.Top := TcxDBComboBox(Components[i]).Top;
              LB.Left := TcxDBComboBox(Components[i]).Left +
                TcxDBComboBox(Components[i]).Width;
            end;
         end;
      end else

     { TcxDBLookupComboBox }
     if Components[i] is TcxDBLookupComboBox then
      begin
        TcxDBLookupComboBox(Components[i]).BeepOnEnter := False;
        TcxDBLookupComboBox(Components[i]).Tag := 1;
        if TcxDBLookupComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxDBLookupComboBox(Components[i]).TabStop := False;
           TcxDBLookupComboBox(Components[i]).Style.Color := clBtnFace;
           TcxDBLookupComboBox(Components[i]).OnEnter := nil;
           TcxDBLookupComboBox(Components[i]).OnExit := nil;
         end else
         begin
           TcxDBLookupComboBox(Components[i]).TabStop := True;
           TcxDBLookupComboBox(Components[i]).Style.Color := clWindow;
           TcxDBLookupComboBox(Components[i]).OnEnter := edtPesquisar2Enter;
           TcxDBLookupComboBox(Components[i]).OnExit := edtPesquisar2Exit;
           if CampoRequerido(TcxDBLookupComboBox(Components[i]).DataBinding.DataField) and
              TcxDBLookupComboBox(Components[i]).Visible then
            begin
              LB := TLabel.Create(TcxDBLookupComboBox(Components[i]).Parent);
              LB.Parent := TcxDBLookupComboBox(Components[i]).Parent;
              LB.Font.Color := clRed;
              LB.Caption := '*';
              LB.Transparent := True;
              LB.Top := TcxDBLookupComboBox(Components[i]).Top;
              LB.Left := TcxDBLookupComboBox(Components[i]).Left +
                TcxDBLookupComboBox(Components[i]).Width;
            end;
         end;
      end else

     { TcxLookupComboBox }
     if Components[i] is TcxLookupComboBox then
      begin
        TcxLookupComboBox(Components[i]).BeepOnEnter := False;
        TcxLookupComboBox(Components[i]).Tag := 1;
        if TcxLookupComboBox(Components[i]).Properties.ReadOnly then
         begin
           TcxLookupComboBox(Components[i]).TabStop := False;
           TcxLookupComboBox(Components[i]).Style.Color := clBtnFace;
           TcxLookupComboBox(Components[i]).OnEnter := nil;
           TcxLookupComboBox(Components[i]).OnExit := nil;
         end else
         begin
           TcxLookupComboBox(Components[i]).TabStop := True;
           TcxLookupComboBox(Components[i]).Style.Color := clWindow;
           TcxLookupComboBox(Components[i]).OnEnter := edtPesquisar2Enter;
           TcxLookupComboBox(Components[i]).OnExit := edtPesquisar2Exit;
         end;
      end else

     { TcxCheckBox }
     if Components[i] is TcxCheckBox then
      begin
        TcxCheckBox(Components[i]).ParentColor := True;
        TcxCheckBox(Components[i]).Properties.ImmediatePost := True;
        TcxCheckBox(Components[i]).Style.BorderStyle := ebsThick;
        TcxCheckBox(Components[i]).Style.TransparentBorder := True;
        TcxCheckBox(Components[i]).OnMouseEnter := ckBoxMouseEnter;
        TcxCheckBox(Components[i]).OnMouseLeave := ckBoxMouseLeave;
        TcxCheckBox(Components[i]).Cursor := crHandPoint;
        TcxCheckBox(Components[i]).Transparent := True;
        if TcxCheckBox(Components[i]).Tag = 77 then
          TcxCheckBox(Components[i]).Visible :=
            (formPrincipal.cdsUsuarios.FieldByName('OCULTOS').AsString = 'S');
      end else

     { TcxDBCheckBox }
     if Components[i] is TcxDBCheckBox then
      begin
        TcxDBCheckBox(Components[i]).ParentColor := True;
        TcxDBCheckBox(Components[i]).Properties.ImmediatePost := True;
        TcxDBCheckBox(Components[i]).Style.BorderStyle := ebsThick;
        TcxDBCheckBox(Components[i]).Style.TransparentBorder := True;
        TcxDBCheckBox(Components[i]).Properties.ValueChecked := 'S';
        TcxDBCheckBox(Components[i]).Properties.ValueUnchecked := 'N';
        TcxDBCheckBox(Components[i]).OnMouseEnter := ckBoxMouseEnter;
        TcxDBCheckBox(Components[i]).OnMouseLeave := ckBoxMouseLeave;
        TcxDBCheckBox(Components[i]).Cursor := crHandPoint;
        TcxDBCheckBox(Components[i]).Transparent := True;
        if TcxDBCheckBox(Components[i]).Tag = 77 then
          TcxDBCheckBox(Components[i]).Visible :=
            (formPrincipal.cdsUsuarios.FieldByName('OCULTOS').AsString = 'S');
      end else

     { TcxDBRadioGroup }
     if Components[i] is TcxDBRadioGroup then
      begin
        TcxDBRadioGroup(Components[i]).Style.BorderStyle := ebsOffice11;
        TcxDBRadioGroup(Components[i]).Transparent := True;
        TcxDBRadioGroup(Components[i]).Style.LookAndFeel.NativeStyle := False;
        TcxDBRadioGroup(Components[i]).Style.LookAndFeel.Kind := lfOffice11;
        TcxDBRadioGroup(Components[i]).Properties.ImmediatePost := True;
        TcxDBRadioGroup(Components[i]).Cursor := crHandPoint;
      end else

     { TcxButton }
     if Components[i] is TcxButton then
      begin
        TcxButton(Components[i]).Cursor := crHandPoint;
        TcxButton(Components[i]).LookAndFeel.NativeStyle := False;
      end else

     { TcxTabSheet }
     if Components[i] is TcxPageControl then
      begin
        TcxPageControl(Components[i]).LookAndFeel.NativeStyle := False;
        TcxPageControl(Components[i]).LookAndFeel.Kind := lfOffice11;
      end else

     { TcxTabSheet }
     if Components[i] is TcxTabSheet then
      begin
        if TcxTabSheet(Components[i]).Tag = 99 then
          TcxTabSheet(Components[i]).TabVisible :=
            (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S');
      end else

     { TcxGroupBox }
     if Components[i] is TcxGroupBox then
      begin
        if TcxGroupBox(Components[i]).Tag = 99 then
          TcxGroupBox(Components[i]).Visible :=
            (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S');
      end else

     { TcxGrid }
     if Components[i] is TcxGrid then
      begin
        TcxGrid(Components[i]).LookAndFeel.NativeStyle := False;
      end else

     { TClientDataset }
     if Components[i] is TClientDataset then
      begin

        TClientDataset(Components[i]).FetchOnDemand := False;
        TClientDataset(Components[i]).PacketRecords := -1;

        { campos do ClientDataset }
        if TClientDataset(Components[i]).FieldCount > 0 then
          for j := 0 to TClientDataset(Components[i]).FieldCount - 1 do
           begin

             { campo Float }
             if (TClientDataset(Components[i]).Fields[j] is TFloatField) or
                (TClientDataset(Components[i]).Fields[j] is TFMTBCDField) then
              begin
                if TFloatField(TClientDataset(Components[i]).Fields[j]).DisplayFormat = '' then
                  TFloatField(TClientDataset(Components[i]).Fields[j]).DisplayFormat := '###,###,##0.00';
                if TFloatField(TClientDataset(Components[i]).Fields[j]).EditFormat = '' then
                  TFloatField(TClientDataset(Components[i]).Fields[j]).EditFormat := '######0.00';
              end else

             { campo Código }
             if TClientDataset(Components[i]).Fields[j] is TIntegerField then
              begin
                if copy(TClientDataset(components[i]).Fields[j].FieldName, 1, 3) = 'COD' then
                 begin
                   if TNumericField(TClientDataset(Components[i]).Fields[j]).DisplayFormat = '' then
                     TNumericField(TClientDataset(Components[i]).Fields[j]).DisplayFormat := '00000#';
                 end
              end else

             { campo Data }
             if TClientDataset(Components[i]).Fields[j] is TDateField then
              begin
                TDateField(TClientDataset(Components[i]).Fields[j]).Alignment := taCenter;
                if TDateField(TClientDataset(Components[i]).Fields[j]).DisplayFormat = '' then
                 begin
                   TDateField(TClientDataset(Components[i]).Fields[j]).DisplayFormat := 'DD/MM/YY';
                   TDateField(TClientDataset(Components[i]).Fields[j]).EditMask := 'DD/MM/YY';
                 end;
              end else

             { campo Hora }
             if TClientDataset(Components[i]).Fields[j] is TTimeField then
              begin
                TTimeField(TClientDataset(Components[i]).Fields[j]).Alignment := taCenter;
                if TTimeField(TClientDataset(Components[i]).Fields[j]).DisplayFormat = '' then
                 begin
                   TTimeField(TClientDataset(Components[i]).Fields[j]).DisplayFormat := 'HH:NN';
                   TTimeField(TClientDataset(Components[i]).Fields[j]).EditMask := 'HH:NN';
                 end;
              end;

           end; { laço dos campos ClientDataset }

      end { TClientDataset } else

     { TcxGridDBTableView }
     if Components[i] is TcxGridDBTableView then
      begin
        if TcxGridDBTableView(Components[i]).DataController.DataSource = dsrDados then
         begin
           TcxGridDBTableView(Components[i]).DataController.DataModeController.GridMode := False;

           { funções de analise }
           if formPrincipal.cdsUsuarios.FieldByName('ANALISES').AsString = 'S' then
            begin
              TcxGridDBTableView(Components[i]).OptionsView.Footer := True;
              TcxGridDBTableView(Components[i]).OptionsView.GroupByBox := False;
              TcxGridDBTableView(Components[i]).OptionsView.GroupFooters := gfVisibleWhenExpanded;
            end else
            begin
              TcxGridDBTableView(Components[i]).OptionsView.Footer := False;
              TcxGridDBTableView(Components[i]).OptionsView.GroupByBox := False;
              TcxGridDBTableView(Components[i]).OptionsView.GroupFooters := gfInvisible;
            end;

           TcxGridDBTableView(Components[i]).OptionsData.Appending    := False;
           TcxGridDBTableView(Components[i]).OptionsData.CancelOnExit := True;
           TcxGridDBTableView(Components[i]).OptionsData.Deleting     := False;
           TcxGridDBTableView(Components[i]).OptionsData.DeletingConfirmation := False;
           TcxGridDBTableView(Components[i]).OptionsData.Editing      := True;
           TcxGridDBTableView(Components[i]).OptionsData.Inserting    := False;
           TcxGridDBTableView(Components[i]).OptionsSelection.CellMultiSelect := False;
           TcxGridDBTableView(Components[i]).OptionsSelection.CellSelect      := True;
           TcxGridDBTableView(Components[i]).OptionsSelection.HideFocusRect   := False;
           TcxGridDBTableView(Components[i]).OptionsSelection.HideSelection   := True;
           TcxGridDBTableView(Components[i]).OptionsSelection.InvertSelect    := False;
           TcxGridDBTableView(Components[i]).OptionsSelection.MultiSelect     := False;
           TcxGridDBTableView(Components[i]).OptionsSelection.UnselectFocusedRecordOnExit := True;

           { botões na grade }
           TcxGridDBTableView(Components[i]).NavigatorButtons.Cancel.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Delete.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Edit.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.First.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.GotoBookmark.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Insert.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Last.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Next.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.NextPage.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Post.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Prior.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.PriorPage.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Refresh.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.SaveBookmark.Visible := False;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Filter.Visible := True;
           TcxGridDBTableView(Components[i]).NavigatorButtons.Filter.Hint := 'Filtragem avançada';

           { componente OCULTO na grade principal, seto variável para mudança de cor }
           if TcxGridDBTableView(Components[i]).ColumnCount > 0 then
             for j := (TcxGridDBTableView(Components[i]).ColumnCount - 1) downto 0 do
              begin

                { campos Globais }
                if TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxCheckBoxProperties then
                 begin
                   TcxGridDBTableView(Components[i]).Columns[j].Tag := 1;
                   TcxGridDBTableView(Components[i]).Columns[j].Width := 30;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := False;
                   TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ImmediatePost := True;
                   TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ValueChecked := 'S';
                   TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ValueUnchecked := 'N';
                 end else
                 begin
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := True;
                 end;

                { campo de contagem no rodape }
                if (j = 0) then
                 begin
                   if TcxGridDBTableView(Components[i]).Columns[0].DataBinding.FieldName = 'SEL' then
                     SetCampoRodape(
                       TcxGridDBTableView(Components[i]).Columns[1].DataBinding.FieldName,
                       'N=0',
                       '')
                   else
                     SetCampoRodape(
                       TcxGridDBTableView(Components[i]).Columns[0].DataBinding.FieldName,
                       'N=0',
                       '');
                 end;

                { campo SEL }
                if TcxGridDBTableView(Components[i]).Columns[j].DataBinding.FieldName = 'SEL' then
                 begin
                   gradeSel := j;
                   TcxGridDBTableView(Components[i]).Styles.OnGetContentStyle := cxGrid1DBTableView1StylesGetContentStyle;
                   TcxGridDBTableView(Components[i]).Columns[j].Caption := '';
                 end;

                { campo OCULTO }
                if TcxGridDBTableView(Components[i]).Columns[j].DataBinding.FieldName = 'OCULTO' then
                 begin
                   gradeOculto := j;
                   TcxGridDBTableView(Components[i]).Columns[j].Visible := False;
                   TcxGridDBTableView(Components[i]).Styles.OnGetContentStyle := cxGrid1DBTableView1StylesGetContentStyle;
                 end;

                { logs }
                if TcxGridDBTableView(Components[i]).Columns[j].Tag = 99 then
                 begin
                   TcxGridDBTableView(Components[i]).Columns[j].Visible :=
                     (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S');
                 end;

              end;

         end else
         begin

           { não é grade principal }
           if TcxGridDBTableView(Components[i]).ColumnCount > 0 then
             for j := (TcxGridDBTableView(Components[i]).ColumnCount - 1) downto 0 do
              begin

                { logs }
                if TcxGridDBTableView(Components[i]).Columns[j].Tag = 99 then
                 begin
                   { visível de acordo com o privilégio do usuário }
                   TcxGridDBTableView(Components[i]).Columns[j].Visible :=
                     (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S');
                 end else
                 begin
                   { não participa na seleção }
                   TcxGridDBTableView(Components[i]).Columns[j].Tag := 1;
                 end;

                TcxGridDBTableView(Components[i]).Columns[j].Tag := 1;

                { campos Globais }
                if TcxGridDBTableView(Components[i]).Columns[j].Properties is TcxCheckBoxProperties then
                 begin
                   TcxGridDBTableView(Components[i]).Columns[j].Width := 30;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := True;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
                   TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := False;
                   TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ImmediatePost := True;
                   TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ValueChecked := 'S';
                   TcxCheckBoxProperties(TcxGridDBTableView(Components[i]).Columns[j].Properties).ValueUnchecked := 'N';
                 end else
                 begin
                   if TcxGridDBTableView(Components[i]).Columns[j].Options.ShowEditButtons = isebAlways then
                    begin
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := True;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := True;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := False;
                    end else
                    begin
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Editing      := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Filtering    := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Focusing     := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Grouping     := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.HorzSizing   := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.IncSearch    := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Moving       := False;
                      TcxGridDBTableView(Components[i]).Columns[j].Options.Sorting      := False;
                    end;

                 end;

              end;

         end;

      end; { TcxGridDBTableView }

   end;

end;

procedure TformCadModelo.ConfigPages;
var
  i, j: word;
begin
  { procuro os PageControls e seto a primeira página }
  for i := 0 to ComponentCount - 1 do
   if Components[i] is TcxPageControl then
    if TcxPageControl(Components[i]) <> pgcDados then
      for j := 0 to TcxPageControl(Components[i]).PageCount - 1 do
        if TcxTabSheet(TcxPageControl(Components[i]).Pages[j]).PageIndex = 0 then
         begin
           TcxPageControl(Components[i]).ActivePage :=
             TcxTabSheet(TcxPageControl(Components[i]).Pages[j]);
           break;
         end;
end;

procedure TformCadModelo.AdicionarCampo(s1, s2: string);
begin
  traducao.Append(s1 + '=' + s2);
end;

procedure TformCadModelo.SetSecurity(s: string);
begin

  { guardo as configurações }
  securityvar := s;

  { retorno os controles a versão original }
  if sc_novo then
    btnAdicionar.Visible := ivAlways
  else
    btnAdicionar.Visible := ivNever;

  if sc_detalhes then
    btnModificar.Visible := ivAlways
  else
    btnModificar.Visible := ivNever;

  if sc_imprimir then
    dxBarButton2.Visible := ivAlways
  else
    dxBarButton2.Visible := ivNever;

  if sc_exportar then
    dxBarSubItem3.Visible := ivAlways
  else
    dxBarSubItem3.Visible := ivNever;

  if sc_salvar then
    btnSalvar.Visible := ivAlways
  else
    btnSalvar.Visible := ivNever;

  if sc_excluir then
    btnExcluir.Visible := ivAlways
  else
    btnExcluir.Visible := ivNever;

  if sc_ajuda then
    btnAjuda.Visible := ivAlways
  else
    btnAjuda.Visible := ivNever;

  { redefino os controles de acordo com a string de segurança }
  if btnAdicionar.Visible <> ivNever then
    if pos('N', s) < 1 then
      btnAdicionar.Visible := ivNever
    else
      btnAdicionar.Visible := ivAlways;

  if btnModificar.Visible <> ivNever then
    if pos('D', s) < 1 then
      btnModificar.Visible := ivNever
    else
      btnModificar.Visible := ivAlways;

  if dxBarButton2.Visible <> ivNever then
    if pos('I', s) < 1 then
      dxBarButton2.Visible := ivNever
    else
      dxBarButton2.Visible := ivAlways;

  if dxBarSubItem3.Visible <> ivNever then
    if pos('E', s) < 1 then
      dxBarSubItem3.Visible := ivNever
    else
      dxBarSubItem3.Visible := ivAlways;

  if btnSalvar.Visible <> ivNever then
    if pos('S', s) < 1 then
      btnSalvar.Visible := ivNever
    else
      btnSalvar.Visible := ivAlways;

  if btnExcluir.Visible <> ivNever then
    if pos('X', s) < 1 then
      btnExcluir.Visible := ivNever
    else
      btnExcluir.Visible := ivAlways;

  if pos('V', s) < 1 then
    tmrSemDireito.Enabled := True;

end;

procedure TformCadModelo.CMExpandGroups(var Msg: TMessage);
begin
  TcxGridDBDataController(Msg.WParam).Groups.FullExpand;
end;

procedure TformCadModelo.SelectFilter;
begin
  try
    cdsDados.filter := 'SEL = ''S''';
    cdsDados.filtered := true;
  except
    on exception do
      cdsDados.filter := '';
  end;
end;

procedure TformCadModelo.SelectRelease;
begin
  if cdsDados.Filtered then
    cdsDados.Filtered := False;
end;

procedure TformCadModelo.Liberar;
begin
  with cdsDados do
   if not (state in [dsEdit, dsInsert]) then
     edit;
end;

procedure TformCadModelo.Recarregar(chave: string);
var
  bm: TBookMark;
  dado, marcado: string;
begin
   try
     dado := '';
     marcado := 'N';
     formPrincipal.ShowMsg('Atualizando a grade...');
     with cdsDados do
      begin
        if chave > '' then
         begin
           dado := fieldByName(chave).AsString;
           if id_sel >= 0 then
             marcado := Fields[id_sel].AsString;
         end;
        bm := BookMark;
        if active then close;
        open;
        RemoteServer.Close;
        BookMark := bm;
        if (dado = fieldByName(chave).AsString) and
           (id_sel >= 0) and
           (marcado = 'S') and
           (RecordCount > 1) then
         begin
           edit;
           Fields[id_sel].AsString := 'S';
         end;
      end;
     formPrincipal.HideMsg;
   except
    formPrincipal.HideMsg;
   end;
end;

procedure TformCadModelo.CarregarRegistro(campo: string; codigo: longint);
var
  tmpAutoLoad: boolean;
  tmpWhereArgStatic: string;
  tmsg: TMessage;
begin

  { salvo os valores atuais }
  tmpAutoLoad := AutoLoad;
  tmpWhereArgStatic := WhereArgStatic;

  try
    { defino apenas para esse uso }
    AutoLoad := True;
    if WhereArgStatic > '' then
      WhereArgStatic := WhereArgStatic + ' AND ' + campo + ' = ' + IntToStr(codigo)
    else
      WhereArgStatic := campo + ' = ' + IntToStr(codigo);

    { faco a pesquisa }
    Pesquisar(tmsg);

    { retorno aos valores originais }
    AutoLoad := tmpAutoLoad;
    WhereArgStatic := tmpWhereArgStatic;

    formPrincipal.Pronto('Registro selecionado!');
  except
    on exception do
     begin
       { retorno aos valores originais }
       AutoLoad := tmpAutoLoad;
       WhereArgStatic := tmpWhereArgStatic;

       formPrincipal.HideMsg;
     end;
  end;
end;

procedure TformCadModelo.RecarregarNovo;
var
  campo, tSQL: string;
  i: word;
begin
  try
    formPrincipal.ShowMsg('Lendo novo...');
    tSQL := '';
    for i := 0 to cdsDados.FieldCount - 1 do
      if (pfInKey in cdsDados.Fields[i].ProviderFlags) then
       begin
         campo := traducao.Values[cdsDados.Fields[i].FieldName];
         if trim(campo) = '' then
           campo := cdsDados.Fields[i].FieldName;
         if pos('WHERE', funcoes.RemovePar(tmpSQL + tSQL)) = 0 then
           tSQL := ' WHERE '
         else
           tSQL := tSQL + ' AND ';
         { campo Inteiro }
         if cdsDados.Fields[i] is TIntegerField then
           tSQL := tSQL + campo + ' = ' + cdsDados.Fields[i].AsString else
         { campo String }
         if cdsDados.Fields[i] is TStringField then
           tSQL := tSQL + campo + ' = ' + QuotedStr(cdsDados.Fields[i].AsString) else
         { campo Data }
         if (cdsDados.Fields[i] is TDateField) or
            (cdsDados.Fields[i] is TDateTimeField) or
            (cdsDados.Fields[i] is TSQLTimeStampField) then
           tSQL := tSQL + 'CAST(' + campo + ' AS DATE) = ' + QuotedStr(FormatDateTime('MM/DD/YYYY', cdsDados.Fields[i].AsDateTime));
       end;
    cdsDados.Close;
    cdsDados.CommandText := tmpSQL + ' ' + tSQL + ' ' + tmpSQLGroup;
//    formPrincipal.HideMsg;
//    ShowMessage(cdsDados.CommandText);
    cdsDados.Open;
  finally
   formPrincipal.HideMsg;
  end;
end;

procedure TformCadModelo.SetOrderBy(s: string);
begin
  if s > '' then
    OrderByArg := 'ORDER BY ' + s
  else
    OrderByArg := '';
end;

procedure TformCadModelo.SetWhereDynamic(st, stmsg: string);
begin
  WhereArgDynamic := st;
  if (WhereArgDynamic > '') or (stmsg > '') then
   begin
     lblWhere.Caption := stmsg;
     dxBarManagerCad.Bars[3].Visible := True;
   end;
end;

procedure TformCadModelo.FormShow(Sender: TObject);
var
  tecla, i: word;
begin

   { se o formulário vem de outro formulário }
   try
     if TForm(Owner).Caption <> Application.MainForm.Caption then
      begin
        Self.Caption := TForm(Owner).Caption + ' :: ' + Self.Caption;
        if Transferir then
         begin
           btnSair.Caption := 'Transferir';
           btnSair.LargeImageIndex := 83;
           btnSair.ImageIndex := 83;
           btnSair.Enabled := False;
         end;
      end else Self.Caption := Application.MainForm.Caption +
        ' @ ' + Self.Caption;
   except
   end;

   { botão oculto }
   try
     if funcoes.CampoExiste(cdsDados, 'OCULTO') and
        (formPrincipal.cdsUsuarios.fieldByName('OCULTOS').AsString = 'S') then
       btnOcultos.Visible := ivAlways;
   except
   end;

   { botão empresas }
   try
     if empresaFilter and
        (formPrincipal.cdsUsuarios.fieldByName('MUDAEMPRESA').AsString = 'S') then
       btnEmpresas.Visible := ivAlways;
   except
   end;

   { mostro a barra de links caso pelo menos um dos botões esteja ativo }
   try
     if ((btnOcultos.Visible = ivAlways) or (btnEmpresas.Visible = ivAlways)) and
        (not dxBarManagerCad.Bars[2].Visible) then
       dxBarManagerCad.Bars[2].Visible := True;
   except
   end;

   { escondo a página de detalhes }
   try
     tabDetalhe.TabVisible := False;
   except
   end;

   try
     if (cdsDados.Active) and (not cdsDados.IsEmpty) then
      begin
         { desativo os botões - nenhuma seleção inicial }
         btnAdicionar.Enabled := True;
         btnModificar.Enabled := False;
         btnImprimir.Enabled := True;
         { desativo a grid }
         grdDados.Visible := True;
      end else
      begin
         { desativo os botões - nenhuma seleção inicial }
         btnAdicionar.Enabled := True;
         btnModificar.Enabled := False;
         btnImprimir.Enabled := False;
         { desativo a grid }
         grdDados.Visible := False;
      end;
   except
   end;

   { recupero a persistência da grade }
   if formPrincipal.cdsUsuarios.FieldByName('ANALISES').AsString = 'S' then
     try
       cxGrid1DBTableView1.RestoreFromIniFile(
         funcoes.GetINIFileName,
         False,
         False,
         [],
         lowercase(formPrincipal.usuario + '.' + Self.Name + '.grade'));
     except
     end;

   { preencho a tabela de campos }
   try
     memCampos.Open;
     for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
       if cxGrid1DBTableView1.Columns[i].Visible and (i <> id_sel) then
         memCampos.AppendRecord([
           nil,
           'S',
           cxGrid1DBTableView1.Columns[i].Caption,
           i]);
   except
   end;

   { direitos dos usuários }
   try
     SetSecurity(formPrincipal.GetAccess(Self.Tag));
   except
   end;

   try
     if AutoLoad then
      begin
        tecla := 13;
        edtSelecionarKeyDown(nil, tecla, []);
        if AutoEdit and (cdsDados.RecordCount = 1) then
          btnModificarClick(nil);
      end;
   except
   end;

   try
     if PesquisaContendo > '' then
      begin
        for i := 0 to cmbSelecionar.Items.Count - 1 do
         if cmbSelecionar.Items[i] = PesquisaCampo then
          begin
            cmbSelecionar.ItemIndex := i;
            edtSelecionar.Text := PesquisaContendo;
            tecla := 13;
            edtSelecionarKeyDown(edtSelecionar, tecla, []);
          end;
      end;
   except
   end;

//   otimização
//   { fim da mensagem }
//   try
//     formPrincipal.HideMsg;
//   except
//   end;

   { janela dentro da tela }
   try
     PostMessage(Handle, WM_MOVE, 0, 0);
   except
   end;

   try
     tmrFocus.Enabled := True;
   except
   end;

   if formPrincipal.CaptShift then
     try
       tmrShift.Enabled := True;
     except
     end;

end;

procedure TformCadModelo.FormCreate(Sender: TObject);
var
  i, j: word;
  xSet, xSet2: integer;
  orderfields, falha: string;
begin
   refreshon := false;
   fullrefresh := false;
   falha := '';

   { desativo o dragging das barras }
   try
     for i := 0 to dxBarManagerCad.Bars.Count - 1 do
       dxBarManagerCad.Bars[i].NotDocking := [dsNone, dsLeft, dsTop, dsRight, dsBottom];
   except
     falha := falha + 'dragging;';
   end;

   { desativo a barra do Where }
   try
     dxBarManagerCad.Bars[3].Visible := False;
   except
     falha := falha + 'barrawhere;';
   end;

   { recupero a posição do formulário }
   try
     funcoes.LoadFormPos(formPrincipal.usuario, TForm(Self));
   except
     falha := falha + 'formpos;';
   end;

   try
     AutoLoad := False;
     CacheView := False;
     MultiSelect := True;
     Transferir := False;
     gradeSel := -1;
     gradeOculto := -1;
     errorcount := 0;
     somaCampo := '';
     PesquisaTexto := '';
     PesquisaCampo := '';
     PesquisaContendo := '';
     vLinks := dxBarManagerCad.Bars[2].Visible;
     empresaFilter := False;
   except
     falha := falha + 'properties;';
   end;

   { relógio }
   try
     tmrRelogioTimer(Sender);
     tmrRelogio.Enabled := True;
   except
     falha := falha + 'relogio;';
   end;

   { usuario }
   try
     dxStatusBar.Panels[2].Text := formPrincipal.usuario;
   except
     falha := falha + 'usuario;';
   end;

   { salvo a configuração dos controles }
   try
     sc_novo     := btnAdicionar.Visible <> ivNever;
     sc_detalhes := btnModificar.Visible <> ivNever;
     sc_imprimir := dxBarButton2.Visible <> ivNever;
     sc_exportar := dxBarSubItem3.Visible <> ivNever;
     sc_salvar   := btnSalvar.Visible <> ivNever;
     sc_excluir  := btnExcluir.Visible <> ivNever;
     sc_ajuda    := btnAjuda.Visible <> ivNever;
   except
     falha := falha + 'controles;';
   end;

   { inicializo a expressão dinâmica do WHERE }
   try
     WhereArgDynamic := '';
   except
     falha := falha + 'argdyn;';
   end;

   { inicializo a expressão dinâmica do ORDER BY }
   try
     orderfields := '';
     for j := 0 to cdsDados.Fields.Count - 1 do
      with cdsDados.Fields[j] do
       begin
         if (pfInKey in ProviderFlags) then
          begin
            if (orderfields > '') then
              orderfields := orderfields + ', ' + FieldName
            else
              orderfields := FieldName;
          end;
       end;
     OrderByArg := 'ORDER BY ' + orderfields + ' DESC';
   except
     falha := falha + 'orderby;';
   end;

   { defino o CommandText }
   try
     tmpSQL := cdsDados.CommandText;
   except
     falha := falha + 'commtxt;';
   end;

   { separo o SELECT do GROUP BY }
   try
     i := pos('GROUP', uppercase(tmpSQL));
     if i > 0 then
      begin
        tmpSQLGroup := copy(tmpSQL, i, (length(tmpSQL) - i) + 1);
        tmpSQL := copy(tmpSQL, 1, i - 1);
      end else tmpSQLGroup := '';
   except
     falha := falha + 'groupby;';
   end;

   { lista de tradução dos campos }
   try
     traducao := TStringList.Create;
   except
     falha := falha + 'traducao;';
   end;

   { configuro os campos }
   try
     ConfigControls;
   except
     falha := falha + 'config;';
   end;

   { preencho os combos de busca }
   try
     for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
       if (cxGrid1DBTableView1.Columns[i].Tag = 0) or
          ((cxGrid1DBTableView1.Columns[i].Tag = 99) and
           (formPrincipal.cdsUsuarios.fieldByName('LOGS').AsString = 'S')) then
        begin
          cmbSelecionar.Items.Add(cxGrid1DBTableView1.Columns[i].Caption);
          cmbSelecionar2.Items.Add(cxGrid1DBTableView1.Columns[i].Caption);
        end;
   except
     falha := falha + 'combos;';
   end;

   { leio dados da seleção padrão }
   try
     funcoes.LoadPreferences(
       formPrincipal.usuario,
       Self.Name,
       xSet,
       xSet2);
     { selecao 1 padrao }
     if xSet >= 0 then
       cmbSelecionar.Text := cmbSelecionar.Items[xSet]
     else
       cmbSelecionar.Text := cmbSelecionar.Items[cmbSelecionar.Tag];
     { selecao 2 padrao }
     if xSet2 >= 0 then
       cmbSelecionar2.Text := cmbSelecionar2.Items[xSet2]
     else
       cmbSelecionar2.Text := cmbSelecionar2.Items[cmbSelecionar2.Tag];
   except
     on exception do
      begin
        falha := falha + 'index;';
        cmbSelecionar.Text := cmbSelecionar.Items[cmbSelecionar.Tag];
        cmbSelecionar2.Text := cmbSelecionar2.Items[cmbSelecionar2.Tag];
      end;
   end;

   { desligo os botões de relacionamento da barra de links }
   try
     for i := 0 to ComponentCount -1 do
      if Components[i] is TdxBarButton then
       if (Components[i] as TdxBarButton).Tag = 11 then
         TdxBarButton(Components[i]).Enabled := False;
   except
     falha := falha + 'botoes;';
   end;


   if falha > '' then
     formPrincipal.CONN_DBError(
       Self.Name + ' Inicio',
       IntToStr(Self.Tag),
       falha);

end;

procedure TformCadModelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  atag: word;
begin

  { cancelar }
  if key = vk_escape then
    if pgcDados.ActivePage = tabDetalhe then
      btnCancelarClick(Sender) else
     begin
       Self.ModalResult := mrCancel;
       Close;
     end;

  { desconectar }
  if key = vk_F11 then
   begin
     PostMessage(Handle, CM_FORMLOGOUT, 0, 0);
     PostMessage(formPrincipal.Handle, CM_FORMLOGOUT, 0, 0);
   end;

  { adicionar / detalhes / salvar }
  if pgcDados.ActivePage = tabVisual then
   begin
     case key of
       vk_F2: btnAdicionarClick(Sender);
       vk_F3: btnModificarClick(Sender);
     end;
   end else
   begin
     case key of
       vk_F9: btnSalvarClick(Sender);
     end;
   end;

//     if key = vk_F7 then
//      try
//        formAutoTemp := TformAutoTemp.Create(Self);
//        formAutoTemp.codUsuario := formPrincipal.codusuario;
//        formAutoTemp.codRecurso := Self.Tag;
//        if formAutoTemp.ShowModal = mrOk then
//          SetSecurity(formAutoTemp.Direitos);
//      finally
//        formAutoTemp.Release;
//      end;

  { tratamento da tag }
  if ActiveControl = nil then atag := 0 else
    atag := ActiveControl.Tag;

  { enter = tab }
  if (key = vk_Return) and (atag = 0) then
    if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
      if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);

  { tratamento das teclas up/down }
  if not odd(atag) then
   begin
     case key of
       vk_Down: Perform(wm_NextDlgCtl, 0, 0);
       vk_Up: Perform(wm_NextDlgCtl, 1, 0);
     end;
   end;

end;

procedure TformCadModelo.edtPesquisar2Enter(Sender: TObject);
var
  i: word;
begin
   if Sender is TEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TEdit(Sender).Color := clInfoBK;
     TEdit(Sender).Font.Style := [fsBold];
    end;
   if Sender is TDBEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TDBEdit(Sender).Color := clInfoBK;
     TDBEdit(Sender).Font.Style := [fsBold];
    end;
   if Sender is TDBMemo then
    begin
     TDBMemo(Sender).Color := clInfoBK;
     TDBMemo(Sender).Font.Style := [fsBold];
    end;
   if Sender is TcxTextEdit then
    begin
     if TcxTextEdit(Sender).Tag <> 111 then
       TcxTextEdit(Sender).Style.Color := clInfoBK
     else
       PesquisaTexto := TcxTextEdit(Sender).Text;
     TcxTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxTextEdit(Sender).Style.BorderStyle := ebsThick;
     TcxTextEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBTextEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TcxDBTextEdit(Sender).Style.Color := clInfoBK
     else
       PesquisaTexto := TcxTextEdit(Sender).Text;
     TcxDBTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBTextEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBTextEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBMaskEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TcxDBMaskEdit(Sender).Style.Color := clInfoBK;
     TcxDBMaskEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBMaskEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBMaskEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBDateEdit then
    begin
     TcxDBDateEdit(Sender).Style.Color := clInfoBk;
     TcxDBDateEdit(Sender).Style.Font.Style := [fsBold];
     TcxDBDateEdit(Sender).Style.BorderStyle := ebsThick;
     TcxDBDateEdit(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBComboBox then
    begin
     TcxDBComboBox(Sender).Style.Color := clInfoBk;
     TcxDBComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxDBComboBox(Sender).Style.Shadow := True;
    end;
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxLookupComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxLookupComboBox(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBLookupComboBox then
    begin
     TcxDBLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxDBLookupComboBox(Sender).Style.BorderStyle := ebsThick;
     TcxDBLookupComboBox(Sender).Style.Shadow := True;
    end;
   if Sender is TcxDBMemo then
    begin
     TcxDBMemo(Sender).Style.Color := clInfoBK;
     TcxDBMemo(Sender).Style.Font.Style := [fsBold];
     TcxDBMemo(Sender).Style.BorderStyle := ebsThick;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      begin
       if Assigned((Components[i] as TLabel).OnClick) then
         (Components[i] as TLabel).Font.Style := [fsBold, fsUnderline]
       else
       begin
         (Components[i] as TLabel).Font.Style := [fsBold];
         last_label := (Components[i] as TLabel);
         last_labelcaption := (Components[i] as TLabel).Caption;
         tmrLabel.Enabled := True;
       end
      end;
end;

procedure TformCadModelo.edtPesquisar2Exit(Sender: TObject);
var
  i: word;
begin
   if tmrLabel.Enabled then
    begin
      tmrLabel.Enabled := False;
      tmrLabel.Tag := 0;
      last_label.Font.Color := clWindowText;
      last_label.Caption := last_labelcaption;
    end;

   if Sender is TEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TEdit(Sender).Color := clWindow;
     TEdit(Sender).Font.Style := [];
    end;
   if Sender is TDBEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TDBEdit(Sender).Color := clWindow;
     TDBEdit(Sender).Font.Style := [];
    end;
   if Sender is TDBMemo then
    begin
     TDBMemo(Sender).Color := clWindow;
     TDBMemo(Sender).Font.Style := [];
    end;
   if Sender is TcxTextEdit then
    begin
     if TcxTextEdit(Sender).Tag <> 111 then
       TcxTextEdit(Sender).Style.Color := clWindow
     else if PesquisaTexto <> TcxTextEdit(Sender).Text then
      begin
        i := vk_F4;
        edtPesquisar2KeyDown(Sender, i, []);
      end;
     TcxTextEdit(Sender).Style.Font.Style := [];
     TcxTextEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxTextEdit(Sender).Style.Shadow := False;
     PesquisaTexto := '';
    end;
   if Sender is TcxDBTextEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TcxDBTextEdit(Sender).Style.Color := clWindow
     else if PesquisaTexto <> TcxDBTextEdit(Sender).Text then
      begin
        i := vk_F4;
        edtPesquisar2KeyDown(Sender, i, []);
      end;
     TcxDBTextEdit(Sender).Style.Font.Style := [];
     TcxDBTextEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBTextEdit(Sender).Style.Shadow := False;
     PesquisaTexto := '';
    end;
   if Sender is TcxDBMaskEdit then
    begin
     if TcxDBTextEdit(Sender).Tag <> 111 then
       TcxDBMaskEdit(Sender).Style.Color := clWindow;
     TcxDBMaskEdit(Sender).Style.Font.Style := [];
     TcxDBMaskEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBMaskEdit(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBDateEdit then
    begin
     TcxDBDateEdit(Sender).Style.Color := clWindow;
     TcxDBDateEdit(Sender).Style.Font.Style := [];
     TcxDBDateEdit(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBDateEdit(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBComboBox then
    begin
     TcxDBComboBox(Sender).Style.Color := clWindow;
     TcxDBComboBox(Sender).Style.Font.Style := [];
     TcxDBComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBComboBox(Sender).Style.Shadow := False;
    end;
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clWindow;
     TcxLookupComboBox(Sender).Style.Font.Style := [];
     TcxLookupComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxLookupComboBox(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBLookupComboBox then
    begin
     TcxDBLookupComboBox(Sender).Style.Color := clWindow;
     TcxDBLookupComboBox(Sender).Style.Font.Style := [];
     TcxDBLookupComboBox(Sender).Style.BorderStyle := ebsUltraFlat;
     TcxDBLookupComboBox(Sender).Style.Shadow := False;
    end;
   if Sender is TcxDBMemo then
    begin
     TcxDBMemo(Sender).Style.Color := clWindow;
     TcxDBMemo(Sender).Style.Font.Style := [];
     TcxDBMemo(Sender).Style.BorderStyle := ebsUltraFlat;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if Assigned((Components[i] as TLabel).OnClick) then
        (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
        (Components[i] as TLabel).Font.Style := [];
end;

procedure TformCadModelo.edtPesquisar2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: word;
begin

  { tecla aceleradora de consulta }
  if key = vk_F4 then
   begin

     { pego o texto }
     if Sender is TcxDBTextEdit then
       PesquisaTexto := TcxDBTextEdit(Sender).Text else
     if Sender is TcxTextEdit then
       PesquisaTexto := TcxTextEdit(Sender).Text;

     { executo o código }
     for i := 0 to ComponentCount -1 do
      if Components[i] is TLabel then
       if (Components[i] as TLabel).FocusControl = Sender then
        begin
         if Assigned((Components[i] as TLabel).OnClick) then
           (Components[i] as TLabel).OnClick(Sender);
        end;

   end else FormKeyDown(Sender, Key, Shift);

end;

procedure TformCadModelo.grdDadosDblClick(Sender: TObject);
var
  scap: string;
begin
  scap := Caption;
  if Pos('::', scap) > 0 then
   begin
    scap := copy(scap, Pos('::', scap) + 2, length(scap) - Pos('::', scap) - 1);
    if Pos('::', scap) > 0 then
      ModalResult := mrOk;
   end;
end;

procedure TformCadModelo.cdsDadosAfterOpen(DataSet: TDataSet);
var
  c: string;
begin

  { monitora o tempo de execução da pesquisa }
  tempo1 := (now - tempo1) * 86400;
  if Round(tempo1) > 3 then
    formPrincipal.CONN_DBLento(
      Self.Name + ' Pesquisa',
      cmbSelecionar.Items[cmbSelecionar.ItemIndex] + '=[' +
      edtSelecionar.Text + '] // ' +
      cmbSelecionar2.Items[cmbSelecionar2.ItemIndex] + '=[' +
      edtSelecionar2.Text + ']',
      IntToStr(Round(tempo1)));

  { primeiro registro }
  cxGrid1DBTableView1.NavigatorButtons.First.Click;

  { setup }
  if cdsDados.IsEmpty then
    pnlFundoGrade.Caption := 'Nenhum registro encontrado'
  else
    ConfigControls;

  { registros retornados }
  if cdsDados.RecordCount = 1 then
    dxStatusBar.Panels[3].Text := '1 registro'
  else
    dxStatusBar.Panels[3].Text := Format('%d registros',
      [cdsDados.RecordCount]);
  dxStatusBar.Panels[3].Text := dxStatusBar.Panels[3].Text +
    ' em ±' + IntToStr(Round(tempo1)) + ' seg.';

  { SelectUnico/MultiSelect }
  no_sel := 0;
  to_sel := 0;
  c := traducao.Values[somaCampo];
  if c = '' then
    c := somaCampo;
  id_soma := funcoes.CampoID(cdsDados, c);
  id_sel := funcoes.CampoID(cdsDados, 'SEL');
  if id_sel >= 0 then
   begin
     cdsDados.fields[id_sel].OnChange := cdsDadosSELChange;
     tmrSel.Enabled := True;
   end;

  { se for o único registro, marco ele }
  if (id_sel >= 0) and (cdsDados.RecordCount = 1) then
   begin
     cdsDados.Edit;
     cdsDados.FieldByName('SEL').AsString := 'S';
   end;

  if Transferir and (id_sel < 0) then
    btnSair.Enabled := True;

  errorcount := 0;
end;

procedure TformCadModelo.cmbSelecionarChange(Sender: TObject);
begin
  tmrFocus.Enabled := True;
end;

procedure TformCadModelo.btnAdicionarClick(Sender: TObject);
var
  i: word;
  tSQL,
  campo: string;
begin

  if not btnAdicionar.Enabled then exit;
  if btnAdicionar.Visible = ivNever then exit;

  { modo de consulta }
  if not formPrincipal.GetLicence then
   begin
     formPrincipal.MsgError(
       'Não permitido. Entre em contato com Depto. Comercial.',
       'Bloqueio');
     exit;
   end;

  { Abro o ClientDataset se for necessário }
  if not cdsDados.Active then
    try
      formPrincipal.ShowMsg('Criando registro...');
      for i := 0 to cdsDados.FieldCount - 1 do
        if (pfInKey in cdsDados.Fields[i].ProviderFlags) then
         begin
           campo := traducao.Values[cdsDados.Fields[i].FieldName];
           if trim(campo) = '' then
             campo := cdsDados.Fields[i].FieldName;
           if tSQL > '' then
             tSQL := tSQL + ' AND ' + campo + ' IS NULL'
           else
            begin
              if pos('WHERE', funcoes.RemovePar(tmpSQL)) = 0 then
                tSQL := 'WHERE '
              else
                tSQL := ' AND ';
              tSQL := tSQL + campo + ' IS NULL';
            end;
         end;
      cdsDados.CommandText := tmpSQL + ' ' + tSQL + ' ' + tmpSQLGroup;
//      formPrincipal.HideMsg;
//      ShowMessage(cdsDados.CommandText);
//      ShowMessage(RemovePar(cdsDados.CommandText));
      cdsDados.Open;
    finally
      cdsDados.RemoteServer.Close;
      formPrincipal.HideMsg;
    end;

  { se ele não conseguiu abrir, desisto }
  if not cdsDados.Active then
    exit;

  ConfigPages;

  { troca de páginas }
  with pgcDados do
   begin
    tabDetalhe.TabVisible := True;
    tabDetalhe.Caption := 'Adicionar um registro';
    ActivePage := Pages[1];
    tabVisual.TabVisible := False;
   end;
  btnExcluir.Enabled := False;

  { código de adição vai aqui }
  dbnDetalhes.BtnClick(nbInsert);
  novo_registro := true;
  salvo := false;

  { verifico se preciso ativar o botão salvar temporariamente }
  if sc_salvar and (btnSalvar.Visible = ivNever) then
    btnSalvar.Visible := ivAlways;
  btnSalvar.Enabled := (btnSalvar.Visible = ivAlways);

end;

procedure TformCadModelo.btnModificarClick(Sender: TObject);
begin

   if not btnModificar.Enabled then exit;
   if btnModificar.Visible = ivNever then exit;

   { se houver SEL, edição somente no campo marcado }
   if not SelMarcado then exit;

   ConfigPages;

   Screen.Cursor := crHourGlass;
   with pgcDados do
    begin
     tabDetalhe.TabVisible := True;
     tabDetalhe.Caption := 'Modificar um registro';
     ActivePage := Pages[1];
     tabVisual.TabVisible := False;
    end;
   btnExcluir.Enabled := True;

   { código de edição vai aqui }
   novo_registro := false;
   salvo := false;

   { desativo a contagem de marcados }
   if (id_sel >= 0) then
     cdsDados.Fields[id_sel].OnChange := nil;

   with cdsDados do
    begin
      if State = dsEdit then
        Cancel;
    end;

   if btnSalvar.Visible = ivAlways then
     btnSalvar.Enabled := False;

   Screen.Cursor := crDefault;
end;

procedure TformCadModelo.btnSairClick(Sender: TObject);
begin
  if Transferir then
   begin
     if id_sel >= 0 then
      begin
        if no_sel = 0 then
         begin
           SelectRelease;
           formPrincipal.MsgError(
             'Para transferir, é necessário selecionar um registro.',
             'Selecionar');
           exit;
         end;
      end;
     modalresult := mrOk;
   end else modalresult := mrCancel;
end;

procedure TformCadModelo.btnSalvarClick(Sender: TObject);
var
  linha: string;
  i: integer;
  State: TKeyboardState;
begin

  formPrincipal.ShowMsg('Gravando dados...');

  VerificarCampos;

  { utilização do Shift }
  GetKeyboardState(State);

  if novo_registro then
    op := 'Atualizar'
  else
    op := 'Gravar Novo';

  { salvo }
  salvo := false;

  { modo de consulta }
  if not formPrincipal.GetLicence then
   begin
     formPrincipal.MsgError(
       'Não permitido. Entre em contato com Depto. Comercial.',
       'Bloqueio');
     exit;
   end;

  if not btnSalvar.Enabled then exit;
  if btnSalvar.Visible = ivNever then exit;

  { verifico se os campos estão preenchidos - com direito a saltinho }
  if not VerificaRequeridos(cdsDados) then
    exit;

  { verificação de senha }
  if not formPrincipal.VerificaSenha(Self, 'Salvar') then
    exit;

  try
     Screen.Cursor := crHourGlass;

     { salvo o registro }
     acao := raCorrect;
     if cdsDados.State in [dsInsert, dsEdit] then
      begin

        with cdsDados do
         begin
           if novo_registro and (id_sel >= 0) then
             cdsDados.Fields[id_sel].AsString := 'N';
           if not IsEmpty then
            begin
              if funcoes.CampoExiste(cdsDados, 'LOG_TIPO') then
                fieldByName('LOG_TIPO').AsString := op;
              if funcoes.CampoExiste(cdsDados, 'LOG_USUARIO') then
                fieldByName('LOG_USUARIO').AsString := formPrincipal.usuario;
              if funcoes.CampoExiste(cdsDados, 'LOG_MAQUINA') then
                fieldByName('LOG_MAQUINA').AsString := funcoes.GetMachine;
              if funcoes.CampoExiste(cdsDados, 'LOG_DATAREMOTO') then
                fieldByName('LOG_DATAREMOTO').AsDateTime := formPrincipal.GetTime;
              if funcoes.CampoExiste(cdsDados, 'LOG_DATA') then
                fieldByName('LOG_DATA').AsDateTime := formPrincipal.GetTime;
              if funcoes.CampoExiste(cdsDados, 'LOG_HORA') then
                fieldByName('LOG_HORA').AsDateTime := formPrincipal.GetTime;
              if funcoes.CampoExiste(cdsDados, 'DATACADAST') then
                if fieldByName('DATACADAST').IsNull then
                  fieldByName('DATACADAST').AsDateTime := formPrincipal.GetTime;
            end;
           post;
           if ChangeCount > 0 then
            begin
//              formPrincipal.ShowMsg('Gravando dados...');
              ApplyUpdates(-1);
              if Tag = 0 then
               begin
                 if fullrefresh then
                  begin
                    Refresh;
                  end else
                  begin
                    if novo_registro then
                      RecarregarNovo else
                    if refreshon then
                      RefreshRecord;
                  end;
                 salvo := true;
                 RemoteServer.Close;
               end;
            end else salvo := true;
         end;
        if cdsDados.Tag = 1 then
         begin
           formPrincipal.HideMsg;
           cdsDados.edit;
           Screen.Cursor := crDefault;
           exit;
         end;

      end;

     { shift pressionado? }
     if ((State[vk_Shift] and 128) <> 0) and (not novo_registro) then
      begin

        { próximo registro }
        formPrincipal.HideMsg;
        cxGrid1DBTableView1.NavigatorButtons.Next.Click;
        formPrincipal.Pronto('Próximo registro');

      end else
      begin

        { fim da edição }
        with pgcDados do
         begin
          tabVisual.TabVisible := True;
          ActivePage := Pages[0];
          tabDetalhe.TabVisible := False;
         end;

        { verifico se é necessario ativar o grid }
        if (not grdDados.Visible) or novo_registro then
         begin
          if not cdsDados.IsEmpty then
           begin
             btnAdicionar.Enabled := True;
             btnModificar.Enabled := False;
             btnImprimir.Enabled := True;
             grdDados.Visible := True;
           end else
           begin
             btnAdicionar.Enabled := True;
             tmrFocus.Enabled := True;
           end;
         end;

        if grdDados.CanFocus then grdDados.SetFocus;

        { atualizo a contagem de marcados }
        if (id_sel >= 0) and (not novo_registro) then
         begin
           cdsDados.Edit;
           cdsDados.Fields[id_sel].AsString := 'S';
         end;
        if (id_sel >= 0) then
          cdsDados.Fields[id_sel].OnChange := cdsDadosSELChange;

      end;

     formPrincipal.HideMsg;
     Screen.Cursor := crDefault;

  except
     on e: exception do
      begin

        { montagem da string das chaves }
        linha := '';
        for i := 0 to cdsDados.FieldCount - 1 do
         begin
           if cdsDados.Fields[i].ProviderFlags >= [pfInKey] then
             linha := linha + cdsDados.Fields[i].Name + ' = ' +
               cdsDados.Fields[i].AsString + ' // ';
         end;
        formPrincipal.CONN_DBError(
          Self.Name + ' ' + op,
          linha,
          e.message);

        Screen.Cursor := crDefault;
        formPrincipal.MsgError(
          'ERRO: ' + e.Message,
          'Erro ao gravar');

      end;
  end;
end;

procedure TformCadModelo.btnCancelarClick(Sender: TObject);
begin

  if not btnCancelar.Enabled then exit;
  if btnCancelar.Visible = ivNever then exit;

  if (cdsDados.State = dsEdit) and
     (btnCancelar.Caption = 'Desfazer [ESC]') and
     (btnSalvar.Visible = ivAlways) and
     (Self.Tag <> 66) then
   if formPrincipal.Pergunta(
       'Deseja mesmo cancelar todas as alterações?',
       'Cancelar') = IDNO then
     exit;

  Screen.Cursor := crHourGlass;
  with pgcDados do
   begin
    tabVisual.TabVisible := True;
    ActivePage := Pages[0];
    tabDetalhe.TabVisible := False;
   end;

  { cancelo o registro }
  dbnDetalhes.BtnClick(nbCancel);

  if cdsDados.ChangeCount > 0 then
    cdsDados.CancelUpdates;

  { atualizo a contagem de marcados }
  if (id_sel >= 0) and (not novo_registro) then
   begin
     cdsDados.Edit;
     cdsDados.Fields[id_sel].AsString := 'S';
   end;
  cdsDados.Fields[id_sel].OnChange := cdsDadosSELChange;

  { desmarco a tag de adicionar }
  if novo_registro then
    novo_registro := false;

  if grdDados.CanFocus then grdDados.SetFocus;
  Screen.Cursor := crDefault;

  if Self.Tag <> 66 then
    formPrincipal.Pronto('Cancelado!');

end;

procedure TformCadModelo.btnExcluirClick(Sender: TObject);
var
  linha: string;
  i: integer;
begin

  op := 'Excluir';

  { modo de consulta }
  if not formPrincipal.GetLicence then
   begin
     formPrincipal.MsgError(
       'Não permitido. Entre em contato com Depto. Comercial.',
       'Bloqueio');
     exit;
   end;

  if not btnExcluir.Enabled then exit;
  if btnExcluir.Visible = ivNever then exit;

  if errorcount = 0 then
    if formPrincipal.Pergunta(
        'Deseja mesmo excluir este registro?',
        'Excluir') = IDNO then exit;

  { desmarco a tag de adicionar }
  if novo_registro then
    novo_registro := false;

  { verificação de senha }
  if errorcount = 0 then
    if not formPrincipal.VerificaSenha(Self, 'Excluir') then
      exit;

  try

     Screen.Cursor := crHourGlass;

     { apago o registro }
     acao := raCorrect;
     with cdsDados do
      begin
        delete;
        if ChangeCount > 0 then
         begin
           formPrincipal.ShowMsg('Excluindo...');
           ApplyUpdates(-1);
           RemoteServer.Close;
         end;
      end;
     if cdsDados.Tag = 1 then
      begin
        formPrincipal.HideMsg;
        cdsDados.edit;
        Screen.Cursor := crDefault;
        exit;
      end;

     with pgcDados do
      begin
       tabVisual.TabVisible := True;
       ActivePage := Pages[0];
       tabDetalhe.TabVisible := False;
      end;

     { atualizo a contagem de marcados }
     if id_sel >= 0 then
      begin
        no_sel := 0;
        to_sel := 0;
        cdsDados.Fields[id_sel].OnChange := cdsDadosSELChange;
        tmrSel.Enabled := True;
      end;

     if grdDados.CanFocus then grdDados.SetFocus;
     errorcount := 0;

     formPrincipal.HideMsg;
     Screen.Cursor := crDefault;

     formPrincipal.Pronto('Excluído.');

  except
     on e: exception do
      begin

        { verifico o tipo do erro }
        if ((pos('Delayed fetching not supported for XML', e.message) > 0) or
            (pos('Record not found or changed by another user', e.message) > 0)) and
            (errorcount < 3) then
         begin

           formPrincipal.HideMsg;
           inc(errorcount);

           { chamo novamente o botão salvar }
           btnExcluirClick(Sender);

         end else
         begin

           { montagem da string das chaves }
           linha := '';
           for i := 0 to cdsDados.FieldCount - 1 do
            begin
              if cdsDados.Fields[i].ProviderFlags >= [pfInKey] then
                linha := linha + cdsDados.Fields[i].Name + ' = ' +
                  cdsDados.Fields[i].AsString + ' // ';
            end;
           formPrincipal.CONN_DBError(
             Self.Name + ' ' + op,
             linha,
             e.message);
           formPrincipal.HideMsg;

           { somente para debug }
          //raise;

         end;

        Screen.Cursor := crDefault;

      end;
  end;
end;

procedure TformCadModelo.edtSelecionarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 { passo a mensagem para o hand do form }
 if key = 13 then
   PostMessage(Self.Handle, CM_FORMSEARCH, 0, 0)
 else
   FormKeyDown(Sender, Key, Shift);
end;

procedure TformCadModelo.tmrFocusTimer(Sender: TObject);
begin
  tmrFocus.Enabled := False;
  edtSelecionar.SetFocus(false);
  tmrMove.Tag := 1;
  tmrMoveTimer(Sender);
end;

procedure TformCadModelo.lbModeloMouseEnter(Sender: TObject);
begin
  if ((TLabel(Sender).Font.Color = clMaroon) or
      (TLabel(Sender).Font.Color = clNavy)) and
     (TLabel(Sender).Font.Style = [fsUnderline]) then
   TLabel(Sender).Font.Style := [fsBold, fsUnderline];
end;

procedure TformCadModelo.lbModeloMouseLeave(Sender: TObject);
begin
  if ((TLabel(Sender).Font.Color = clMaroon) or
      (TLabel(Sender).Font.Color = clNavy)) and
     (TLabel(Sender).Font.Style = [fsBold, fsUnderline]) then
   TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TformCadModelo.edtSelecionar2Change(Sender: TObject);
begin
  edtSelecionar2.Text := ansiuppercase(edtSelecionar2.Text);
end;

procedure TformCadModelo.edtSelecionarChange(Sender: TObject);
begin
  edtSelecionar.Text := ansiuppercase(edtSelecionar.Text);
end;

procedure TformCadModelo.edtSelecionarCurChange(Sender: TObject);
begin
  with Sender as TdxBarEdit do
    Text := TdxBarEditControl(FocusedItemLink.Control).Text;
end;

procedure TformCadModelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  formPrincipal.ReiniciarRelogio;

  { se estiver em modo de edição confirmo o cancelamento primeiro }
  if pgcDados.ActivePage = tabDetalhe then
   begin
     btnCancelarClick(Sender);
     if pgcDados.ActivePage = tabDetalhe then
       exit;
   end;

  { salvo a persistência da grade }
  if formPrincipal.cdsUsuarios.fieldByName('ANALISES').AsString = 'S' then
   try
     cxGrid1DBTableView1.StoreToIniFile(
       funcoes.GetINIFileName,
       False,
       [],
       lowercase(formPrincipal.usuario + '.' + Self.Name + '.grade'));
   except
   end;

  { salvo a persistência do formulário }
  funcoes.SaveFormPos(formPrincipal.usuario, TForm(Self));

  { saldo a seleção dos combos }
  try
    { salvo as preferencias }
    funcoes.SavePreferences(
      formPrincipal.usuario,
      Self.Name,
      cmbSelecionar.ItemIndex,
      cmbSelecionar2.ItemIndex);
  except
  end;

end;

procedure TformCadModelo.dxBarButton2Click(Sender: TObject);
begin
  try
    formSelCampos := TformSelCampos.Create(Self);
    formSelCampos.dsrCampos.DataSet := Self.memCampos;
    if formSelCampos.ShowModal = mrOK then
     begin
       SelectFilter;
       FiltrarCampos;
       dxComponentPrinter.Preview(true);
     end;
  finally
    MostrarCampos;
    SelectRelease;
    formSelCampos.Release;
    formSelCampos := nil;
  end;
end;

procedure TformCadModelo.dxBarButton4Click(Sender: TObject);
var
  abrir: boolean;
  arquivo: string;
begin
  abrir := false;

  { Windows Vista }
  if CheckWin32Version(6, 0) then
   begin

     with FileSaveDialog do
      try
        with FileTypes.Add do
         begin
           DisplayName := 'Microsoft Excel (*.xls)';
           FileMask := '*.xls';
         end;
        formSelCampos := TformSelCampos.Create(Self);
        formSelCampos.dsrCampos.DataSet := Self.memCampos;
        if formSelCampos.ShowModal = mrOK then
         begin
           if execute then
            begin
              arquivo := filename + '.xls';
              Screen.Cursor := crHourGlass;
              formPrincipal.ShowMsg('Exportando...');
              SelectFilter;
              FiltrarCampos;
              ExportGridToExcel(
                filename,
                grdDados,
                true,
                true,
                true);
              abrir := true;
              Screen.Cursor := crDefault;
            end;
         end
      finally
        formPrincipal.HideMsg;
        MostrarCampos;
        SelectRelease;
        formSelCampos.Release;
        formSelCampos := nil;
      end;

   end else
   begin

     with SaveDialog do
      try
        Filter := 'Microsoft Excel (*.xls)|*.xls';
        formSelCampos := TformSelCampos.Create(Self);
        formSelCampos.dsrCampos.DataSet := Self.memCampos;
        if formSelCampos.ShowModal = mrOK then
         begin
           if execute then
            begin
              arquivo := filename + '.xls';
              Screen.Cursor := crHourGlass;
              formPrincipal.ShowMsg('Exportando...');
              SelectFilter;
              FiltrarCampos;
              ExportGridToExcel(
                filename,
                grdDados,
                true,
                true,
                true);
              abrir := true;
              Screen.Cursor := crDefault;
            end;
         end
      finally
        formPrincipal.HideMsg;
        MostrarCampos;
        SelectRelease;
        formSelCampos.Release;
        formSelCampos := nil;
      end;

   end;

  if abrir then
   begin
     if formPrincipal.Pergunta(
          'Deseja abrir a planilha que foi criada?',
          'Resultado') = IDYES then
       ShellExecute(Handle, nil, Pchar(arquivo), nil, nil, SW_SHOWNORMAL);
   end;

end;

procedure TformCadModelo.dxBarButton3Click(Sender: TObject);
var
  abrir: boolean;
  arquivo: string;
begin
  abrir := false;

  { Windows Vista }
  if CheckWin32Version(6, 0) then
   begin

     with FileSaveDialog do
      try
        with FileTypes.Add do
         begin
           DisplayName := 'Página da internet (*.html)';
           FileMask := '*.html';
         end;
        formSelCampos := TformSelCampos.Create(Self);
        formSelCampos.dsrCampos.DataSet := Self.memCampos;
        if formSelCampos.ShowModal = mrOK then
         begin
           if execute then
            begin
              arquivo := filename + '.html';
              Screen.Cursor := crHourGlass;
              formPrincipal.ShowMsg('Exportando...');
              SelectFilter;
              FiltrarCampos;
              ExportGridToHTML(
                filename,
                grdDados,
                true,
                true);
              abrir := true;
              Screen.Cursor := crDefault;
            end;
         end
      finally
        formPrincipal.HideMsg;
        MostrarCampos;
        SelectRelease;
        formSelCampos.Release;
        formSelCampos := nil;
      end;

   end else
   begin

     with SaveDialog do
      try
        Filter := 'Página da internet (*.html)|*.html';
        formSelCampos := TformSelCampos.Create(Self);
        formSelCampos.dsrCampos.DataSet := Self.memCampos;
        if formSelCampos.ShowModal = mrOK then
         begin
           if execute then
            begin
              arquivo := filename + '.html';
              Screen.Cursor := crHourGlass;
              formPrincipal.ShowMsg('Exportando...');
              SelectFilter;
              FiltrarCampos;
              ExportGridToHTML(
                filename,
                grdDados,
                true,
                true);
              abrir := true;
              Screen.Cursor := crDefault;
            end;
         end
      finally
        formPrincipal.HideMsg;
        MostrarCampos;
        SelectRelease;
        formSelCampos.Release;
        formSelCampos := nil;
      end;

   end;

  if abrir then
   begin
     if formPrincipal.Pergunta(
          'Deseja abrir a página de internet que foi criada?',
          'Resultado') = IDYES then
      begin
        ShellExecute(Handle, nil, Pchar(arquivo), nil, nil, SW_SHOWNORMAL);
      end;
   end;

end;

procedure TformCadModelo.btnAjudaClick(Sender: TObject);
begin
  Application.HelpCommand(Help_Context, HelpContext);
end;

procedure TformCadModelo.pgcDadosChange(Sender: TObject);
begin
  if pgcDados.ActivePage = tabDetalhe then
    actDetalhes.State := asNormal
  else
    actDetalhes.State := asSuspended;
end;

procedure TformCadModelo.cdsDadosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
var
  i: word;
  linha: string;
begin
  { montagem da string das chaves }
  linha := '';
  for i := 0 to cdsDados.FieldCount - 1 do
   begin
     if cdsDados.Fields[i].ProviderFlags >= [pfInKey] then
       linha := linha + cdsDados.Fields[i].Name + ' = ' +
         cdsDados.Fields[i].AsString + ' // ';
   end;
  try
    formPrincipal.HideMsg;
  finally
    Action := HandleReconcileError(DataSet, UpdateKind, E, Name + ' ' + op, linha);
    cdsDados.Tag := 1;
  end;
end;

procedure TformCadModelo.tmrRelogioTimer(Sender: TObject);
begin
  dxStatusBar.Panels[0].Text := FormatDateTime('HH:NN', now);
end;

procedure TformCadModelo.tmrLabelTimer(Sender: TObject);
begin
  tmrLabel.Tag := succ(tmrLabel.Tag);
  if tmrLabel.Tag > length(last_labelcaption) then
   begin
     tmrLabel.Enabled := False;
     tmrLabel.Tag := 0;
     last_label.Caption := last_labelcaption;
     last_label.Font.Color := clWindowText;
   end else
   begin
     last_label.Font.Color := clRed;
     last_label.Caption := copy(last_labelcaption, 1, tmrLabel.Tag) + '_';
   end;
end;

procedure TformCadModelo.SelecionarTudo1Click(Sender: TObject);
var
  marca: TBookMark;
begin
  with cdsDados do
   try
     formPrincipal.ShowMsg('Marcando...');
     disablecontrols;
     marca := BookMark;
     first;
     while not eof do
      begin
        if fields[id_sel].AsString = 'N' then
         begin
           edit;
           fields[id_sel].AsString := 'S';
           post;
         end;
        next;
      end;
   finally
     formPrincipal.HideMsg;
     BookMark := marca;
     enablecontrols;
   end;
end;

procedure TformCadModelo.Desmarcartudo1Click(Sender: TObject);
var
  marca: TBookMark;
begin
  with cdsDados do
   try
     if not (Sender = nil) then
       formPrincipal.ShowMsg('Desmarcando...');
     disablecontrols;
     marca := BookMark;
     first;
     while not eof do
      begin
        if fields[id_sel].AsString = 'S' then
         begin
           edit;
           fields[id_sel].AsString := 'N';
           post;
         end;
        next;
      end;

     { limpo a seleção }
     no_sel := 0;
     to_sel := 0;
     tmrSel.Enabled := True;

   finally
     formPrincipal.HideMsg;
     BookMark := marca;
     enablecontrols;
   end;
end;

procedure TformCadModelo.cxGrid1DBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  PostMessage(Handle, CM_EXPANDGROUPS, Integer(Sender), 0);
end;

// DEV EXPRESS 12 e 13
//procedure TformCadModelo.cxGrid1DBTableView1StylesGetContentStyle(
//  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
//  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
//begin
//  { se o campo SEL existir e for "S", mudo de cor }
//  if gradeSel >= 0 then
//    if ARecord.Values[gradeSel] = 'S' then
//      AStyle := formPrincipal.ColunaMarcada;
//  { se o campo OCULTO existir e for "S", mudo de cor }
//  if gradeOculto >= 0 then
//    if (ARecord.Values[gradeOculto] = 'S') and (AStyle <> formPrincipal.ColunaMarcada) then
//      AStyle := formPrincipal.ColunaOculta;
//end;

procedure TformCadModelo.cdsDadosAfterEdit(DataSet: TDataSet);
begin
  if btnSalvar.Visible = ivAlways then
    btnSalvar.Enabled := True;
end;

procedure TformCadModelo.cdsDadosAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dxStatusBar.Panels[3].Text := '';
  Application.ProcessMessages;
end;

procedure TformCadModelo.atualizargrade1Click(Sender: TObject);
var
  tecla: word;
begin
  tecla := 13;
  edtSelecionarKeyDown(nil, tecla, []);
end;

procedure TformCadModelo.menuGradePopup(Sender: TObject);
begin
  SelecionarTudo1.Enabled := (id_sel >= 0);
  Desmarcartudo1.Enabled  := (id_sel >= 0);
  Invertermarcao1.Enabled := (id_sel >= 0);
end;

procedure TformCadModelo.tmrFocus2Timer(Sender: TObject);
begin
  tmrFocus2.Enabled := False;
  if edtSelecionar.Text > '' then
    edtSelecionar2.SetFocus(false);
end;

procedure TformCadModelo.cmbSelecionar2Change(Sender: TObject);
begin
  tmrFocus2.Enabled := True;
end;

procedure TformCadModelo.cdsDadosBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dxStatusBar.Panels[3].Text := 'Obtendo mais dados...';
  Application.ProcessMessages;
end;

procedure TformCadModelo.cdsDadosBeforeOpen(DataSet: TDataSet);
begin
  { constante de empresa no SQL padrao }
  while AnsiPos('#CODEMPRESA#', cdsDados.CommandText) > 0 do
    cdsDados.CommandText := AnsiReplaceText(
      cdsDados.CommandText,
      '#CODEMPRESA#',
      IntToStr(formPrincipal.codempresa));
  formPrincipal.ReiniciarRelogio;
  tempo1 := now;
end;

procedure TformCadModelo.cdsDadosBeforePost(DataSet: TDataSet);
begin
  { campos do log }
  try
    if (Dataset.State in [dsInsert, dsEdit]) and
       (pgcDados.ActivePage = tabDetalhe) then
     begin
       if funcoes.CampoExiste(TClientDataset(Dataset), 'LOG_USUARIO') then
         Dataset.fieldByName('LOG_USUARIO').AsString := formPrincipal.usuario;
       if funcoes.CampoExiste(TClientDataset(Dataset), 'LOG_MAQUINA') then
         Dataset.fieldByName('LOG_MAQUINA').AsString := funcoes.GetMachine;
       if funcoes.CampoExiste(TClientDataset(Dataset), 'LOG_DATA') then
         Dataset.fieldByName('LOG_DATA').AsDateTime := formPrincipal.GetTime;
       if funcoes.CampoExiste(TClientDataset(Dataset), 'LOG_HORA') then
         Dataset.fieldByName('LOG_HORA').AsDateTime := formPrincipal.GetTime;
     end;
  except
  end;

  cdsDados.Tag := 0;
end;

procedure TformCadModelo.cdsDadosNewRecord(DataSet: TDataSet);
begin

  try

    { campo SEL }
    if funcoes.CampoExiste(DataSet as TClientDataset, 'SEL') then
      Dataset.FieldByName('SEL').AsString := 'N';

    { campo OCULTO }
    if funcoes.CampoExiste(DataSet as TClientDataset, 'OCULTO') then
      Dataset.FieldByName('OCULTO').AsString := 'N';

//    { campo CODASSINA }
//    if funcoes.CampoExiste(DataSet as TClientDataset, 'CODASSINA') then
//      Dataset.FieldByName('CODASSINA').AsInteger := formPrincipal.usuario;

  except
  end;

end;

procedure TformCadModelo.dsrDadosDataChange(Sender: TObject;
  Field: TField);
begin

  { enquanto houver alterações nos dados, mantenho conectado }
  formPrincipal.ReiniciarRelogio;

end;

procedure TformCadModelo.edtSelecionarEnter(Sender: TObject);
begin
   { WORKAROUND bug do access violation ao teclar enter no edit selecionado }
   PostMessage(TdxBarWinControl(TdxBarEdit(Sender).CurItemLink.Control).Handle,
     EM_SETSEL, -1, 0);
end;

procedure TformCadModelo.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if id_sel >= 0 then
   try
     if not (cdsDados.State = dsEdit) then
       cdsDados.Edit;
     if cdsDados.FieldByName('SEL').AsString = 'N' then
       cdsDados.FieldByName('SEL').AsString := 'S'
     else
       cdsDados.FieldByName('SEL').AsString := 'N';
   except
   end;
end;

procedure TformCadModelo.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  { se for form que permite transferencia }
  if Transferir then
   begin
     if id_sel >= 0 then
      if cdsDados.FieldByName('SEL').AsString = 'N' then
       try
         if not (cdsDados.State = dsEdit) then
           cdsDados.Edit;
         cdsDados.FieldByName('SEL').AsString := 'S';
       except
       end;
     btnSairClick(Sender);
   end;
end;

procedure TformCadModelo.ckBoxMouseEnter(Sender: TObject);
begin
  TcxDBCheckBox(Sender).Style.Shadow := True;
  TcxDBCheckBox(Sender).Style.Color := clMoneyGreen;
  TcxDBCheckBox(Sender).Style.Font.Style := [fsBold];
end;

procedure TformCadModelo.ckBoxMouseLeave(Sender: TObject);
begin
  TcxDBCheckBox(Sender).Style.Shadow := False;
  TcxDBCheckBox(Sender).Style.Color := clCream;
  TcxDBCheckBox(Sender).Style.Font.Style := [];
end;

procedure TformCadModelo.btnOcultosClick(Sender: TObject);
var
  tecla: word;
begin
  tecla := 13;
  if cdsDados.Active then
    edtSelecionarKeyDown(nil, tecla, []);
end;

procedure TformCadModelo.btnEmpresasClick(Sender: TObject);
var
  tecla: word;
begin
  tecla := 13;
  if cdsDados.Active then
    edtSelecionarKeyDown(nil, tecla, []);
end;

procedure TformCadModelo.tmrSemDireitoTimer(Sender: TObject);
begin
  tmrSemDireito.Enabled := False;
  formPrincipal.MsgError(
    'Suas permissões de acesso não permitem acessar esse recurso.',
    'Não permitido');
  Self.Close;
end;

procedure TformCadModelo.tmrShiftTimer(Sender: TObject);
begin
  tmrShift.Enabled := False;
  formPrincipal.CaptShift := False;
  btnAdicionarClick(Sender);
end;

procedure TformCadModelo.cdsDadosAfterScroll(DataSet: TDataSet);
begin

  { enquanto houver alterações nos dados, mantenho conectado }
  formPrincipal.ReiniciarRelogio;
//  repeat until true;
  
end;

procedure TformCadModelo.tmrSelTimer(Sender: TObject);
var
  i: word;
begin
  tmrSel.Enabled := False;

  if (no_sel > 0) then
   begin
     dxBarManagerCad.Bars[2].Visible := True;
     lbSEL.Visible := ivAlways;
     if SomaCampo = '' then
      begin
        if no_sel = 1 then
          lbSEL.Caption := Format('%.2d Marcado', [no_sel])
        else
          lbSEL.Caption := Format('%.2d Marcados', [no_sel]);
      end else
      begin
        if no_sel = 1 then
          lbSEL.Caption := Format('%.2d Marcado. %s: %s',
            [no_sel, somaDescricao, FloatToStrF(to_sel, ffFixed, 18, 2)])
        else
          lbSEL.Caption := Format('%.2d Marcados. %s: %s',
            [no_sel, somaDescricao, FloatToStrF(to_sel, ffFixed, 18, 2)]);
      end;
   end else
   begin
     if (btnEmpresas.Visible = ivAlways) or (btnOcultos.Visible = ivAlways) or vLinks then
       lbSEL.Visible := ivNever
     else
       dxBarManagerCad.Bars[2].Visible := False;
   end;
  if Transferir and (no_sel = 0) then
    btnSair.Enabled := False
  else
    btnSair.Enabled := True;

  btnModificar.Enabled := (no_sel = 1);

  { desligo os botões de relacionamento da barra de links }
  for i := 0 to ComponentCount -1 do
   if Components[i] is TdxBarButton then
    if (Components[i] as TdxBarButton).Tag = 11 then
      TdxBarButton(Components[i]).Enabled := (no_sel = 1);

end;

procedure TformCadModelo.Invertermarcao1Click(Sender: TObject);
var
  marca: TBookMark;
begin
  with cdsDados do
   try
     formPrincipal.ShowMsg('Invertendo...');
     disablecontrols;
     marca := BookMark;
     first;
     while not eof do
      begin
        if fields[id_sel].AsString = 'N' then
         begin
           edit;
           fields[id_sel].AsString := 'S';
           post;
         end else
         begin
           edit;
           fields[id_sel].AsString := 'N';
           post;
         end;
        next;
      end;
   finally
     formPrincipal.HideMsg;
     BookMark := marca;
     enablecontrols;
   end;
end;

procedure TformCadModelo.tmrMoveTimer(Sender: TObject);
begin
  tmrMove.Enabled := False;
  if (WindowState = wsNormal) and (tmrMove.Tag = 1) and Visible and Active then
   begin
     if Left < 0 then
       Left := 0;
     if Top < 0 then
       Top := 0;
     if Screen.Width - (Left + Width) < 0 then
       Left := Screen.Width - Width;
     if Screen.Height - (Top + Height) < 0 then
       Top := (Screen.Height - taskbar_height) - Height;
   end;
end;

end.




