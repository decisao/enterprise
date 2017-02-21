unit selpreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2010Silver;

type
  TformSelPreco = class(TForm)
    rgPreco: TcxRadioGroup;
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSelPreco: TformSelPreco;

implementation

{$R *.dfm}

procedure TformSelPreco.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  modalresult := mrOk;
end;

end.
