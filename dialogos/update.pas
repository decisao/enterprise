unit update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinOffice2007Blue, cxControls,
  cxContainer, cxEdit, PngImage, cxImage, cxButtons, dxSkinOffice2010Black,
  dxSkinDevExpressStyle;

type
  TformUpdate = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    cxButton2: TcxButton;
    cxImage1: TcxImage;
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formUpdate: TformUpdate;

implementation

uses
  principal;

{$R *.dfm}

procedure TformUpdate.cxButton2Click(Sender: TObject);
begin
  close;
end;

end.
