unit logradouros;
                      
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, DBClient, dxBar, dxPSCore,
  ExtCtrls, dxBarExtItems, dxStatusBar, DBCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, thSequencia,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, Menus, dxPScxCommon,
  cxCheckBox, dxmdaset, dxBarExtDBItems, ActnList, 
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxPSPrVwAdv, dxPSPrVwRibbon,
  cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformLogradouros = class(TformCadModelo)
    cdsDadosCODIGO: TIntegerField;
    cdsDadosLOGRADOURO: TStringField;
    cdsDadosBAIRRO: TIntegerField;
    cdsDadosNOMEBAIRRO: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosCIDADE: TIntegerField;
    cdsDadosNOMECIDADE: TStringField;
    cdsDadosESTADO: TStringField;
    cdsDadosEXTENSO: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1LOGRADOURO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEBAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dedCODIGO: TcxDBTextEdit;
    dedLOGRADOURO: TcxDBTextEdit;
    dedCEP: TcxDBTextEdit;
    dedESTADO: TcxDBTextEdit;
    dedEXTENSO: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cdsNovaLocalidade: TClientDataSet;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure edtSelecionarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label3Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure cdsDadosNewRecord(DataSet: TDataSet); override;
  private
    { Private declarations }
    thObterSeq: ThreadSequencia;
    procedure LerSequencia(var sequencia: longint);
  public
    { Public declarations }
//    codCidade: longint;
//    Cidade,
//    Estado: string;
//    cepCidade: string;
  end;

var
  formLogradouros: TformLogradouros;

implementation

uses nova_localidade, principal, bairros, cidades;

{$R *.dfm}

procedure TformLogradouros.LerSequencia(var sequencia: longint);
begin
  if cdsDados.State = dsInsert then
   begin
     cdsDadosCODIGO.AsInteger  := sequencia;
   end;
end;

procedure TformLogradouros.FormCreate(Sender: TObject);
begin
  inherited;

  { transporte de privilégios }
  tag := formPrincipal.actLogradouros.Tag;

  AdicionarCampo('CODIGO'    , 'LO.CODIGO'    );
  AdicionarCampo('LOGRADOURO', 'LO.LOGRADOURO');
  AdicionarCampo('CEP'       , 'LO.CEP'       );
  AdicionarCampo('NOMEBAIRRO', 'BA.BAIRRO'    );
  AdicionarCampo('NOMECIDADE', 'CI.CIDADE'    );
  AdicionarCampo('ESTADO'    , 'LO.ESTADO'    );

  SetOrderBy('LO.CODIGO DESC');
end;

procedure TformLogradouros.btnAdicionarClick(Sender: TObject);
//var
//  tecla: word;
begin

//  tecla := 13;
//  try
//    formNovaLocalidade := TformNovaLocalidade.Create(Self);
//    if codCidade = 0 then
//     begin
//       codCidade := formPrincipal.cdsPerfil.fieldByName('EMP_CODCIDADE').AsInteger;
//       Cidade := formPrincipal.cdsPerfil.fieldByName('EMP_CIDADE').AsString;
//       Estado := formPrincipal.cdsPerfil.fieldByName('EMP_ESTADO').AsString;
//     end;
//    if formPrincipal.cdsPerfil.fieldByName('EMP_CODCIDADE').Asinteger = codCidade then
//     begin
//       formNovaLocalidade.edBairro.Text :=
//         formPrincipal.cdsPerfil.fieldByName('EMP_BAIRRO').AsString;
//       formNovaLocalidade.edCEP.Text :=
//         formPrincipal.cdsPerfil.fieldByName('EMP_CEP').AsString;
//     end else formNovaLocalidade.edCEP.Text := cepCidade;
//    formNovaLocalidade.lbTitulo.Caption := Format('Adicionando localidade para %s, %s',
//      [Cidade, Estado]);
//    if formNovaLocalidade.ShowModal = mrOk then
//     begin
//       cdsNovaLocalidade.Params[0].AsString :=
//         formNovaLocalidade.edLogradouro.Text;
//       cdsNovaLocalidade.Params[1].AsString :=
//         formNovaLocalidade.edBairro.Text;
//       cdsNovaLocalidade.Params[2].AsString :=
//         formNovaLocalidade.edCEP.Text;
//       cdsNovaLocalidade.Params[3].AsInteger :=
//         codCidade;
//       cdsNovaLocalidade.Params[4].AsString :=
//         Estado;
//       cdsNovaLocalidade.Execute;
//       cmbSelecionar.ItemIndex := 1;
//       Application.ProcessMessages;
//       edtSelecionar.Text :=
//         formNovaLocalidade.edLogradouro.Text;
//       Application.ProcessMessages;
//       edtSelecionarKeyDown(Sender, tecla, []);
//     end
//  finally
//    try
//      formNovaLocalidade.Release;
//    except
//    end
//  end;

end;

procedure TformLogradouros.edtSelecionarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
//  btnAdicionar.Enabled := (codCidade > 0);
end;

procedure TformLogradouros.Label3Click(Sender: TObject);
begin
  inherited;
  try
    formBairros := TformBairros.Create(Self);
    if not cdsDados.FieldByName('CIDADE').IsNull then
     begin
       formBairros.SetWhereDynamic(
         Format('BA.CIDADE = %d', [cdsDados.FieldByName('CIDADE').AsInteger]),
         Format('Bairros de %s', [cdsDados.FieldByName('NOMECIDADE').AsString]));
       formBairros.AutoLoad := True;
     end;
    formBairros.Transferir := True;
    formBairros.MultiSelect := False;
    if formBairros.ShowModal = mrOk then
     if formBairros.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('BAIRRO').AsInteger :=
          formBairros.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('NOMEBAIRRO').AsString :=
          formBairros.cdsDados.FieldByName('BAIRRO').AsString;
        cdsDados.FieldByName('CIDADE').AsInteger :=
          formBairros.cdsDados.FieldByName('CIDADE').AsInteger;
        cdsDados.FieldByName('NOMECIDADE').AsString :=
          formBairros.cdsDados.FieldByName('NOMECIDADE').AsString;
        cdsDados.FieldByName('ESTADO').AsString :=
          formBairros.cdsDados.FieldByName('ESTADO').AsString;
      end;
  finally
    try
      { destruo o form }
      formBairros.Release;
    except
    end
  end

end;

procedure TformLogradouros.Label5Click(Sender: TObject);
begin
  inherited;
  try
    formCidades := TformCidades.Create(Self);
    formCidades.Transferir := True;
    formCidades.MultiSelect := False;
    if formCidades.ShowModal = mrOk then
     if formCidades.cdsDados.Active then
      begin
        Liberar;
        cdsDados.FieldByName('BAIRRO').Clear;
        cdsDados.FieldByName('NOMEBAIRRO').Clear;
        cdsDados.FieldByName('CIDADE').AsInteger :=
          formCidades.cdsDados.FieldByName('CODIGO').AsInteger;
        cdsDados.FieldByName('NOMECIDADE').AsString :=
          formCidades.cdsDados.FieldByName('CIDADE').AsString;
        cdsDados.FieldByName('ESTADO').AsString :=
          formCidades.cdsDados.FieldByName('ESTADO').AsString;
      end;
  finally
    try
      { destruo o form }
      formCidades.Release;
    except
    end
  end
end;

procedure TformLogradouros.cdsDadosNewRecord(DataSet: TDataSet);
begin
  inherited;
  thObterSeq := ThreadSequencia.Create(
    formPrincipal.dbid,
    formPrincipal.midtier_host,
    'LOGRADOUROS',
    LerSequencia);
end;

end.
