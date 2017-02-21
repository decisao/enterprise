unit osged;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_CAD, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxmdaset, Menus, ActnList, dxBar, dxPSCore, dxPScxCommon,
  ExtCtrls, DBClient, dxBarExtItems, cxClasses, dxStatusBar, DBCtrls,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCalendar, StdCtrls, Mask, cxCheckBox,
  ShellApi, cxContainer, cxTextEdit, cxDBEdit, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxPCdxBarPopupMenu, dxPScxGridLnk, dxPScxGridLayoutViewLnk;

type
  TformOSGed = class(TformCadModelo)
    cdsDadosCODMOVIMENTO: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosEXTENSAO: TStringField;
    cdsDadosTAMANHO: TFMTBCDField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosDATA: TSQLTimeStampField;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1EXTENSAO: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnUpload: TdxBarLargeButton;
    btnDownload: TdxBarLargeButton;
    btnAbrir: TdxBarLargeButton;
    DownloadDialog: TSaveDialog;
    UploadDialog: TOpenDialog;
    cdsDadosARQUIVO: TBlobField;
    cdsDadosSEL: TStringField;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    procedure btnUploadClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject); override;
    procedure btnModificarClick(Sender: TObject); override;
    procedure cdsDadosTAMANHOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    function FileSize(fileName : wideString) : Int64;
  public
    { Public declarations }
    codmovimento: longint;
  end;

var
  formOSGed: TformOSGed;

implementation

uses principal, funcoes;

{$R *.dfm}

function TformOSGed.FileSize(fileName : wideString) : Int64;
var
  sr : TSearchRec;
begin
  if FindFirst(fileName, faAnyFile, sr ) = 0 then
     result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) +  Int64(sr.FindData.nFileSizeLow)
  else
     result := -1;
  FindClose(sr) ;
end;

procedure TformOSGed.btnAbrirClick(Sender: TObject);
var
  blob: TStream;
  nome: string;
begin
  inherited;
  formPrincipal.ShowMsg('Abrindo arquivo...');
  nome := funcoes.GetTempDir + '\' + cdsDadosNOME.AsString;
  cdsDados.FetchBlobs;
  blob := cdsDados.CreateBlobStream(cdsDados.FieldByName('ARQUIVO'), bmRead);
  try
    blob.Seek(0, soFromBeginning);
    with TFileStream.Create(nome, fmCreate) do
     try
       CopyFrom(blob, blob.Size)
     finally
       Free
     end;
  finally
    blob.Free;
    formPrincipal.HideMsg;
  end;
  ShellExecute(Handle, 'open', PChar(nome), nil, nil, SW_SHOWNORMAL);

end;

procedure TformOSGed.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  btnUpload.Visible   := ivAlways;
  btnDownload.Visible := ivNever;
  btnAbrir.Visible    := ivNever;
end;

procedure TformOSGed.btnDownloadClick(Sender: TObject);
var
  blob: TStream;
begin
  inherited;
  with DownloadDialog do
   begin
     FileName := cdsDadosNOME.AsString;
     DefaultExt := ansilowercase(cdsDadosEXTENSAO.AsString);
     if execute then
      begin
        formPrincipal.ShowMsg('Salvando arquivo...');
        cdsDados.FetchBlobs;
        blob := cdsDados.CreateBlobStream(cdsDados.FieldByName('ARQUIVO'), bmRead);
        try
          blob.Seek(0, soFromBeginning);
          with TFileStream.Create(FileName, fmCreate) do
          try
            CopyFrom(blob, blob.Size)
          finally
            Free
          end;
        finally
          blob.Free;
          formPrincipal.HideMsg;
        end;

      end;
   end;
end;

procedure TformOSGed.btnModificarClick(Sender: TObject);
begin
  inherited;
  btnUpload.Visible   := ivNever;
  btnDownload.Visible := ivAlways;
  btnAbrir.Visible    := ivAlways;
end;

procedure TformOSGed.btnUploadClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
begin
  inherited;
  with UploadDialog do
   begin
     if execute then
      begin
        cdsDadosCODMOVIMENTO.AsInteger := codmovimento;
        cdsDadosNOME.AsString := ExtractFileName(FileName);
        cdsDadosEXTENSAO.AsString := copy(ansiuppercase(ExtractFileExt(FileName)), 2, 3);
        cdsDadosTAMANHO.AsFloat := FileSize(FileName) div 1024;
        cdsDadosDATA.AsDateTime := formPrincipal.GetTime;

        { código para salvar arquivo no campo blob }
        formPrincipal.ShowMsg('Abrindo arquivo...');
        blob := cdsDados.CreateBlobStream(cdsDados.FieldByName('ARQUIVO'), bmWrite);
        try
          blob.Seek(0, soFromBeginning);
          fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
          try
            blob.CopyFrom(fs, fs.Size)
          finally
            fs.Free
          end;
        finally
          blob.Free;
          formPrincipal.HideMsg;
        end;

      end;
   end;
end;

procedure TformOSGed.cdsDadosTAMANHOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString + ' KB';
  DisplayText := True;
end;

procedure TformOSGed.dxBarButton6Click(Sender: TObject);
begin
  inherited;
  btnAbrirClick(Sender);
end;

end.
