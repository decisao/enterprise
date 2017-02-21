unit MODELO_SELCAMPOS;   

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, ExtCtrls, StdCtrls, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Menus, cxLookAndFeels, dxSkinsCore, dxSkinOffice2010Silver,
  dxSkinscxPCPainter, dxSkinOffice2010Blue;

type
  TformSelCampos = class(TForm)
    Panel1: TPanel;
    pnlBotoes: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    dsrCampos: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SEL: TcxGridDBColumn;
    cxGrid1DBTableView1CAMPO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSelCampos: TformSelCampos;

implementation

uses MODELO_CAD, principal;

{$R *.dfm}

procedure TformSelCampos.cxButton1Click(Sender: TObject);
begin
  modalresult := mrOk;
end;

procedure TformSelCampos.cxButton2Click(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TformSelCampos.FormShow(Sender: TObject);
begin
  dsrCampos.DataSet.First;
end;

end.
