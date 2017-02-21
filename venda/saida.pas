unit saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_MOV, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox,
  cxCalendar, DBClient, ActnList, dxBarExtItems, dxBar,
  dxStatusBar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  Grids, DBGrids, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, ExtCtrls, cxPC, Provider,
  dxmdaset, cxCheckBox, DBCtrls, cxMemo, Menus, cxBarEditItem, dxSkinsCore,
  dxSkinOffice2007Silver, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinOffice2010Silver, dxSkinOffice2010Blue, cxPCdxBarPopupMenu, cxNavigator;

type
  TformSaida = class(TformMODELO_MOV)
    procedure actProdutoExecute(Sender: TObject);
    procedure actFaturarExecute(Sender: TObject);
    procedure actServicoExecute(Sender: TObject);
    procedure actSerieExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSaida: TformSaida;

implementation

uses saida_produtos, ativacao, servicos, principal, selpreco;

{$R *.dfm}

procedure TformSaida.actProdutoExecute(Sender: TObject);
var
  campo: string;
  icms: currency;
  n: word;
begin
  inherited;

  try
    formSaidaProdutos := TformSaidaProdutos.Create(Self);
    formSaidaProdutos.Tag := formPrincipal.actProdutos.Tag;
    formSaidaProdutos.Transferir := True;
    formSaidaProdutos.SetWhereDynamic(
      '',
      'Produtos em Estoque');
    if formSaidaProdutos.ShowModal = mrOk then
     if not formSaidaProdutos.cdsDados.IsEmpty then
      begin

        { seleção do preço de venda }
        if (formPrincipal.cdsPerfil.FieldByName('PRECO_CLIENTE').AsString = 'S') and
           (formPrincipal.cdsUsuarios.FieldByName('PRECO_CLIENTE').AsString = 'S') then
         begin
           try
             formSelPreco := TformSelPreco.Create(Self);
             if formPrincipal.cdsUsuarios.FieldByName('PRECO_45').AsString = 'N' then
              begin
                formSelPreco.rgPreco.Controls[3].Visible := False;
                formSelPreco.rgPreco.Controls[4].Visible := False;
              end;
             if formSelPreco.ShowModal = mrOk then
              begin
                if formSelPreco.rgPreco.ItemIndex = 0 then
                  campo := 'PRECOVENDA' else
                if formSelPreco.rgPreco.ItemIndex = 1 then
                  campo := 'PRECOVENDA2' else
                if formSelPreco.rgPreco.ItemIndex = 2 then
                  campo := 'PRECOVENDA3' else
                if formSelPreco.rgPreco.ItemIndex = 3 then
                  campo := 'PRECOVENDA4' else
                if formSelPreco.rgPreco.ItemIndex = 4 then
                  campo := 'PRECOVENDA5' else
                  campo := 'PRECOVENDA';
              end;
           finally
             formSelPreco.Release;
             formSelPreco := nil;
           end;
         end else
           campo := 'PRECOVENDA';

        n := 0;
        formSaidaProdutos.cdsDados.disablecontrols;
        formSaidaProdutos.cdsDados.First;
        while (not formSaidaProdutos.cdsDados.Eof) and (n < formSaidaProdutos.no_sel) do
         begin

           if formSaidaProdutos.cdsDadosSEL.AsString = 'S' then
            begin

              { contador }
              inc(n);

              { icms }
              if formPrincipal.cdsPerfil.fieldByName('ICMSSIMPLES').AsString = 'S' then
                icms := formPrincipal.cdsPerfil.fieldByName('ALIQUOTA_ICMSSIMPLES').AsCurrency
              else
                icms := formSaidaProdutos.cdsDados.FieldByName('ICMS').AsCurrency;

              { produto }
              AdicionarItem(
                formSaidaProdutos.cdsDados.FieldByName('BARRA').AsString,
                formSaidaProdutos.cdsDados.FieldByName('DESCRICAO').AsString,
                formSaidaProdutos.cdsDados.FieldByName('SERIE').AsString,
                formSaidaProdutos.cdsDados.FieldByName('SERIE2').AsString,
                '0.0',
                formSaidaProdutos.cdsDados.FieldByName(campo).AsCurrency,
                icms,
                0,
                0);

              { itens por caixa }
              cdsItens.Edit;
              cdsItens.FieldByName('CAIXA_ITENS').AsInteger :=
                formSaidaProdutos.cdsDados.FieldByName('CAIXA_ITENS').AsInteger;
              cdsItens.Post;

              { serviço? }
              if not formSaidaProdutos.cdsDados.FieldByName('CODSERVICO').IsNull then
               begin

                 if (formSaidaProdutos.cdsDados.fieldByName('ATIVACAO').AsString = 'N') or
                    ((formSaidaProdutos.cdsDados.fieldByName('ATIVACAO').AsString = 'S') and
                    (formSaidaProdutos.cdsDados.FieldByName('PRECOVENDA').AsCurrency > 0)) then
                   AdicionarItem(
                     formSaidaProdutos.cdsDados.FieldByName('BARRA_1').AsString,
                     formSaidaProdutos.cdsDados.FieldByName('DESCRICAO_1').AsString,
                     '',
                     '',
                     '0.0',
                     formSaidaProdutos.cdsDados.FieldByName('PRECOSERVICO').AsCurrency,
                     0,
                     0,
                     0);

                 ativacao := (formSaidaProdutos.cdsDados.fieldByName('ATIVACAO').AsString = 'S');

               end;

             end;

           formSaidaProdutos.cdsDados.Next;

         end;
        formSaidaProdutos.cdsDados.enablecontrols;
      end;
  finally
    try
      formSaidaProdutos.Release;
    except
    end
  end

end;

procedure TformSaida.actFaturarExecute(Sender: TObject);
begin

  { verificação do desconto }
  if (cdsMovimento.FieldByName('PERC_DESCONTO').AsCurrency >
      formPrincipal.cdsUsuarios.FieldByName('DESCONTO').AsCurrency) and
     (formPrincipal.cdsUsuarios.FieldByName('DESCONTO').AsCurrency > 0) then
   begin
     formPrincipal.MsgError(
       'Desconto concedido é maior que o permitido pelo seu perfil.',
       'Desconto');
     exit;
   end;

  inherited;

  if ativacao then
   begin

     try
       formAtivacao := TformAtivacao.Create(Self);
       formAtivacao.codMovimento := Self.codMovimento;
       formAtivacao.ShowModal;

       ativa_numero := formAtivacao.memAtivacao.fieldByName('NUMERO').AsString;
       formAtivacao.cdsOperadoras.Locate('CODIGO',
          formAtivacao.memAtivacao.fieldByName('CODOPERADORA').AsInteger, []);
       ativa_operadora := formAtivacao.cdsOperadoras.FieldByName('NOME').AsString;
       formAtivacao.cdsPlanos.Locate('CODIGO;CODOPERADORA', VarArrayOf([
          formAtivacao.memAtivacao.fieldByName('CODPLANO').AsInteger,
          formAtivacao.memAtivacao.fieldByName('CODOPERADORA').AsInteger]), []);
       ativa_plano := formAtivacao.cdsPlanos.FieldByName('NOME').AsString;
     finally
       try
         formAtivacao.Release;
       except
       end
     end

   end;
end;

procedure TformSaida.actServicoExecute(Sender: TObject);
var
  n: word;
begin
  inherited;
  try
    formServicos := TformServicos.Create(Self);
    formServicos.Tag := formPrincipal.actServicos.Tag;
    formServicos.Transferir := True;
    if formServicos.ShowModal = mrOk then
     if not formServicos.cdsDados.IsEmpty then
      begin

        n := 0;
        formServicos.cdsDados.disablecontrols;
        formServicos.cdsDados.First;
        while (not formServicos.cdsDados.Eof) and (n < formServicos.no_sel) do
         begin

           if formServicos.cdsDadosSEL.AsString = 'S' then
            begin

              inc(n);

              AdicionarItem(
                formServicos.cdsDados.FieldByName('BARRA').AsString,
                formServicos.cdsDados.FieldByName('DESCRICAO').AsString,
                '',
                '',
                '0.0',
                 formServicos.cdsDados.FieldByName('PRECOVENDA').AsCurrency,
                0,
                0,
                0);

              ativacao := (trim(formServicos.cdsDados.fieldByName('ATIVACAO').AsString) = 'S');

            end;

           formServicos.cdsDados.Next;

         end;
        formServicos.cdsDados.disablecontrols;
      end;
  finally
    try
      formServicos.Release;
    except
    end
  end
end;

procedure TformSaida.actSerieExecute(Sender: TObject);
begin
  inherited;
  try
    formSaidaProdutos := TformSaidaProdutos.Create(Self);
    formSaidaProdutos.Tag := formPrincipal.actProdutos.Tag;
    formSaidaProdutos.SetWhereDynamic(
      '',
      'Produtos em Estoque');

    { estabelecer busca em numero de serie }
    formSaidaProdutos.cmbSelecionar.ItemIndex := 5;

    if formSaidaProdutos.ShowModal = mrOk then
     if not formSaidaProdutos.cdsDados.IsEmpty then
      begin
        { produto }
        AdicionarItem(
          formSaidaProdutos.cdsDados.FieldByName('BARRA').AsString,
          formSaidaProdutos.cdsDados.FieldByName('DESCRICAO').AsString,
          formSaidaProdutos.cdsDados.FieldByName('SERIE').AsString,
          formSaidaProdutos.cdsDados.FieldByName('SERIE2').AsString,
          '0.0',
          formSaidaProdutos.cdsDados.FieldByName('PRECOVENDA').AsCurrency,
          formSaidaProdutos.cdsDados.FieldByName('ICMS').AsCurrency,
          0,
          0);
        { serviço? }
        if not formSaidaProdutos.cdsDados.FieldByName('CODSERVICO').IsNull then
         begin
           AdicionarItem(
             formSaidaProdutos.cdsDados.FieldByName('BARRA_1').AsString,
             formSaidaProdutos.cdsDados.FieldByName('DESCRICAO_1').AsString,
             '',
             '',
             '0.0',
             formSaidaProdutos.cdsDados.FieldByName('PRECOSERVICO').AsCurrency,
             0,
             0,
             0);

           ativacao := (formSaidaProdutos.cdsDados.fieldByName('ATIVACAO').AsString = 'S');
         end;
      end;
  finally
    try
      formSaidaProdutos.Release;
    except
    end
  end

end;

end.
