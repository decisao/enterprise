unit orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MODELO_MOV, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxDBLookupComboBox, cxCalendar, ExtCtrls, DBClient, Provider, dxmdaset,
  ActnList, dxBarExtItems, dxBar, dxStatusBar, cxMemo, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxTextEdit,
  DBCtrls, StdCtrls, cxPC, Menus, cxBarEditItem, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxSkinsdxBarPainter;

type
  TformOrcamento = class(TformMODELO_MOV)
    Label5: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label6: TLabel;
    cxDBMemo3: TcxDBMemo;
    procedure actProdutoExecute(Sender: TObject);
    procedure actServicoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formOrcamento: TformOrcamento;

implementation

uses produtos, servicos, selpreco, principal;

{$R *.dfm}

procedure TformOrcamento.actProdutoExecute(Sender: TObject);
var
  campo: string;
  n: word;
begin
  try
    formProdutos := TformProdutos.Create(Self);
    formProdutos.Transferir := True;
    formProdutos.SetWhereDynamic(
      '',
      'Produtos Cadastrados');
    formProdutos.Tag := formPrincipal.actProdutos.Tag;
    if formProdutos.ShowModal = mrOk then
     if not formProdutos.cdsDados.IsEmpty then
      begin

        { seleção do preço de venda }
        if formPrincipal.cdsPerfil.FieldByName('PRECO_CLIENTE').AsString = 'S' then
         begin
           try
             formSelPreco := TformSelPreco.Create(Self);
             if formSelPreco.ShowModal = mrOk then
              begin
                if formSelPreco.rgPreco.ItemIndex = 0 then
                  campo := 'PRECOVENDA' else
                if formSelPreco.rgPreco.ItemIndex = 1 then
                  campo := 'PRECOVENDA2' else
                if formSelPreco.rgPreco.ItemIndex = 2 then
                  campo := 'PRECOVENDA3' else
                  campo := 'PRECOVENDA';
              end;
           finally
             formSelPreco.Release;
             formSelPreco := nil;
           end;
         end else
           campo := 'PRECOVENDA';

        n := 0;
        formProdutos.cdsDados.disablecontrols;
        formProdutos.cdsDados.First;
        while (not formProdutos.cdsDados.Eof) and (n < formProdutos.no_sel) do
         begin

           if formProdutos.cdsDadosSEL.AsString = 'S' then
            begin

              inc(n);

              { produto }
              AdicionarItem(
                formProdutos.cdsDados.FieldByName('BARRA').AsString,
                formProdutos.cdsDados.FieldByName('DESCRICAO').AsString,
                '',
                '',
                '0.0',
                formProdutos.cdsDados.FieldByName(campo).AsFloat,
                formProdutos.cdsDados.FieldByName('ICMS').AsFloat,
                0,
                0);

              { custo }
              cdsItens.Edit;
              cdsItens.FieldByName('VALOR_CUSTO').AsFloat :=
                formProdutos.cdsDados.FieldByName('PRECOCUSTO').AsFloat;
              cdsItens.Post;

            end;

           formProdutos.cdsDados.Next;

         end;
        formProdutos.cdsDados.enablecontrols;
      end;
  finally
    try
      formProdutos.Release;
    except
    end
  end

end;

procedure TformOrcamento.actServicoExecute(Sender: TObject);
var
  n: word;
begin
  inherited;
  try
    formServicos := TformServicos.Create(Self);
    formServicos.Transferir := True;
    formServicos.Tag := formPrincipal.actServicos.Tag;
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
                formServicos.cdsDados.FieldByName('PRECOVENDA').AsFloat,
                0,
                0,
                0);

              ativacao := (trim(formServicos.cdsDados.fieldByName('ATIVACAO').AsString) = 'S');

            end;

           formServicos.cdsDados.Next;

         end;
        formServicos.cdsDados.enablecontrols;
      end;
  finally
    try
      formServicos.Release;
    except
    end
  end

end;

end.
