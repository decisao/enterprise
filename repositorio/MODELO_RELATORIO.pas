unit MODELO_RELATORIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, ExtCtrls, cxCalendar,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  Dateutils, ppCtrls, ppStrtch, ppMemo, ppVar, ppPrnabl, ppBands,
  ppCache, cxCheckBox, cxGraphics, Menus, cxLookAndFeels, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2007Silver, ppParameter, dxGDIPlusClasses,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinDevExpressStyle, ComCtrls, dxCore, cxDateUtils,
  ppDesignLayer;

type
  TformRepModelo = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dsrEmpresas: TDataSource;
    dlcEmpresa: TcxLookupComboBox;
    cdsRelatorio: TClientDataSet;
    ppDBPipeline: TppDBPipeline;
    dsrRelatorio: TDataSource;
    gbData: TGroupBox;
    lbDataIni: TLabel;
    dedDataIni: TcxDateEdit;
    lbDataFim: TLabel;
    dedDataFim: TcxDateEdit;
    dedTipoData: TcxComboBox;
    lbTipoData: TLabel;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    lbTitulo: TppLabel;
    lbCopyright: TppLabel;
    lbLPagina: TppLabel;
    lbLDataImp: TppLabel;
    lbLUsuario: TppLabel;
    lbPagina: TppSystemVariable;
    lbDataImp: TppSystemVariable;
    lbUsuario: TppLabel;
    lbDescricao: TppMemo;
    linCab: TppLine;
    linFoot: TppLine;
    ckEmpresa: TcxCheckBox;
    Image1: TImage;
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppReportPreviewFormCreate(Sender: TObject);
    procedure dedTipoDataPropertiesCloseUp(Sender: TObject);
    procedure ckEmpresaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    WhereArgDynamic,
    OrderByArg,
    tmpSQL,
    tmpSQLGroup,
    descricao: string;
    procedure SetTitulo(s: string);
    procedure SetDescricao(s: string);
    function GetDescricao: string;
    procedure SetTimeInterval(s: string; var d1, d2: TDateTime);
    procedure SetWhereDynamic(st, stmsg: string);
    procedure SetOrderBy(s: string);
  end;

var
  formRepModelo: TformRepModelo;

implementation

uses principal;

{$R *.dfm}

procedure TformRepModelo.SetTitulo(s: string);
begin
  lbTitulo.Caption := s;
end;

procedure TformRepModelo.SetDescricao(s: string);
begin
  descricao := s;
end;

function TformRepModelo.GetDescricao: string;
begin
  Result := descricao;
end;

procedure TformRepModelo.SetWhereDynamic(st, stmsg: string);
begin
  WhereArgDynamic := st;
  if WhereArgDynamic > '' then
    SetDescricao(stmsg);
end;

procedure TformRepModelo.SetOrderBy(s: string);
begin
  if s > '' then
    OrderByArg := 'ORDER BY ' + s
  else
    OrderByArg := '';
end;

procedure TformRepModelo.SetTimeInterval(s: string; var d1, d2: TDateTime);
var
  tempo: string;
  agora: TDateTime;
begin
  tempo := lowercase(trim(s));
  agora := formPrincipal.GetTime;

  { ano passado }
  if tempo = 'ano passado' then
   begin
     { inicio deste ano }
     d1 := StartOfTheYear(agora);
     { dia do ano passado }
     d1 := d1 - 1;
     { inicio do ano passado }
     d1 := StartOfTheYear(d1);
     { final do ano passado }
     d2 := EndOfTheYear(d1);
   end else

  { mês passado }
  if tempo = 'mês passado' then
   begin
     { inicio deste mes }
     d1 := StartOfTheMonth(agora);
     { dia do mes passado }
     d1 := d1 - 1;
     { inicio do mes passado }
     d1 := StartOfTheMonth(d1);
     { final do mes passado }
     d2 := EndOfTheMonth(d1);
   end else

  { semana passada }
  if tempo = 'semana passada' then
   begin
     { inicio desta semana }
     d1 := StartOfTheWeek(agora);
     { dia da semana passada }
     d1 := d1 - 1;
     { inicio da semana passada }
     d1 := StartOfTheWeek(d1);
     { final da semana passada }
     d2 := EndOfTheWeek(d1);
   end else

  { ontem }
  if tempo = 'ontem' then
   begin
     d1 := agora - 1;
     d2 := d1;
   end else

  { hoje }
  if tempo = 'hoje' then
   begin
     d1 := agora;
     d2 := d1;
   end else

  { semana atual }
  if tempo = 'semana atual' then
   begin
     d1 := StartOfTheWeek(agora);
     d2 := EndOfTheWeek(agora);
   end else

  { mês atual }
  if tempo = 'mês atual' then
   begin
     d1 := StartOfTheMonth(agora);
     d2 := EndOfTheMonth(agora);
   end else

  { ano atual }
  if tempo = 'ano atual' then
   begin
     d1 := StartOfTheYear(agora);
     d2 := EndOfTheYear(agora);
   end else

  { amanhã }
  if tempo = 'amanhã' then
   begin
     d1 := agora + 1;
     d2 := d1;
   end else

  { próxima semana }
  if tempo = 'próxima semana' then
   begin
     { fim desta semana }
     d1 := EndOfTheWeek(agora);
     { dia da proxima semana }
     d1 := d1 + 1;
     { inicio da proxima semana }
     d1 := StartOfTheWeek(d1);
     { final da proxima semana }
     d2 := EndOfTheWeek(d1);
   end else

  { próximo mês }
  if tempo = 'próximo mês' then
   begin
     { fim deste mes }
     d1 := EndOfTheMonth(agora);
     { dia do proximo mes }
     d1 := d1 + 1;
     { inicio da proxima mes }
     d1 := StartOfTheMonth(d1);
     { final da proxima mes }
     d2 := EndOfTheMonth(d1);
   end else

  { próximo ano }
  if tempo = 'próximo ano' then
   begin
     { fim deste ano }
     d1 := EndOfTheYear(agora);
     { dia do proximo ano }
     d1 := d1 + 1;
     { inicio do proximo ano }
     d1 := StartOfTheYear(d1);
     { final da proximo ano }
     d2 := EndOfTheYear(d1);
   end;

end;

procedure TformRepModelo.edtSenhaEnter(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxComboBox then
    begin
     TcxComboBox(Sender).Style.Color := clInfoBk;
     TcxComboBox(Sender).Style.Font.Style := [fsBold];
     TcxComboBox(Sender).Style.Shadow := True;
    end;

   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clInfoBk;
     TcxLookupComboBox(Sender).Style.Font.Style := [fsBold];
     TcxLookupComboBox(Sender).Style.Shadow := True;
    end;

   if Sender is TcxTextEdit then
    begin
     TcxTextEdit(Sender).Style.Color := clInfoBk;
     TcxTextEdit(Sender).Style.Font.Style := [fsBold];
     TcxTextEdit(Sender).Style.Shadow := True;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
        (Components[i] as TLabel).Font.Style := [fsBold, fsUnderline]
      else
        (Components[i] as TLabel).Font.Style := [fsBold];
end;

procedure TformRepModelo.edtSenhaExit(Sender: TObject);
var
  i: word;
begin
   if Sender is TcxComboBox then
    begin
     TcxComboBox(Sender).Style.Color := clWindow;
     TcxComboBox(Sender).Style.Font.Style := [];
     TcxComboBox(Sender).Style.Shadow := False;
    end;

   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clWindow;
     TcxLookupComboBox(Sender).Style.Font.Style := [];
     TcxLookupComboBox(Sender).Style.Shadow := False;
    end;

   if Sender is TcxTextEdit then
    begin
     TcxTextEdit(Sender).Style.Color := clWindow;
     TcxTextEdit(Sender).Style.Font.Style := [];
     TcxTextEdit(Sender).Style.Shadow := False;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [];
end;

procedure TformRepModelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: word;
begin
   if Sender is TcxLookupComboBox then
    begin
     TcxLookupComboBox(Sender).Style.Color := clWindow;
     TcxLookupComboBox(Sender).Style.Font.Style := [];
     TcxLookupComboBox(Sender).Style.Shadow := False;
    end;

   if Sender is TcxTextEdit then
    begin
     TcxTextEdit(Sender).Style.Color := clWindow;
     TcxTextEdit(Sender).Style.Font.Style := [];
     TcxTextEdit(Sender).Style.Shadow := False;
    end;

   { coloco o label em negrito }
   for i := 0 to ComponentCount -1 do
    if Components[i] is TLabel then
     if (Components[i] as TLabel).FocusControl = Sender then
      if (Components[i] as TLabel).Font.Color = clMaroon then
       (Components[i] as TLabel).Font.Style := [fsUnderline]
      else
       (Components[i] as TLabel).Font.Style := [];
end;

procedure TformRepModelo.FormCreate(Sender: TObject);
var
  i: word;
begin

  if dlcEmpresa.Visible then
   begin
     ckEmpresa.Checked := True;
     dlcEmpresa.Enabled := True;
   end else
     ckEmpresa.Visible := False;

  descricao := '';

  { separo o SELECT do GROUP BY }
  tmpSQL := cdsRelatorio.CommandText;
  i := pos('GROUP', uppercase(tmpSQL));
  if i > 0 then
   begin
     tmpSQLGroup := copy(tmpSQL, i, (length(tmpSQL) - i) + 1);
     tmpSQL := copy(tmpSQL, 1, i - 1);
   end else tmpSQLGroup := '';

  { preparo as empresas }
  if dlcEmpresa.Visible then
     if not formPrincipal.cdsEmpresas.active then
      begin
        try
          formPrincipal.ShowMsg('Abrindo empresas...');
          formPrincipal.cdsEmpresas.open;
        except
          on exception do
            formPrincipal.HideMsg;
        end;
        formPrincipal.HideMsg;
      end;

end;

procedure TformRepModelo.FormDestroy(Sender: TObject);
var
  i: word;
begin
  { desconecto os clientdatasets }
  for i := 0 to ComponentCount - 1 do
   if Components[i] is TClientDataset then
    if TClientDataset(Components[i]).Active then
     begin
       TClientDataset(Components[i]).Close;
       TClientDataset(Components[i]).DataRequest(99);
     end;
end;

procedure TformRepModelo.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TformRepModelo.cxButton1Click(Sender: TObject);
var
  stSelect: string;
begin

  { fecho se estiver aberto }
  if cdsRelatorio.Active then
    cdsRelatorio.Close;

  { expressão do select customizada }
  if WhereArgDynamic > '' then
   begin
     if pos('WHERE', tmpSQL) > 0 then
       stSelect := tmpSQL + ' AND ' + WhereArgDynamic
     else
       stSelect := tmpSQL + ' WHERE ' + WhereArgDynamic;
   end else
     stSelect := tmpSQL;

  { adiciono o agrupamento }
  if tmpSQLGroup > '' then
    stSelect := stSelect + ' ' + tmpSQLGroup;

  { expressão final, com ordenação }
  cdsRelatorio.CommandText :=
    stSelect + ' ' + OrderByArg;

  { descrição }
  lbDescricao.Text := descricao;

  { teste }
//  ShowMessage(cdsRelatorio.CommandText);

  try
    formPrincipal.ShowMsg('Gerando relatório...');
    cdsRelatorio.Open;
    lbUsuario.Caption := formPrincipal.usuario;
    lbCopyright.Caption := Application.Title +
      ' © ' + IntToStr(YearOf(now)) + ' Taligent | www.taligent.com.br/enterprise';
    ppReport.Print;
  except
    formPrincipal.HideMsg;
    raise;
  end;
end;

procedure TformRepModelo.FormShow(Sender: TObject);
begin

  { data padrao }
  if gbData.Visible then
   begin
     dedTipoData.EditValue := 'Hoje';
     dedTipoDataPropertiesCloseUp(Sender);
     if dedTipoData.CanFocus then
       dedTipoData.SetFocus;
   end;

  { localizo a empresa atual }
  if dlcEmpresa.Visible then
   begin
     formPrincipal.cdsEmpresas.Locate('CODIGO',
       formPrincipal.codempresa, []);
     dlcEmpresa.EditValue :=
       formPrincipal.cdsEmpresas.FieldByName('CODIGO').AsInteger;
   end;

  formPrincipal.HideMsg;
end;

procedure TformRepModelo.ppReportPreviewFormCreate(Sender: TObject);
begin
  formPrincipal.HideMsg;
end;

procedure TformRepModelo.dedTipoDataPropertiesCloseUp(Sender: TObject);
var
  inicio, final: TDateTime;
begin
  SetTimeInterval(dedTipoData.Text, inicio, final);
  dedDataIni.Date := inicio;
  dedDataFim.Date := final;
end;

procedure TformRepModelo.ckEmpresaClick(Sender: TObject);
begin
  dlcEmpresa.Enabled :=
    ckEmpresa.Checked;
  if dlcEmpresa.Enabled and dlcEmpresa.CanFocus and Self.Visible then
    dlcEmpresa.SetFocus;
end;

end.
