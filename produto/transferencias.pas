unit transferencias;
                      
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, Menus, ActnList, dxBar, dxPSCore,
  dxPScxCommon, ExtCtrls, dxBarExtItems, dxStatusBar,
  DBCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxCheckBox, dxmdaset,
  dxBarExtDBItems, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, dxPSPrVwAdv,
  dxPSPrVwRibbon, cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformTransferencias = class(TformCadModelo)
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
    cxDBTextEdit7: TcxDBTextEdit;
    cdsDadosSEL: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cdsDadosCODBARRA: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosQUANTIDADE: TIntegerField;
    cdsDadosCODEMPRESA1: TIntegerField;
    cdsDadosCODEMPRESA2: TIntegerField;
    cdsDadosUSUARIO: TStringField;
    cdsDadosICMS: TFloatField;
    cdsDadosDATADIA: TDateField;
    cdsDadosDATAHORA: TTimeField;
    cdsDadosNOME: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CODBARRA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1CODEMPRESA2: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1DATADIA: TcxGridDBColumn;
    cxGrid1DBTableView1DATAHORA: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cdsTransf: TClientDataSet;
    procedure Label3Click(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
    procedure Label7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTransferencias: TformTransferencias;

implementation

uses saida_produtos, principal, perfil;

{$R *.dfm}

procedure TformTransferencias.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarCampo('NOME', 'CLIENTES.NOME');
  SetWhereDynamic('TRANSFERENCIAS.CODEMPRESA1 = ' + IntToStr(formPrincipal.codempresa),
    'Transferências de ' + formPrincipal.Caption);
end;

procedure TformTransferencias.Label3Click(Sender: TObject);
begin
  inherited;
  try
    formSaidaProdutos := TformSaidaProdutos.Create(Self);
    formSaidaProdutos.SetWhereDynamic(
      '',
      'Produtos em Estoque');
    formSaidaProdutos.MultiSelect := False;
    formSaidaProdutos.Transferir := True;
    formSaidaProdutos.Tag :=
      formPrincipal.actProdutos.Tag;
    if formSaidaProdutos.ShowModal = mrOk then
     if not formSaidaProdutos.cdsDados.IsEmpty then
      begin
        cdsDadosCODBARRA.AsString :=
          formSaidaProdutos.cdsDados.FieldByName('BARRA').AsString;
        cdsDadosDESCRICAO.AsString :=
          formSaidaProdutos.cdsDados.FieldByName('DESCRICAO').AsString;
        cdsDadosQUANTIDADE.AsInteger :=
          formSaidaProdutos.cdsDados.FieldByName('QUANTIDADE').AsInteger;
        cdsDadosICMS.AsFloat :=
          formSaidaProdutos.cdsDados.FieldByName('ICMS').AsFloat;
      end;
  finally
    try
      formSaidaProdutos.Release;
    except
    end
  end

end;

procedure TformTransferencias.btnSalvarClick(Sender: TObject);
begin

  VerificarCampos;

  try
    cdsTransf.FetchParams;
    cdsTransf.Params[0].AsString :=
      cdsDadosCODBARRA.AsString;
    cdsTransf.Params[1].AsCurrency :=
      cdsDadosQUANTIDADE.AsCurrency;
    cdsTransf.Params[2].AsFloat :=
      cdsDadosICMS.AsFloat;
    cdsTransf.Params[3].AsInteger :=
      cdsDadosCODEMPRESA1.AsInteger;
    cdsTransf.Params[4].AsInteger :=
      cdsDadosCODEMPRESA2.AsInteger;
    cdsTransf.Execute;

    { chamo a rotina que salva o cadastro }
    inherited;

  except
    on exception do
     begin
       cdsTransf.RemoteServer.Close;
       formPrincipal.MsgError(
         'Erro na transferência', 'Erro');
     end;
  end;


end;

procedure TformTransferencias.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('DATA').AsDateTime := formPrincipal.GetTime;
  Dataset.FieldByName('USUARIO').AsString := formPrincipal.usuario;
  Dataset.FieldByName('CODEMPRESA1').AsInteger := formPrincipal.codempresa;
end;

procedure TformTransferencias.Label7Click(Sender: TObject);
begin
  inherited;
  try
    formPerfil := TformPerfil.Create(Self);
    formPerfil.SetWhereDynamic(
      'SI.CODIGO <> ' + IntToStr(formPrincipal.codempresa),
      'Empresas Disponíveis para Transferência');
    formPerfil.MultiSelect := False;
    formPerfil.Transferir := True;
    formPerfil.Tag :=
      formPrincipal.actPerfil.Tag;
    formPerfil.AutoLoad := True;
    if formPerfil.ShowModal = mrOk then
     if not formPerfil.cdsDados.IsEmpty then
      begin
        cdsDadosCODEMPRESA2.AsInteger :=
          formPerfil.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDadosNOME.AsString :=
          formPerfil.cdsDados.FieldByName('EMPRESA').AsString;
        if formPerfil.cdsDadosICMSSIMPLES.AsString = 'S' then
          cdsDadosICMS.AsFloat := formPerfil.cdsDadosALIQUOTA_ICMSSIMPLES.AsFloat;
      end;
  finally
    try
      formPerfil.Release;
    except
    end
  end

end;

end.
