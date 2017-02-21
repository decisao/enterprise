unit printmov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, DB,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Menus, cxGraphics, cxCalendar, cxLookAndFeels,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinOffice2010Blue, dxGDIPlusClasses;

type
  TformPrintmov = class(TForm)
    cdsCabNota: TClientDataSet;
    cdsCabNotaNUMIMPNOTA: TIntegerField;
    cdsCabNotaDESCRICAO: TStringField;
    cdsCabNotaLINHA18: TStringField;
    cdsCabNotaDUP_LINHAINI: TSmallintField;
    cdsCabNotaDUP_COLUNAS: TSmallintField;
    cdsCabNotaDUP_LINHAS: TSmallintField;
    cdsCabNotaDUP_TAMANHOCOL: TSmallintField;
    cdsCabNotaDUP_COLUNAINI: TSmallintField;
    cdsCabNotaPRO_LINHAINI: TSmallintField;
    cdsCabNotaPRO_LINHAS: TSmallintField;
    cdsCabNotaSER_LINHAINI: TSmallintField;
    cdsCabNotaSER_LINHAS: TSmallintField;
    cdsCabNotaALTURA: TSmallintField;
    cdsCabNotaEFEITOBASE: TStringField;
    cdsNotaCorpo: TClientDataSet;
    cdsImpNota: TClientDataSet;
    cdsImpNotaLINHA: TSmallintField;
    cdsImpNotaCOLUNA: TSmallintField;
    cdsImpNotaCAMPO: TStringField;
    cdsImpNotaTAMANHO: TSmallintField;
    cdsImpNotaALTURA: TSmallintField;
    cdsImpNotaMASCARA: TStringField;
    cdsImpNotaALINHAMENTO: TStringField;
    cdsImpNotaEFEITO: TStringField;
    cdsImpNotaTIPO: TStringField;
    cdsImpNotaPROXIMO: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    btnImpressao: TcxButton;
    Panel3: TPanel;
    lbCODIGO: TLabel;
    Label1: TLabel;
    lbCAMINHO: TLabel;
    Bevel1: TBevel;
    cdsNFEmissao: TClientDataSet;
    dedCopias: TcxComboBox;
    lbCopias: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure btnImpressaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ImprimeNota;
  public
    { Public declarations }
    codMovimento,
    numImpMov: longint;
    impressora: string;
    nf: boolean;
    nf_numero: longint;
  end;

var
  formPrintmov: TformPrintmov;

implementation

{$R *.dfm}

uses dosprint, principal;

procedure AplicaMascara(StrMascara: string; var CampoUnico: TField);
begin
 if Trim(StrMascara) > '' then
  case CampoUnico.DataType of
    ftSmallInt,
      ftWord,
      ftFloat,
      ftCurrency,
      ftBCD,
      ftFMTBcd,
      ftInteger: (CampoUnico as TNumericField).DisplayFormat := StrMascara;
    ftDateTime,
    ftDate,
    ftTime: (CampoUnico as TDateTimeField).DisplayFormat := StrMascara;
    ftTimestamp: (CampoUnico as TSQLTimeStampField).DisplayFormat := StrMascara;
  end;
end;

procedure AplicaEfeito(StrEfeito: string; var EfeitoUnico: string);
var
  n: integer;
begin
  for n := 1 to length(StrEfeito) do
    case StrEfeito[n] of
      'N': EfeitoUnico := EfeitoUnico + '1'; // Negrito
      'I': EfeitoUnico := EfeitoUnico + '2'; // Itálico
      'C': EfeitoUnico := EfeitoUnico + '4'; // Comprimido
      'S': EfeitoUnico := EfeitoUnico + '3'; // Sublinhado
      'E': EfeitoUnico := EfeitoUnico + '5'; // Expandido
      'X': EfeitoUnico := EfeitoUnico + '6'; // SUPERCOMP
    end;
end;

function AplicaAlinhamento(StrTexto, StrAlinha: string; inTamanho: integer): string;
begin
  { removo os espaços desnecessários }
  StrTexto := trim(StrTexto);

  { alinho adicionando espaços conforme a necessidade }
  if StrAlinha = 'E' then
    begin
      if length(StrTexto) > inTamanho then
        Result := Copy(StrTexto, 1, inTamanho)
      else
        begin
          while length(StrTexto) < inTamanho do
            StrTexto := StrTexto + ' ';
          Result := StrTexto;
        end;
    end
  else if StrAlinha = 'D' then
    begin
      if length(StrTexto) > inTamanho then
        Result := Copy(StrTexto, length(StrTexto) - inTamanho + 1, inTamanho)
      else
        begin
          while length(StrTexto) < inTamanho do
            StrTexto := ' ' + StrTexto;
          Result := StrTexto;
        end;
    end
  else if StrAlinha = 'C' then
    begin
      if length(StrTexto) > inTamanho then
        Result := Copy(StrTexto, (length(StrTexto) - inTamanho) div 2, inTamanho)
      else
        begin
          while length(StrTexto) < inTamanho do
            begin
              StrTexto := ' ' + StrTexto;
              if length(StrTexto) < inTamanho then
                StrTexto := StrTexto + ' ';
            end;
          Result := StrTexto;
        end;
    end;
end;

procedure QuebraCampo(var todo, parte: string; tamanho: integer);
var
  n: integer;
begin
  if length(todo) > tamanho then
    begin

      // procuro um espaco, ou "-"
      n := tamanho + 1;
      repeat
        dec(n);
      until (todo[n] in [' ', '-']) or (n = 1);

      // cheguei no inicio?
      if n = 1 then
        begin

          // corto no tamanho justo
          parte := copy(todo, 1, tamanho);
          todo := copy(todo, tamanho + 1, length(todo) - tamanho + 1);

        end
      else
        begin

          // vou aproveitar um caracter de separacao;
          if todo[n] = ' ' then
            begin

              // corto e suprimo o espaço
              parte := copy(todo, 1, n - 1);
              todo := copy(todo, n + 1, length(todo) - n + 1);

            end
          else
            begin

              // corto usando o separador
              parte := copy(todo, 1, n);
              todo := copy(todo, n + 1, length(todo) - n + 1);

            end;
        end;

    end
  else
    begin
      parte := todo;
      todo := '';
    end;
end;

function isLiteral(StrTexto: string): boolean;
begin
  Result := StrTexto[1] = '"';
end;

function FormataLiteral(StrTexto: string): string;
var
  StrHnd: string;
  n: integer;
begin
  StrHnd := StrTexto;
  // apago a primeira ocorrencia de aspas
  Delete(StrHnd, 1, 1);
  // procuro a ultima ocorrencia e apago, se houver
  n := succ(length(StrHnd));
  repeat
    dec(n);
  until (StrHnd[n] = '"') or (n = 1);
  Result := Copy(StrHnd, 1, pred(n));
end;

procedure TformPrintmov.ImprimeNota;
var
  Campo: TField;
  CampoStr, ParteStr, IniComm: string;
  Efeito, estilobase: string;
  n, altura, coluna_dup: integer;
type
  Str01 = string[1];
  TipoReg = record
    tipo: Str01;
    callproc: string;
    SQL: string;
  end;
const
  Tipos: array[1..4] of TipoReg =
  ((tipo: 'C';
    callproc: 'REL_NOTACORPO';
    sql:
    'SELECT * FROM REL_NOTACORPO(:CODMOVIMENTO)'),
    (tipo: 'D';
    callproc: 'REL_NOTADUP';
    sql:
    'SELECT * FROM REL_NOTADUP(:CODMOVIMENTO)'),
    (tipo: 'P';
    callproc: 'REL_NOTAPRO';
    sql:
    'SELECT * FROM REL_NOTAPRO(:CODMOVIMENTO)'),
    (tipo: 'S';
    callproc: 'REL_NOTASER';
    sql:
    'SELECT * FROM REL_NOTASER(:CODMOVIMENTO)'));
begin

  with cdsCabNota do
   begin
     if active then close;
     params.paramByname('NUMIMPMOV').AsInteger := numImpmov;
     open;
   end;

  // reset na impressora
  IniComm := #27#64;
  if cdsCabNota.fieldByName('LINHA18').AsString = 'S' then
    IniComm := IniComm + #27#48
  else
    IniComm := IniComm + #27#50;
  IniComm := IniComm + #27#67 +
    Chr(cdsCabNota.fieldByName('ALTURA').AsInteger);

  // estilo base
  estilobase := '';
  AplicaEfeito(
     cdsCabNota.fieldByName('EFEITOBASE').AsString,
     estilobase
  );

  // Inicializo minha impressora DOS
  DOSPrintOpen(
      Trim(impressora),
      IniComm, estilobase);

  for n := 1 to 4 do
    begin

      // desvio da coluna das duplicatas
      if n = 2 then
        coluna_dup := cdsCabNota.fieldByName('DUP_COLUNAINI').AsInteger
      else
        coluna_dup := 0;

      // defino a consulta que traz os parametros
      if cdsImpNota.Active then
        cdsImpNota.Close;
      cdsImpNota.FetchParams;
      cdsImpNota.Params.paramByName('TIPO').AsString := Tipos[n].tipo;
      cdsImpNota.Params.paramByName('NUMIMPNOTA').AsInteger := numImpmov;
      cdsImpNota.Open;

      // defino a consulta que traz os dados
      if cdsNotaCorpo.Active then
        cdsNotaCorpo.Close;
      cdsNotaCorpo.CommandText := StringReplace(Tipos[n].sql, ':CODMOVIMENTO', IntToStr(codMovimento), [rfReplaceAll, rfIgnoreCase]);
      cdsNotaCorpo.Open;

      // laço dos campos
      while not (cdsImpNota.EOF or cdsNotaCorpo.EOF) do
        begin

          // Verifico se eh literal
          if isLiteral(
            Trim(cdsImpNota.fieldByName('CAMPO').AsString)
            ) then
            begin

              // Formato o campo final como Literal
              CampoStr := FormataLiteral(
                Trim(cdsImpNota.fieldByName('CAMPO').AsString)
                );

            end
          else
            begin

              // separo o campo a ser impresso
              Campo := cdsNotaCorpo.fieldByName(
                Trim(cdsImpNota.fieldByName('CAMPO').AsString)
                );

              // defino a máscara
              AplicaMascara(
                cdsImpNota.fieldByName('MASCARA').AsString,
                Campo
                );

              // Campo em formato final
              CampoStr := Campo.DisplayText;

            end;

          // defino os efeitos
          Efeito := '';
          AplicaEfeito(
            cdsImpNota.fieldByName('EFEITO').AsString,
            Efeito
            );

          // se for multilinhas
          for altura := 1 to cdsImpNota.fieldByName('ALTURA').AsInteger do
            begin

              // quebra o campo
              QuebraCampo(CampoStr, ParteStr,
                cdsImpNota.fieldByName('TAMANHO').AsInteger);

              // defino o alinhamento
              ParteStr := AplicaAlinhamento(
                ParteStr,
                cdsImpNota.fieldByName('ALINHAMENTO').AsString,
                cdsImpNota.fieldByName('TAMANHO').AsInteger
                );

              // Imprimo o campo no local designado se for preciso
              if (altura = 1) or ((altura > 1) and (trim(ParteStr) > '')) then
               begin
                DOSPrintAdd(
                  cdsImpNota.fieldByName('COLUNA').AsInteger +
                    coluna_dup,
                  cdsImpNota.fieldByName('LINHA').AsInteger +
                    altura - 1,
                  ParteStr,
                  Efeito
                  );
               end;

            end;

          // proximo conjunto de dados
          if cdsImpNota.fieldByName('PROXIMO').AsString = 'S' then
            cdsNotaCorpo.Next;

          // proximo campo
          cdsImpNota.Next;
        end;

    end;
  try
    if nf then
      DOSPrintSendPage(1)
    else
      DOSPrintSendPage(dedCopias.ItemIndex + 1);
    DOSPrintClose;
  except
    try
      DOSPrintClose;
    except
    end;
  end;
end;


procedure TformPrintmov.btnImpressaoClick(Sender: TObject);
begin
  try
    formPrincipal.ShowMsg('Imprimindo...');

    if nf then
      with cdsNFEmissao do
       begin
         if active then close;
         fetchParams;
         Params[0].AsInteger := codMovimento;
         Params[1].AsInteger := nf_numero;
         Params[2].AsString := 'NF1';
         Params[3].Value := cxDateEdit1.Date;
         Params[4].Value := cxDateEdit2.Date;
         execute;
         RemoteServer.Close;
       end;

    ImprimeNota;
    cdsImpNota.RemoteServer.Close;
    formPrincipal.HideMsg;
  except
    on e: exception do
     begin
       cdsImpNota.RemoteServer.Close;
       formPrincipal.CONN_DBError(
         Self.Name,
         intToStr(codMovimento),
         e.message);
       formPrincipal.HideMsg;
     end
  end;
  modalresult := mrOK;
end;

procedure TformPrintmov.FormShow(Sender: TObject);
begin
  lbCODIGO.Caption := IntToStr(codMovimento);
  lbCAMINHO.Caption := impressora;

  if nf then
   begin
     Label2.Visible := True;
     Label3.Visible := True;
     cxDateEdit1.Visible := True;
     cxDateEdit2.Visible := True;
     cxDateEdit1.Date := formPrincipal.GetTime;
     cxDateEdit2.Date := cxDateEdit1.Date;
     formPrincipal.SocketConnection.Open;
     nf_numero := formPrincipal.SocketConnection.AppServer.GetID('NOTAFISCAL');
     formPrincipal.SocketConnection.Close;
     lbCODIGO.Caption := lbCODIGO.Caption + '/NF ' +
       inttostr(nf_numero);
     btnImpressao.Enabled := True;
   end else
   begin
     btnImpressao.Enabled := True;
     lbCopias.Visible := True;
     dedCopias.Visible := True;
     dedCopias.ItemIndex := 0;
   end;
end;

procedure TformPrintmov.cxButton1Click(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TformPrintmov.FormCreate(Sender: TObject);
begin

  nf := false;

end;

end.
