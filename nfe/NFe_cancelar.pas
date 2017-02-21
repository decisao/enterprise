unit NFe_cancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, dxGDIPlusClasses, DB, DBClient, IniFiles, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinOffice2010Black, dxSkinDevExpressStyle;

type
  TformNFeCancelar = class(TForm)
    pnlDados: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cdsNFEmissao: TClientDataSet;
    tmrRetorno: TTimer;
    Memo1: TMemo;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure tmrRetornoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codMovimento: longint;
    nf_numero: longint;
    retorno,
    chave: string;
  end;

var
  formNFeCancelar: TformNFeCancelar;

implementation

uses principal;

{$R *.dfm}

procedure TformNFeCancelar.cxButton1Click(Sender: TObject);
var
  arquivo: TextFile;
  i: integer;
  motivo: string;
begin

  { inicio da geracao }
  Label1.Caption := Label1.Caption + ' [ok]';
  cxButton1.Enabled := False;
  Application.ProcessMessages;

  { pego o número da nota }
  if nf_numero > 0 then
   begin
     Label2.Caption := Format('NFe #%d [ok]', [nf_numero]);
     Label2.Font.Color := clBlack;
     Application.ProcessMessages;
   end else
   begin
     Label2.Caption := Label2.Caption + ' [erro]';
     Label2.Font.Color := clBlack;
     Application.ProcessMessages;
     exit;
   end;

  { desabilito o botão cancelar }
  cxButton2.Enabled := False;
  Application.ProcessMessages;

  { nota fiscal eletronica }
  AssignFile(arquivo, 'C:\ACBrNFeMonitor\ENTNFE.TXT');
  ReWrite(arquivo);
  try
    motivo := 'Emissao incorreta de NFe';
    writeln(arquivo, 'NFE.CancelarNFe("' + chave + '", "' + motivo + '")');

    { encerro o arquivo }
    CloseFile(arquivo);

    { arquivo gerado }
    Label3.Caption := Label3.Caption + ' [ok]';
    Label3.Font.Color := clBlack;
    Application.ProcessMessages;

    { aguardar retorno }
    tmrRetorno.Enabled := True;

  except

    on exception do
     begin

       { encerro o arquivo }
       CloseFile(arquivo);
       try
         DeleteFile('C:\ACBrNFeMonitor\ENTNFE.TXT');
       except
       end;

       { arquivo não foi gerado }
       Label3.Caption := Label3.Caption + ' [erro]';
       Label3.Font.Color := clBlack;
       Application.ProcessMessages;

     end;

  end;


end;

procedure TformNFeCancelar.cxButton2Click(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TformNFeCancelar.tmrRetornoTimer(Sender: TObject);
var
  RetornoIni: TIniFile;
  secao,
  motivo: string;
begin
  { contagem de tempo }
  tmrRetorno.Tag := tmrRetorno.Tag + 1;
  if tmrRetorno.Tag > 60 then
   begin
     tmrRetorno.Enabled := False;
     { erro }
     Label4.Caption := 'Retorno [erro]';
     Label4.Font.Color := clBlack;
     cxButton2.Enabled := True;
     Application.ProcessMessages;
     formPrincipal.MsgError('Tempo de resposta esgotado.', 'NFe');
     exit;
   end;

  { retorno }
  if FileExists('C:\ACBrNFeMonitor\sainfe.txt') then
   begin
     tmrRetorno.Enabled := False;

     { analise do retorno }
     RetornoIni := TIniFile.Create('C:\ACBrNFeMonitor\sainfe.txt');
     secao := 'CANCELAMENTO';
     motivo := RetornoIni.ReadString(secao, 'XMotivo', 'Consulte o LOG do ACBrNFeMonitor');
     RetornoIni.Free;

     { carrego o retorno }
//     Memo1.Lines.LoadFromFile('C:\ACBrNFeMonitor\sainfe.txt');
     DeleteFile('C:\ACBrNFeMonitor\sainfe.txt');
//     retorno := Memo1.Text;

     { erro ou sucesso }
     if (pos('homologado', motivo)>0) or
        (pos('NF-e ja cancelada', motivo)>0) or
        (pos('NF-e nao consta na base', motivo)>0) or
        (pos('Evento registrado e vinculado', motivo)>0) then
      begin
        { bem sucedido }
        Label4.Caption := 'Retorno [ok]';
        Label4.Font.Color := clBlack;
        Application.ProcessMessages;

        { gravar resultado na base }
        cdsNFEMissao.Params[0].AsInteger := codMovimento;
        cdsNFEMissao.Params[1].AsInteger := 0;
        cdsNFEMissao.Params[2].AsString := 'XNE';
        cdsNFEMissao.Params[3].Value := formPrincipal.GetTime;
        cdsNFEMissao.Params[4].Value := formPrincipal.GetTime;
        cdsNFEMissao.Params[5].AsString := '';
        cdsNFEMissao.execute;

        { final }
        Label5.Caption := 'Cancelado!';
        Label5.Font.Color := clBlack;
        cxButton1.Visible := False;
        cxButton2.Enabled := True;
        Application.ProcessMessages;

        if (pos('NF-e ja cancelada', motivo)>0) or
           (pos('NF-e nao consta na base', motivo)>0) then
          formPrincipal.MsgError('AVISO:'+#13#10#13#10+motivo, 'NFe');

      end else
      begin
        { erro }
        Label4.Caption := 'Retorno [erro]';
        Label4.Font.Color := clBlack;
        cxButton2.Enabled := True;
        Application.ProcessMessages;
        formPrincipal.MsgError('ERRO'+#13#10#13#10+motivo, 'NFe');
      end;
   end;
end;

end.
