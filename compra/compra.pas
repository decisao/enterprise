unit compra;

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
  DBCtrls, StdCtrls, cxPC, cxLabel, cxDBLabel, Menus, cxBarEditItem,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinOffice2007Silver,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinOffice2010Silver,
  dxSkinOffice2010Blue;

type
  TformCompra = class(TformMODELO_MOV)
    dxBarContainerItem1: TdxBarContainerItem;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    Panel2: TPanel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    dedDescricaoCaixa: TDBText;
    procedure actProdutoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCompra: TformCompra;

implementation

uses produtos, principal;

{$R *.dfm}

procedure TformCompra.actProdutoExecute(Sender: TObject);
var
  n: word;
begin
  try
    formProdutos := TformProdutos.Create(Self);
    formProdutos.Transferir := True;
    formProdutos.Tag := formPrincipal.actProdutos.Tag;
    formProdutos.SetWhereDynamic(
      '',
      'Produtos Cadastrados');
    if formProdutos.ShowModal = mrOk then
     if not formProdutos.cdsDados.IsEmpty then
      begin

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
                formProdutos.cdsDados.FieldByName('SITTRIBU').AsString,
                formProdutos.cdsDados.FieldByName('PRECOCUSTO').AsFloat,
                formProdutos.cdsDados.FieldByName('ICMS').AsFloat,
                0,
                0);

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

end.
