unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Silver, dxGDIPlusClasses,
  cxImage, ExtCtrls, dxSkinDevExpressStyle;

type
  TformSplash = class(TForm)
    Panel1: TPanel;
    cxImage1: TcxImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSplash: TformSplash;

implementation

uses principal;

{$R *.dfm}

end.
