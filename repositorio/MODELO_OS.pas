unit MODELO_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, ActnList, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxCheckBox, thSequencia, thDataHora,
  cxLookAndFeelPainters, cxButtons, cxGroupBox, cxCalendar, cxRadioGroup,
  Menus, cxDBLookupComboBox, dxPScxCommon, cxLookupEdit,
  cxDBLookupEdit, ActiveX, dxmdaset, dxBarExtDBItems, data_os,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxLookAndFeels,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPSPrVwAdv, dxPSPrVwRibbon, data_log, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxPCdxBarPopupMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, cxNavigator, dxSkinsdxRibbonPainter,
  dxSkinDevExpressStyle;

type
  {####################################################################}
  {##                                                                ##}
  {##  FORMULÁRIO                                                    ##}
  {##                                                                ##}
  {####################################################################}
  TformModeloOS = class(TformCadModelo)
    Panel2: TPanel;
    lbCODIGO: TLabel;
    lbSTATUS: TLabel;
    lbDATAABERTURA: TLabel;
    lbNOME: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedSTATUS: TcxDBTextEdit;
    dedNOME: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    lbQUEMABRIU: TLabel;
    lbSOLICITANTE: TLabel;
    lbMARCA: TLabel;
    lbMODELO: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dedQUEMABRIU: TcxDBTextEdit;
    dedSOLICITANTE: TcxDBTextEdit;
    dedMARCA: TcxDBTextEdit;
    dedMODELO: TcxDBTextEdit;
    lbPRIORIDADE: TLabel;
    lbPRAZO: TLabel;
    dedPRAZO: TcxDBTextEdit;
    lbSERIE: TLabel;
    lbCONDICAOEXTERNA: TLabel;
    lbACESSORIOS: TLabel;
    dedSERIE: TcxDBTextEdit;
    dedCONDICAOEXTERNA: TcxDBTextEdit;
    dedACESSORIOS: TcxDBTextEdit;
    lbSERVICOS: TLabel;
    lbOCORRENCIA: TLabel;
    dedOCORRENCIA: TcxDBTextEdit;
    dedPRIORIDADE: TcxDBComboBox;
    dedSERVICOS: TcxDBMemo;
    Panel3: TPanel;
    lbDEFEITO_DETECTADO: TLabel;
    lbSERVICO_REALIZAR: TLabel;
    dedDEFEITO_DETECTADO: TcxDBTextEdit;
    dedSERVICO_REALIZAR: TcxDBTextEdit;
    boxTecnico: TcxGroupBox;
    btnInicio: TcxButton;
    btnTermino: TcxButton;
    tmrTecnicos: TTimer;
    pnlTecnicos: TPanel;
    grdTecnicos: TcxGrid;
    DBTableView1: TcxGridDBTableView;
    DBTableView1NOMEUSER: TcxGridDBColumn;
    DBTableView1DATAINI: TcxGridDBColumn;
    DBTableView1DATAFIM: TcxGridDBColumn;
    Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    pnlItens: TPanel;
    grdItensDBTableView2: TcxGridDBTableView;
    grdItensLevel2: TcxGridLevel;
    grdItens: TcxGrid;
    grdItensDBTableView2BARRA: TcxGridDBColumn;
    grdItensDBTableView2DESCRICAO: TcxGridDBColumn;
    grdItensDBTableView2QUANTIDADE: TcxGridDBColumn;
    grdItensDBTableView2VALOR_PAGO: TcxGridDBColumn;
    tmrItens: TTimer;
    cxTabSheet4: TcxTabSheet;
    cxDBRadioGroup1: TcxDBRadioGroup;
    lbQUEM_AUTORIZOU: TLabel;
    lbDATA_AUTORIZADO: TLabel;
    dedQUEM_AUTORIZOU: TcxDBTextEdit;
    dedDATA_AUTORIZADO: TcxDBDateEdit;
    Label1: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxTabSheet5: TcxTabSheet;
    lbDATA_ENTREGA: TLabel;
    lbQUEM_RECEBEU: TLabel;
    lbQUEM_ENTREGOU: TLabel;
    lbUSUARIOFECHAMENTO: TLabel;
    lbDATAFECHAMENTO: TLabel;
    dedDATA_ENTREGA: TcxDBDateEdit;
    dedQUEM_RECEBEU: TcxDBTextEdit;
    dedQUEM_ENTREGOU: TcxDBTextEdit;
    dedUSUARIOFECHAMENTO: TcxDBTextEdit;
    dedDATAFECHAMENTO: TcxDBTextEdit;
    Label2: TLabel;
    cxDBMemo2: TcxDBMemo;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    Label21: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Label29: TLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    Label28: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    Label30: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    pnlLog: TPanel;
    Splitter1: TSplitter;
    cxGridLog1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    DBTableView1LOG_TIPO: TcxGridDBColumn;
    DBTableView1LOG_USUARIO: TcxGridDBColumn;
    DBTableView1LOG_MAQUINA: TcxGridDBColumn;
    DBTableView1LOG_DATAREMOTO: TcxGridDBColumn;
    DBTableView1LOG_DATASERVIDOR: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLog2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2LOG_CAMPO: TcxGridDBColumn;
    cxGrid2DBTableView2LOG_VALORANTIGO: TcxGridDBColumn;
    cxGrid2DBTableView2LOG_VALORNOVO: TcxGridDBColumn;
    cxGrid2Level2: TcxGridLevel;
    tmrLog: TTimer;
    Label99: TLabel;
    dblOperadoras: TcxDBLookupComboBox;
    Label4: TLabel;
    memLocalizacao: TdxMemData;
    memLocalizacaoITEM: TStringField;
    dsrLocalizacao: TDataSource;
    DBTableView1PORCENTAGEM: TcxGridDBColumn;
    tabPagamentos: TcxTabSheet;
    pnlPagamentos: TPanel;
    grdPagamentos: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1STATUS: TcxGridDBColumn;
    cxGridDBTableView1DATAVENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView1DATAPAGO: TcxGridDBColumn;
    cxGridDBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cdsPagamentos: TClientDataSet;
    cdsPagamentosSEL: TStringField;
    cdsPagamentosCODIGO: TIntegerField;
    cdsPagamentosNUMERO: TSmallintField;
    cdsPagamentosCODDOCUMENTO: TIntegerField;
    cdsPagamentosSTATUS: TStringField;
    cdsPagamentosDOCUMENTO: TStringField;
    cdsPagamentosTIPO_DOC: TStringField;
    dsrPagamentos: TDataSource;
    tmrPagamentos: TTimer;
    Label3: TLabel;
    Label7: TLabel;
    ActionList1: TActionList;
    dxBarButton10: TdxBarButton;
    cdsTecnicos: TClientDataSet;
    dsrTecnicos: TDataSource;
    cdsTecnicosCODMOVIMENTO: TIntegerField;
    cdsTecnicosCODVENDEDOR: TIntegerField;
    cdsTecnicosNOMEUSER: TStringField;
    cdsVerifica: TClientDataSet;
    cdsPagamentosVALOR: TFloatField;
    btnEntrega: TcxButton;
    Label93: TLabel;
    cdsPagamentosDATAVENCIMENTO: TSQLTimeStampField;
    cdsPagamentosDATAPAGO: TSQLTimeStampField;
    cdsTecnicosDATAINI: TSQLTimeStampField;
    cdsTecnicosDATAFIM: TSQLTimeStampField;
    cdsTecnicosPORCENTAGEM: TFloatField;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    cxDBDateEdit1: TcxDBDateEdit;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    tmrAtend: TTimer;
    lbAtend: TLabel;
    grdAtend: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3DATA: TcxGridDBColumn;
    cxGridDBTableView3USUARIO: TcxGridDBColumn;
    cxGridDBTableView3COMENTARIOS: TcxGridDBColumn;
    btnRemoverAtend: TcxButton;
    btnAdicionarAtend: TcxButton;
    dxBarButton15: TdxBarButton;
    dblLocalizacao: TcxDBTextEdit;
    procedure cdsDadosPRAZOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure lbNOMEClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure lbQUEMABRIUClick(Sender: TObject);
    procedure lbMARCAClick(Sender: TObject);
    procedure lbMODELOClick(Sender: TObject);
    procedure lbOCORRENCIAClick(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure cxPageControl1Change(Sender: TObject);
    procedure tmrTecnicosTimer(Sender: TObject);
    procedure btnInicioClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject); override;
    procedure btnTerminoClick(Sender: TObject);
    procedure tmrItensTimer(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject); override;
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure tmrLogTimer(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure tmrPagamentosTimer(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure tmrFocusTimer(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject); override;
    procedure btnEntregaClick(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure DBTableView1DblClick(Sender: TObject);
    procedure tmrAtendTimer(Sender: TObject);
    procedure btnAdicionarAtendClick(Sender: TObject);
    procedure btnRemoverAtendClick(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure lbSTATUSClick(Sender: TObject);
    procedure Label93Click(Sender: TObject);
  private
    { Private declarations }
    prazo,
    podesalvar: boolean;
    prazo_dias: integer;
    prazo_horas: integer;
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
    procedure CalcularPrazo;
  public
    { Public declarations }
    dmoLog: TdmoLog;
    codCliente: longint;
    Cliente: string;
    function DataIntervalo(diferenca: extended): string;
  end;

var
  formModeloOS: TformModeloOS;

implementation

uses pessoas, ostipos, marcas, modelos, defeitos, principal,
  printmov, saida, operadoras, incluirtecnico, pessoasequp, printcupom,
  contareceber, individuais, data_orcamentos, osged, NFe_gerar, status,
  oslocaliza;

{$R *.dfm}

{####################################################################}
{##                                                                ##}
{##  FORMULÁRIO                                                    ##}
{##                                                                ##}
{####################################################################}

function TformModeloOS.DataIntervalo(diferenca: extended): string;
begin
  if diferenca < 0 then
    Result := '+'
  else
    Result := '';

  if Abs(diferenca) < 24.0 then
    Result := Result + Format('%dh %.2dm', [
      Trunc(Abs(diferenca)),
      Trunc(Frac(Abs(diferenca)) * 60)
    ])
  else
    if Abs(diferenca) < 720 then
      Result := Result + Format('%dD %.2dh', [
        Trunc(Abs(diferenca / 24)),
        Trunc(Frac(Abs(diferenca / 24)) * 24)
      ])
    else
      Result := Result + Format('%dM %.2dD', [
        Trunc(Abs(diferenca / 720)),
        Trunc(Frac(Abs(diferenca / 720)) * 30)
      ]);
end;

procedure TformModeloOS.DBTableView1DblClick(Sender: TObject);
begin
  inherited;

  if not cdsTecnicos.Active then exit;
  if cdsTecnicos.IsEmpty then exit;

  if (formPrincipal.cdsUsuarios.FieldByName('TECNICOLOGIN').AsString = 'N') and
     ((cdsDados.FieldByName('TIPO').AsInteger = 2) or
     (formPrincipal.cdsUsuarios.FieldByName('FINANCEIRO').AsString = 'S')) then
  try
    formIncluirTecnico := TformIncluirTecnico.Create(Self);

    formIncluirTecnico.cdsTecnicos.Locate('CODIGO', cdsTecnicosCODVENDEDOR.AsInteger, []);
    formIncluirTecnico.dlcUsuario.Text :=
      formIncluirTecnico.cdsTecnicosNOMEUSER.AsString;
    formIncluirTecnico.dedDATAINI.Date :=
      cdsTecnicosDATAINI.AsDateTime;
    if (FormatDateTime('DD/MM/YYYY', cdsTecnicosDATAFIM.AsDateTime) = '30/12/1899') or
       cdsTecnicosDATAFIM.IsNull then
      formIncluirTecnico.dedDATAFIM.Clear
    else
      formIncluirTecnico.dedDATAFIM.Date :=
        cdsTecnicosDATAFIM.AsDateTime;
    formIncluirTecnico.dedPORCENTAGEM.Text :=
      IntToStr(cdsTecnicosPORCENTAGEM.AsInteger);

    if formIncluirTecnico.ShowModal = mrOk then
     begin

       cdsTecnicos.Edit;
       cdsTecnicosCODVENDEDOR.AsInteger :=
         formIncluirTecnico.cdsTecnicosCODIGO.AsInteger;
       cdsTecnicosNOMEUSER.AsString :=
         formIncluirTecnico.cdsTecnicosNOMEUSER.AsString;
       cdsTecnicosDATAINI.AsDateTime :=
         formIncluirTecnico.dedDATAINI.Date;
       if formIncluirTecnico.dedDATAFIM.Date >= formIncluirTecnico.dedDATAINI.Date then
         cdsTecnicosDATAFIM.AsDateTime := formIncluirTecnico.dedDATAFIM.Date
       else
         cdsTecnicosDATAFIM.Clear;
       cdsTecnicosPORCENTAGEM.AsFloat :=
         StrToInt(formIncluirTecnico.dedPORCENTAGEM.Text);
       Liberar;
       Self.cdsDados.FieldByName('LOG_DATAREMOTO').AsDateTime := now;

     end;
  finally
    formIncluirTecnico.Release;
  end;

end;

procedure TformModeloOS.CalcularPrazo;
var
  data_fim: extended;
begin
  if prazo then
   begin
     if not cdsDados.FieldByName('DATA').IsNull then
      begin
        data_fim := cdsDados.FieldByName('DATA').AsFloat + prazo_dias;
        if prazo_horas > 0 then
          data_fim := data_fim + (prazo_horas / 24);
        cdsDados.fieldByName('DATAPREVISAO').AsFloat := data_fim;
        cdsDados.fieldByName('PRAZO').AsFloat :=
          ((data_fim - cdsDados.FieldByName('DATA').AsFloat) * 24);
        prazo := false;
      end;
   end;
end;

procedure TformModeloOS.cdsDadosPRAZOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;

  if (Sender.DataSet.FieldByName('STATUS').AsString <> 'OS ABERTA') and DisplayText then
     Text := ''
  else
     Text := DataIntervalo(Sender.AsFloat);
end;

procedure TformModeloOS.FormCreate(Sender: TObject);
begin
  inherited;
  EnableRefresh;

  dmoOS := TdmoOS.Create(Self);
  dmoLog := TdmoLog.Create(Self);

  AdicionarCampo('CODIGO',        'MO.CODIGO');
  AdicionarCampo('NOME',          'CL.NOME');
  AdicionarCampo('DATAAB',        'CAST(MO.DATA AS DATE)');
  AdicionarCampo('TIPOOS',        'OT.TIPO');
  AdicionarCampo('MARCA',         'MA.DESCRICAO');
  AdicionarCampo('MODELO',        'MD.DESCRICAO');
  AdicionarCampo('OCORRENCIA',    'DE.DESCRICAO');
  AdicionarCampo('PARCEIRO',      'PA.NOME');
  AdicionarCampo('QUEMABRIU',     'QA.NOMEUSER');
  AdicionarCampo('VENDEDOR',      'VE.NOMEUSER');
  AdicionarCampo('DATAFECHAMENTO','CAST(MO.DATAFECHAMENTO AS DATE)');
  AdicionarCampo('LOCALIZACAO',   'MO.LOCALIZACAO');

  WhereArgStatic := 'MO.CODEMPRESA = ' + IntToStr(formPrincipal.codempresa);

  SetOrderBy('MO.DATA DESC');
  SetCampoSoma('NOTA_VALOR_TOTAL', 'Total');

  SetCampoRodape('ABERTO', 'A=#,##0.00', 'SUM');

  lbQUEMABRIU.Enabled :=
    (formPrincipal.cdsUsuarios.FieldByName('TROCAVENDEDOR').AsString = 'S');

  prazo := false;

//  with memLocalizacao do
//   try
//     active := True;
//     AppendRecord([nil, 'ATENDIMENTO / ENTRADA'         ]);
//     AppendRecord([nil, 'ATENDIMENTO / SAIDA'           ]);
//     AppendRecord([nil, 'LABORATORIO / PENDENTE'        ]);
//     AppendRecord([nil, 'LABORATORIO / EM EXECUÇÃO'     ]);
//     AppendRecord([nil, 'SUPORTE / AGUARDANDO REPARO'   ]);
//     AppendRecord([nil, 'SUPORTE / AGUARDANDO APROVAÇÃO']);
//     AppendRecord([nil, 'SUPORTE / CONCLUÍDO'           ]);
//     AppendRecord([nil, 'SUPORTE / ENTRADA'             ]);
//   except
//   end;

end;

procedure TformModeloOS.FormShow(Sender: TObject);
begin
  inherited;
  podesalvar := (btnSalvar.Visible = ivAlways);
end;

procedure TformModeloOS.lbNOMEClick(Sender: TObject);
begin
  inherited;

  if novo_registro then
   begin

      { chamo o form }
      try
        formPessoas := TformPessoas.Create(Self);
        formPessoas.Transferir := True;
        formPessoas.MultiSelect := False;
        formPessoas.Tag := formPrincipal.actPessoas.Tag;
        if formPessoas.ShowModal = mrOk then
         if formPessoas.cdsDados.Active then
          begin

            { histórico }
            formPrincipal.ShowMsg('Consultando cliente...');
            if cdsVerifica.Active then
              cdsVerifica.Close;
            cdsVerifica.FetchParams;
            cdsVerifica.Params.ParamByName('CODCLIENTE').AsInteger :=
              formPessoas.cdsDados.fieldByname('CODIGO').AsInteger;
            cdsVerifica.Params.ParamByName('CODEMPRESA').AsInteger :=
              formPrincipal.codempresa;
            cdsVerifica.Execute;
            formPrincipal.HideMsg;
            if cdsVerifica.Params.ParamByName('BLOQUEIO').AsString = 'N' then
             begin

               { posso usar esse cliente }
               Liberar;
               cdsDados.FieldByName('CODCLIENTE').AsInteger :=
                 formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
               cdsDados.FieldByName('NOME').AsString :=
                 formPessoas.cdsDados.FieldByName('NOME').AsString;

            end else
            begin

              formPrincipal.MsgError(
                cdsVerifica.Params.ParamByName('MENSAGEM').AsString,
                'Bloqueio');

              { tipo do bloqueio }
              if cdsVerifica.Params.ParamByName('BLOQUEIO').AsString = 'A' then
               begin
                 { posso usar esse cliente }
                 Liberar;
                 cdsDados.FieldByName('CODCLIENTE').AsInteger :=
                   formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
                 cdsDados.FieldByName('NOME').AsString :=
                   formPessoas.cdsDados.FieldByName('NOME').AsString;
               end;

            end;

          end;
      finally
        try
          { destruo o form }
          formPessoas.Release;
        except
        end
      end

   end else
   begin

      { chamo o form }
      try
        formPessoas := TformPessoas.Create(Self);
        formPessoas.Transferir := False;
        formPessoas.MultiSelect := False;
        formPessoas.AutoLoad := True;
        formPessoas.SetWhereDynamic(
          Format('CLIENTES.CODIGO = %d', [cdsDados.FieldByName('CODCLIENTE').AsInteger]),
          Format('Cliente %d - %s', [cdsDados.FieldByName('CODCLIENTE').AsInteger, cdsDados.FieldByName('NOME').AsString]));
        formPessoas.codCliente := cdsDados.FieldByName('CODCLIENTE').AsInteger;  
        formPessoas.Tag := formPrincipal.actPessoas.Tag;
        formPessoas.ShowModal;
      finally
        formPessoas.Release;
      end;

   end;

end;

procedure TformModeloOS.Label6Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPessoas := TformPessoas.Create(Self);
    formPessoas.Transferir := True;
    formPessoas.MultiSelect := False;
    formPessoas.Tag := formPrincipal.actPessoas.Tag;
    if formPessoas.ShowModal = mrOk then
     if formPessoas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODPARCEIRO').AsInteger :=
          formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('PARCEIRO').AsString :=
          formPessoas.cdsDados.FieldByName('NOME').AsString;
      end;
  finally
    try
      { destruo o form }
      formPessoas.Release;
    except
    end
  end

end;

procedure TformModeloOS.Label5Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formOSTipos := TformOSTipos.Create(Self);
    formOSTipos.AutoLoad := True;
    formOSTipos.Transferir := True;
    formOSTipos.MultiSelect := False;
    formOSTipos.Tag := formPrincipal.actOSTipos.Tag;
    if formOSTipos.ShowModal = mrOk then
     if formOSTipos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('OSTIPO').AsInteger :=
          formOSTipos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('TIPOOS').AsString :=
          formOSTipos.cdsDados.FieldByName('TIPO').AsString;
        prazo_dias :=
          formOSTipos.cdsDados.FieldByName('DIAS').AsInteger;
        prazo_horas :=
          formOSTipos.cdsDados.FieldByName('HORAS').AsInteger;
        prazo := true;
        CalcularPrazo;
      end;
  finally
    try
      { destruo o form }
      formOSTipos.Release;
    except
    end
  end

end;

procedure TformModeloOS.lbQUEMABRIUClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPessoas := TformPessoas.Create(Self);
    formPessoas.AutoLoad := True;
    formPessoas.Transferir := True;
    formPessoas.MultiSelect := False;
    formPessoas.SetWhereDynamic('TIPO = ''A''', 'Somente Associados');
    formPessoas.Tag := formPrincipal.actPessoas.Tag;
    if formPessoas.ShowModal = mrOk then
     if formPessoas.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODVENDEDOR').AsInteger :=
          formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('CODVENDEDOR_ABRE').AsInteger :=
          formPessoas.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('QUEMABRIU').AsString :=
          formPessoas.cdsDados.FieldByName('NOME').AsString;
      end;
  finally
    try
      { destruo o form }
      formPessoas.Release;
    except
    end
  end

end;

procedure TformModeloOS.lbSTATUSClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formOSStatus := TformOSStatus.Create(Self);
    formOSStatus.AutoLoad := True;
    formOSStatus.Transferir := True;
    formOSStatus.MultiSelect := False;
    formOSStatus.Tag := formPrincipal.actStatus.Tag;
    if formOSStatus.ShowModal = mrOk then
     if formOSStatus.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('STATUS').AsString :=
          formOSStatus.cdsDados.FieldByName('STATUS').AsString;
      end;
  finally
    try
      { destruo o form }
      formOSStatus.Release;
    except
    end
  end


end;

procedure TformModeloOS.lbMARCAClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formMarcas := TformMarcas.Create(Self);
    formMarcas.AutoLoad := True;
    formMarcas.Transferir := True;
    formMarcas.MultiSelect := False;
    formMarcas.Tag := formPrincipal.actMarcas.Tag;
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

procedure TformModeloOS.lbMODELOClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formModelos := TformModelos.Create(Self);
    formModelos.AutoLoad := True;
    formModelos.Transferir := True;
    formModelos.MultiSelect := False;
    formModelos.codMarca := cdsDados.fieldByName('CODMARCA').AsInteger;
    formModelos.Tag := formPrincipal.actModelos.Tag;
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

procedure TformModeloOS.lbOCORRENCIAClick(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formDefeitos := TformDefeitos.Create(Self);
    formDefeitos.AutoLoad := True;
    formDefeitos.Transferir := True;
    formDefeitos.MultiSelect := False;
    formDefeitos.Tag := formPrincipal.actOcorrencias.Tag;
    if formDefeitos.ShowModal = mrOk then
     if formDefeitos.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODDEFEITO').AsInteger :=
          formDefeitos.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('OCORRENCIA').AsString :=
          formDefeitos.cdsDados.FieldByName('DESCRICAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formDefeitos.Release;
    except
    end
  end

end;

procedure TformModeloOS.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
    cdsDados.fieldByName('CODIGO').AsInteger  := sequencia;
end;

procedure TformModeloOS.cdsDadosNewRecord(DataSet: TDataSet);
var
  dataservidor: TDateTime;
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'MOVIMENTOS',
    LerSequencia);

  dataservidor := formPrincipal.GetTime;

  { campos inicializados }
  with cdsDados do
   begin
     fieldByName('PRIORIDADE').AsInteger := 3;
     fieldByName('ES').AsInteger := 2;
     fieldByName('TIPO').AsInteger := 2;
     fieldByName('VALOR_SERVICOS').AsFloat := 0;
     fieldByName('VALOR_ITENS').AsFloat := 0;
     fieldByName('NOTA_VALOR_FRETE').AsFloat := 0;
     fieldByName('NOTA_VALOR_SEGURO').AsFloat := 0;
     fieldByName('NOTA_VALOR_OUTROS').AsFloat := 0;
     fieldByName('VALOR_ICMS').AsFloat := 0;
     fieldByName('DESCONTO').AsFloat := 0;
     fieldByName('NOTA_QUANTIDADE').AsInteger := 0;
     fieldByName('NOTA_FRETE').AsInteger := 2;
     fieldByName('STATUS').AsString := 'OS ABERTA';
     fieldByName('CONDICAO').AsString := '10/';
     fieldByName('NOTA_DATASAIDA').AsDateTime := dataservidor;
     fieldByName('NOTA_BASEICMS').AsFloat := 0;
     fieldByName('NOTA_BASEICMSSUBST').AsFloat := 0;
     fieldByName('NOTA_VALORICMSSUBST').AsFloat := 0;
     fieldByName('VALOR_IPI').AsFloat := 0;
     fieldByName('GARANTIA').AsString := 'N';
     fieldByName('EMPRESTIMO').AsString := 'N';
     fieldByName('NOTA_PESOBRUTO').AsFloat := 0;
     fieldByName('NOTA_PESOLIQUIDO').AsFloat := 0;
     fieldByName('CODCENTRO').AsInteger := 1;
     fieldByName('AUTORIZADO').AsString := 'N';

     { campos configuráveis }
     fieldByName('CODEMPRESA').AsInteger :=
       formPrincipal.codempresa;
     fieldByName('CODVENDEDOR').AsInteger :=
       formPrincipal.codusuario;
     fieldByName('CODVENDEDOR_ABRE').AsInteger :=
       formPrincipal.codusuario;
     fieldByName('QUEMABRIU').AsString :=
       formPrincipal.usuario;
     fieldByName('ICMSSIMPLES').AsString :=
       formPrincipal.cdsPerfil.fieldByName('ICMSSIMPLES').AsString;
     fieldByName('ICMSSIMPALIQ').AsFloat :=
       formPrincipal.cdsPerfil.fieldByName('ALIQUOTA_ICMSSIMPLES').AsFloat;
     fieldByName('ISSALIQ').AsFloat :=
       formPrincipal.cdsPerfil.fieldByName('ALIQUOTA_ISS').AsFloat;
     fieldByName('NOTA_CODNATUOPER').AsString :=
       formPrincipal.cdsPerfil.fieldByName('NATUOPER_PADRAO').AsString;

     fieldByName('DATA').AsDateTime   := dataservidor;
     fieldByName('DATAAB').AsDateTime := dataservidor;
     fieldByName('HORAAB').AsDateTime := dataservidor;

     { campos de visualização }
     fieldByName('SEL').AsString := 'S';
   end;

  CalcularPrazo;

  if codCliente > 0 then
   begin
     DataSet.FieldByName('CODCLIENTE').AsInteger := codCliente;
     DataSet.FieldByName('NOME').AsString := Cliente;
   end;

end;

procedure TformModeloOS.btnAdicionarAtendClick(Sender: TObject);
var
  comentario: string;
begin
  inherited;
  comentario := InputBox('Adicionar contato', 'Descríção do Contato', '');
  if comentario > '' then
   begin
     dmoOS.cdsAtend.Insert;
     dmoOS.cdsAtendCODMOVIMENTO.AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
     dmoOS.cdsAtendDATA.AsDateTime := formPrincipal.GetTime;
     dmoOS.cdsAtendUSUARIO.AsString := formPrincipal.usuario;
     dmoOS.cdsAtendCOMENTARIOS.AsString := comentario;
     dmoOS.cdsAtend.Post;
     Liberar;
   end;
end;

procedure TformModeloOS.btnAdicionarClick(Sender: TObject);
begin
  pnlLog.Visible := False;
  grdAtend.Visible := False;

  if not formPrincipal.cdsOperadoras.Active then
    formPrincipal.cdsOperadoras.Open;

  inherited;

  prazo := false;

  if podesalvar then
    btnSalvar.Visible := ivAlways
  else
    btnSalvar.Visible := ivNever;

  cxPageControl1.ActivePage := cxTabSheet1;
  cxTabSheet2.TabVisible := False;
  cxTabSheet3.TabVisible := False;
  tabPagamentos.TabVisible := False;
  cxTabSheet4.TabVisible := False;
  cxTabSheet5.TabVisible := False;

  grdTecnicos.Visible := False;
  pnlTecnicos.Visible := False;
  grdItens.Visible := False;
  pnlItens.Visible := False;
  grdPagamentos.Visible := False;
  pnlPagamentos.Visible := False;

  formPrincipal.SocketConnection.Close;
end;

procedure TformModeloOS.btnModificarClick(Sender: TObject);
begin

  if not formPrincipal.cdsOperadoras.Active then
    formPrincipal.cdsOperadoras.Open;

  if (cdsDados.fieldByName('TIPO').AsInteger = 5) then
   begin

     { continuo a venda }
     try
       formSaida := TformSaida.Create(Self);
       formSaida.Tag := TAction(Sender).Tag;
       formSaida.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
       formSaida.Continuar := True;
       formSaida.ShowModal;
       Recarregar('CODIGO');
     finally
       try
         formSaida.Release;
       except
       end
     end

   end else
   begin

     pnlLog.Visible := False;
     grdAtend.Visible := False;
     inherited;
     prazo := false;

     grdTecnicos.Visible := False;
     pnlTecnicos.Visible := False;
     grdItens.Visible := False;
     pnlItens.Visible := False;
     grdPagamentos.Visible := False;
     pnlPagamentos.Visible := False;

     { escondo/mostro páginas da O.S. }
     if cdsDados.fieldByName('TIPO').AsInteger in [2, 3] then
      begin

        { botão salvar }
        if cdsDados.fieldByName('TIPO').AsInteger = 2 then
         begin
           if podesalvar then
             btnSalvar.Visible := ivAlways
           else
             btnSalvar.Visible := ivNever;
         end else
           btnSalvar.Visible := ivNever;

        { O.S. }
        cxPageControl1.Pages[0].TabVisible := True;
        cxPageControl1.Pages[1].TabVisible := True;
        cxPageControl1.Pages[2].TabVisible := False;
        cxPageControl1.Pages[3].TabVisible := True;
        cxPageControl1.Pages[4].TabVisible := True;
        cxPageControl1.Pages[5].TabVisible := True;
        cxPageControl1.Pages[6].TabVisible := True;
        cxPageControl1.Pages[7].TabVisible := True;
        cxPageControl1.Pages[8].TabVisible := True;
        label5.Visible         := True;
        cxDBTextEdit1.Visible  := True;
        label93.Visible        := True;
        dblLocalizacao.Visible := True;
        label6.Visible         := True;
        cxDBTextEdit2.Visible  := True;
        Panel2.Height := 136;
        cxPageControl1.ActivePageIndex := 0;
        cxDBDateEdit1.Enabled :=
          (formPrincipal.cdsUsuarios.FieldByName('ESTORNO').AsString = 'S');
        btnRemoverAtend.Visible :=
          (formPrincipal.cdsUsuarios.FieldByName('ESTORNO').AsString = 'S');
      end else
      begin

        { Venda }
        cxPageControl1.Pages[2].TabVisible := True;
        cxPageControl1.Pages[3].TabVisible := True;
        cxPageControl1.Pages[4].TabVisible := True;
        cxPageControl1.Pages[5].TabVisible := False;
        cxPageControl1.Pages[6].TabVisible := False;
        cxPageControl1.Pages[7].TabVisible := True;
        cxPageControl1.Pages[8].TabVisible := True;
        label5.Visible         := False;
        cxDBTextEdit1.Visible  := False;
        label93.Visible        := False;
        dblLocalizacao.Visible := False;
        label6.Visible         := False;
        cxDBTextEdit2.Visible  := False;
        Panel2.Height := 97;
        cxPageControl1.ActivePageIndex := 2;
        cxPageControl1.Pages[0].TabVisible := False;
        cxPageControl1.Pages[1].TabVisible := False;

      end;

     formPrincipal.SocketConnection.Close;

   end;

end;

procedure TformModeloOS.btnRemoverAtendClick(Sender: TObject);
begin
  inherited;
  dmoOS.cdsAtend.Delete;
end;

procedure TformModeloOS.cxPageControl1Change(Sender: TObject);
begin
  inherited;

  { técnicos }
  if cxPageControl1.ActivePage = cxTabSheet2 then
   begin
     if (not grdTecnicos.Visible) and (not pnlTecnicos.Visible) then
       tmrTecnicos.Enabled := True;
   end;

  { itens }
  if cxPageControl1.ActivePage = cxTabSheet3 then
   begin
     if (not grdItens.Visible) and (not pnlItens.Visible) then
       tmrItens.Enabled := True;
   end;

  { pagamentos }
  if cxPageControl1.ActivePage = tabPagamentos then
   begin
     if (not grdPagamentos.Visible) and (not pnlPagamentos.Visible) then
       tmrPagamentos.Enabled := True;
   end;

  { log }
  if cxPageControl1.ActivePage = cxTabSheet8 then
   begin
     if (not pnlLog.Visible) then
       tmrLog.Enabled := True;
   end;

  { autorizacao }
  if cxPageControl1.ActivePage = cxTabSheet4 then
   begin
     if (not grdAtend.Visible) then
       tmrAtend.Enabled := True;
   end;

end;

procedure TformModeloOS.tmrTecnicosTimer(Sender: TObject);
begin
  inherited;
  tmrTecnicos.Enabled := False;
  with cdsTecnicos do
   try
     if active then close;
     params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
     formPrincipal.ShowMsg('Lendo Técnicos...');
     open;
     RemoteServer.Close;
     pnlTecnicos.Visible := True;
     grdTecnicos.Visible := not IsEmpty;

     { botões }
     if (formPrincipal.cdsUsuarios.FieldByName('TECNICOLOGIN').AsString = 'S') and
        (cdsDados.FieldByName('TIPO').AsInteger = 2) then
      begin
        boxTecnico.Visible := True;
        if IsEmpty then
         begin
           btnInicio.Enabled := True;
           btnTermino.Enabled := False;
         end else
         begin
           if (not fieldByName('DATAINI').IsNull) and
              (fieldByName('DATAFIM').IsNull) then
            begin
              btnInicio.Enabled := False;
              btnTermino.Enabled := True;
            end else
            begin
              btnInicio.Enabled := False;
              btnTermino.Enabled := False;
            end;
         end;
      end else
     if (formPrincipal.cdsUsuarios.FieldByName('TECNICOLOGIN').AsString = 'N') and
        ((cdsDados.FieldByName('TIPO').AsInteger = 2) or
        (formPrincipal.cdsUsuarios.FieldByName('FINANCEIRO').AsString = 'S')) then
      begin
        btnInicio.Enabled := True;
        btnInicio.Caption := 'Incluir';
        btnTermino.Enabled := True;
        btnTermino.Caption := 'Excluir';
        boxTecnico.Visible := True;
      end;

     if (cdsDados.FieldByName('TIPO').AsInteger <> 2) and
        (formPrincipal.cdsUsuarios.FieldByName('FINANCEIRO').AsString = 'N') then
      begin
        btnInicio.Enabled := False;
        btnTermino.Enabled := False;
        boxTecnico.Visible := False;
      end;

     formPrincipal.HideMsg;
   except
     on exception do
      begin
        RemoteServer.Close;
        formPrincipal.HideMsg;
      end;
   end;
end;

procedure TformModeloOS.btnInicioClick(Sender: TObject);
begin
  inherited;

  if formPrincipal.cdsUsuarios.fieldByName('TECNICOLOGIN').AsString = 'S' then
   begin

     try
       formPrincipal.ShowMsg('Definindo início...');
       cdsTecnicos.Insert;
       cdsTecnicosCODMOVIMENTO.AsInteger :=
         Self.cdsDados.fieldByName('CODIGO').AsInteger;
       cdsTecnicosCODVENDEDOR.AsInteger :=
         formPrincipal.codusuario;
       cdsTecnicosNOMEUSER.AsString :=
         formPrincipal.usuario;
       cdsTecnicosDATAINI.AsDateTime :=
         formPrincipal.GetTime;
       cdsTecnicosDATAFIM.Clear;
       cdsTecnicosPORCENTAGEM.AsFloat := 100.0;
       if not (cdsDados.State = dsEdit) then
         Liberar;
       cdsDados.fieldByName('LOG_DATAREMOTO').AsDateTime := now;
       if btnInicio.Enabled then
         btnInicio.Enabled := False;
       grdTecnicos.Visible := True;
       formPrincipal.HideMsg;
     except
       on exception do
         formPrincipal.HideMsg;
     end;

   end else
   begin

     try
       formIncluirTecnico := TformIncluirTecnico.Create(Self);
       if formIncluirTecnico.ShowModal = mrOk then
        begin

          cdsTecnicos.Insert;
          cdsTecnicosCODMOVIMENTO.AsInteger :=
            Self.cdsDados.fieldByName('CODIGO').AsInteger;
          cdsTecnicosCODVENDEDOR.AsInteger :=
            formIncluirTecnico.cdsTecnicosCODIGO.AsInteger;
          cdsTecnicosNOMEUSER.AsString :=
            formIncluirTecnico.cdsTecnicosNOMEUSER.AsString;
          cdsTecnicosDATAINI.AsDateTime :=
            formIncluirTecnico.dedDATAINI.Date;
          if formIncluirTecnico.dedDATAFIM.Date >= formIncluirTecnico.dedDATAINI.Date then
            cdsTecnicosDATAFIM.AsDateTime := formIncluirTecnico.dedDATAFIM.Date
          else
            cdsTecnicosDATAFIM.Clear;
          cdsTecnicosPORCENTAGEM.AsFloat :=
            StrToInt(formIncluirTecnico.dedPORCENTAGEM.Text);
          if not grdTecnicos.Visible then
            grdTecnicos.Visible := True;
          Liberar;
          Self.cdsDados.FieldByName('LOG_DATAREMOTO').AsDateTime := now;

        end;
     finally
       formIncluirTecnico.Release;
     end;

   end;

end;

procedure TformModeloOS.btnSalvarClick(Sender: TObject);
begin
  VerificarCampos;
  if not novo_registro then
   try
     SalvarDataset(cdsTecnicos, 'Técnicos');
     SalvarDataset(dmoOS.cdsAtend, 'Contatos');
   except
   end;
  inherited;
end;

procedure TformModeloOS.btnTerminoClick(Sender: TObject);
begin
  inherited;

  if formPrincipal.cdsUsuarios.fieldByName('TECNICOLOGIN').AsString = 'S' then
   begin

     try
      if cdsTecnicosNOMEUSER.AsString =
        formPrincipal.usuario then
       begin

         formPrincipal.ShowMsg('Definindo término...');
         cdsTecnicos.edit;
         cdsTecnicosDATAFIM.AsDateTime :=
           formPrincipal.GetTime;
         if btnTermino.Enabled then
           btnTermino.Enabled := False;
         if not (cdsDados.State = dsEdit) then
           Liberar;
         cdsDados.FieldByName('LOG_DATAREMOTO').AsDateTime := now;
         formPrincipal.HideMsg;

       end else formPrincipal.MsgError(
         'Técnico de início e término deve ser o mesmo.',
         'Término');
     except
      on exception do
       begin
         raise;
         formPrincipal.HideMsg;
       end;
     end;

   end else
   begin

     if formPrincipal.Pergunta(
       'Deseja mesmo excluir o trabalho do técnico selecionado?',
       'Excluir') = IDYES then
      try
        cdsTecnicos.Delete;
        Liberar;
        cdsDados.FieldByName('LOG_DATAREMOTO').AsDateTime := now;
      except
      end;

   end;

end;

procedure TformModeloOS.tmrItensTimer(Sender: TObject);
begin
  inherited;

  tmrItens.Enabled := False;
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
      end;
   end;
end;

procedure TformModeloOS.btnEntregaClick(Sender: TObject);
begin
  inherited;

  if cdsDados.fieldByName('QUEM_ENTREGOU').AsString > '' then
   begin
     if formPrincipal.cdsUsuarios.FieldByName('ESTORNO').AsString = 'N' then
      begin
        formPrincipal.MsgError('Entrega já efetuada.', 'Entrega');
        exit;
      end else
      begin
        if formPrincipal.Pergunta(
          'Deseja excluir os dados da entrega atual?',
          'Entrega') = IDYES then
         begin
           Liberar;
           cdsDados.fieldByName('QUEM_RECEBEU').Clear;
           cdsDados.fieldByName('QUEM_ENTREGOU').Clear;
           cdsDados.fieldByName('DATA_ENTREGA').Clear;
         end;
        exit;
      end;
   end else
   begin
     Liberar;
     cdsDados.fieldByName('DATA_ENTREGA').AsDateTime :=
       formPrincipal.GetTime;
     cdsDados.FieldByName('QUEM_ENTREGOU').AsString :=
       formPrincipal.usuario;
   end;

end;

procedure TformModeloOS.btnExcluirClick(Sender: TObject);
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

     try

       formPrincipal.ShowMsg('Estornando...');
       btnCancelarClick(Sender);
       with dmoOS.cdsEstorno do
        begin
          Close;
          FetchParams;
          Params[0].AsInteger :=
            cdsDados.fieldByName('CODIGO').AsInteger;
          Params[1].AsString :=
            formPrincipal.usuario;
          execute;
        end;
       formPrincipal.HideMsg;
       Recarregar('CODIGO');

     except
       on exception do
        begin
          dmoOS.cdsEstorno.RemoteServer.Close;
          formPrincipal.HideMsg;
        end;
     end;

   end;

end;

procedure TformModeloOS.dxBarButton7Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  if formPrincipal.cdsPerfil.fieldByName('OSABERTA_PADRAO').AsInteger = 0 then
   try
     dmoOS.PrintOS(cdsDados.FieldByName('CODIGO').AsInteger);
   except
     formPrincipal.HideMsg;
     raise;
   end else
   try
     formPrintmov := TformPrintmov.Create(Self);
     formPrintmov.codMovimento :=
       cdsDados.fieldByName('CODIGO').AsInteger;
     formPrintmov.numImpMov :=
       formPrincipal.cdsPerfil.fieldByName('OSABERTA_PADRAO').AsInteger;
     formPrintmov.impressora :=
       formPrincipal.cdsImpressoras.fieldByName('OS1').AsString;
     formPrintmov.showmodal;
   finally
     try
       { destruo o form }
       formPrintMov.Release;
     except
     end
   end
end;

procedure TformModeloOS.dxBarButton8Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  if formPrincipal.cdsPerfil.fieldByName('OSABERTA_PADRAO_2A').AsInteger = 0 then
   try
     dmoOS.PrintOS2(cdsDados.FieldByName('CODIGO').AsInteger);
   except
     formPrincipal.HideMsg;
     raise;
   end else
   try
     formPrintmov := TformPrintmov.Create(Self);
     formPrintmov.codMovimento :=
       cdsDados.fieldByName('CODIGO').AsInteger;
     formPrintmov.numImpMov :=
       formPrincipal.cdsPerfil.fieldByName('OSABERTA_PADRAO_2A').AsInteger;
     formPrintmov.impressora :=
       formPrincipal.cdsImpressoras.fieldByName('OS2').AsString;
     formPrintmov.showmodal;
   finally
     try
       { destruo o form }
       formPrintMov.Release;
     except
     end
   end
end;

procedure TformModeloOS.dxBarButton9Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  if ecf_class = 'SEM ECF' then
   begin

      if formPrincipal.cdsPerfil.fieldByName('OSFECHADA_PADRAO').AsInteger = 0 then
       begin

         try
           dmoOS.PrintOSF(cdsDados.FieldByName('CODIGO').AsInteger);
         except
           formPrincipal.HideMsg;
           raise;
         end;

       end else
       begin

         try
           formPrintmov := TformPrintmov.Create(Self);
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

       end;

   end;

  if ecf_class = 'CUPOM' then
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

procedure TformModeloOS.tmrLogTimer(Sender: TObject);
begin
  inherited;
  tmrLog.Enabled := False;
  if dmoLog.OpenLog('MOVIMENTOS', cdsDados) then
   begin
     cxGridLog1.Visible := True;
     cxGridLog2.Visible := True;
     pnlLog.Visible := True;
   end else
   begin
     cxGridLog1.Visible := False;
     cxGridLog2.Visible := False;
     pnlLog.Visible := True;
   end;
end;

procedure TformModeloOS.dxBarButton6Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  if (cdsDados.FieldByName('ES').AsInteger = 2) and
    (cdsDados.FieldByName('TIPO').AsInteger = 2) then
   begin

     try
       if not SelMarcado then exit;
       formSaida := TformSaida.Create(Self);
       formSaida.Tag := TAction(Sender).Tag;
       formSaida.codMovimento := cdsDados.fieldByName('CODIGO').AsInteger;
       formSaida.Continuar := True;
       formSaida.lancaPeca := True;
       formSaida.ShowModal;
     finally
       SelectRelease;
       Recarregar('CODIGO');
       try
         formSaida.Release;
       except
       end
     end;

   end else
     formPrincipal.MsgError(
       'Ordem de Serviço já encerrada e faturada.',
       'Lançado!');
end;

procedure TformModeloOS.Label4Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formOperadoras := TformOperadoras.Create(Self);
    formOperadoras.AutoLoad := True;
    formOperadoras.Transferir := True;
    formOperadoras.MultiSelect := False;
    formOperadoras.Tag := formPrincipal.actOperadoras.Tag;
    if formOperadoras.ShowModal = mrOk then
     if formOperadoras.cdsDados.Active then
      begin
        Liberar;
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

procedure TformModeloOS.tmrPagamentosTimer(Sender: TObject);
begin
  inherited;

  tmrPagamentos.Enabled := False;
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
      end;
   end;

end;

procedure TformModeloOS.Label7Click(Sender: TObject);
begin
  inherited;

  { chamo o form }
  try
    formPessoasEquip := TformPessoasEquip.Create(Self);
    formPessoasEquip.AutoLoad := True;
    formPessoasEquip.Transferir := True;
    formPessoasEquip.MultiSelect := False;
    formPessoasEquip.SetWhereDynamic(
      Format('CODCLIENTE = %d', [cdsDados.fieldByName('CODCLIENTE').AsInteger]),
      Format('Equipamentos do Cliente %d - %s', [
        cdsDados.fieldByName('CODCLIENTE').AsInteger,
        cdsDados.fieldByName('NOME').AsString]));
    formPessoasEquip.codCliente := cdsDados.fieldByName('CODCLIENTE').AsInteger;
    if formPessoasEquip.ShowModal = mrOk then
     if formPessoasEquip.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('CODMARCA').AsInteger :=
          formPessoasEquip.cdsDados.FieldByName('CODMARCA').AsInteger;
        cdsDados.FieldByName('MARCA').AsString :=
          formPessoasEquip.cdsDados.FieldByName('MARCA').AsString;
        cdsDados.FieldByName('CODMODELO').AsInteger :=
          formPessoasEquip.cdsDados.FieldByName('CODMODELO').AsInteger;
        cdsDados.FieldByName('MODELO').AsString :=
          formPessoasEquip.cdsDados.FieldByName('MODELO').AsString;
        cdsDados.FieldByName('SERIE').AsString :=
          formPessoasEquip.cdsDados.FieldByName('SERIE').AsString;
      end;
  finally
    try
      { destruo o form }
      formPessoasEquip.Release;
    except
    end
  end

end;

procedure TformModeloOS.Label93Click(Sender: TObject);
begin
  inherited;
  { chamo o form }
  try
    formOSLocaliza := TformOSLocaliza.Create(Self);
    formOSLocaliza.AutoLoad := True;
    formOSLocaliza.Transferir := True;
    formOSLocaliza.MultiSelect := False;
    formOSLocaliza.Tag := formPrincipal.actLocaliza.Tag;
    if formOSLocaliza.ShowModal = mrOk then
     if formOSLocaliza.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('LOCALIZACAO').AsString :=
          formOSLocaliza.cdsDados.FieldByName('LOCALIZACAO').AsString;
      end;
  finally
    try
      { destruo o form }
      formOSLocaliza.Release;
    except
    end
  end

end;

procedure TformModeloOS.tmrAtendTimer(Sender: TObject);
begin
  inherited;

  tmrAtend.Enabled := False;
  with dmoOS.cdsAtend do
   try
     if active then close;
     params[0].AsInteger := cdsDados.fieldByName('CODIGO').AsInteger;
     formPrincipal.ShowMsg('Lendo Contatos...');
     open;
     grdAtend.Visible := True;
     RemoteServer.Close;
     formPrincipal.HideMsg;
   except
     on exception do
      begin
        RemoteServer.Close;
        formPrincipal.HideMsg;
      end;
   end;

end;

procedure TformModeloOS.tmrFocusTimer(Sender: TObject);
begin
  inherited;
  if codCliente > 0 then
    btnAdicionarClick(Sender);
end;

procedure TformModeloOS.dxBarButton10Click(Sender: TObject);
var
  n: integer;
begin
  inherited;

  if no_sel = 1 then
   begin

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
          finally
            try
              { destruo o form }
              formNFeGerar.Release;
            except
            end
          end

       end;

   end else
   begin

     if no_sel > 1 then
      try
        SelectFilter;
        formSaida := TformSaida.Create(Self);
        formSaida.Tag := TAction(Sender).Tag;
        formSaida.Cloning := True;
        n := 1;
        with cdsDados do
         try
           first;
           while not eof do
            begin
              formSaida.movimentos[n] := fieldByName('CODIGO').AsInteger;
              inc(n);
              next;
            end;
         except
         end;
        formSaida.codMovimento := (n - 1);
        formSaida.ShowModal;
      finally
        SelectRelease;
        try
          formSaida.Release;
        except
        end
      end

   end;

end;

procedure TformModeloOS.dxBarButton11Click(Sender: TObject);
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
      Format('Conta a receber da O.S. %d - %s',
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

procedure TformModeloOS.dxBarButton12Click(Sender: TObject);
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
      Format('Mov. Produtos da O.S. %d - %s', [cdsDados.fieldByName('CODIGO').AsInteger, cdsDados.fieldByName('NOME').AsString]));
    formIndividuais.AutoLoad := True;
    formIndividuais.ShowModal;
  finally
    try
      formIndividuais.Release;
    except
    end
  end
end;

procedure TformModeloOS.dxBarButton13Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintVenda(cdsDados.FieldByName('CODIGO').AsInteger, 1);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformModeloOS.dxBarButton14Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    dmoOrcamentos := TdmoOrcamentos.Create(Self);
    dmoOrcamentos.PrintVenda(cdsDados.FieldByName('CODIGO').AsInteger, 2);
  finally
    try
      dmoOrcamentos.Free;
    except
    end;
  end;

end;

procedure TformModeloOS.dxBarButton15Click(Sender: TObject);
begin
  inherited;

  if not cdsDados.Active then exit;
  if cdsDados.IsEmpty then exit;
  if not SelMarcado then exit;

  try
    formOSGed := TformOSGed.Create(Self);
    formOSGed.Tag := formPrincipal.actOS.Tag;
    formOSGed.codmovimento := cdsDados.fieldByName('CODIGO').AsInteger;
    formOSGed.SetWhereDynamic(
      Format('CODMOVIMENTO = %d', [cdsDados.fieldByName('CODIGO').AsInteger]),
      Format('Documentos da O.S. %d - %s', [cdsDados.fieldByName('CODIGO').AsInteger, cdsDados.fieldByName('NOME').AsString]));
    formOSGed.AutoLoad := True;
    formOSGed.ShowModal;
  finally
    try
      formOSGed.Release;
    except
    end
  end
end;

procedure TformModeloOS.btnCancelarClick(Sender: TObject);
begin
  inherited;
  CancelarDataset(cdsTecnicos);
end;

end.
