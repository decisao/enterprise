{ 1/7/2007 21:38:24 (GMT-3:00) > [sysdba on MOBILE] checked in   }
{ 1/7/2007 19:36:38 (GMT-3:00) > [sysdba on MOBILE] checked out /}
{ 1/7/2007 19:32:28 (GMT-3:00) > [sysdba on MOBILE] checked in   }
unit MODELO_GRAFICO;
                        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, dxBar, dxBarExtItems, cxControls, dxStatusBar,
  TeEngine, TeeDBEdit, TeeDBCrossTab, Series, ExtCtrls, TeeProcs, Chart,
  DBChart, cxClasses;

type
  TformModeloGrafico = class(TForm)
    dxBarManager: TdxBarManager;
    dxStatusBar: TdxStatusBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    DBChart1: TDBChart;
    DBCrossTabSource: TDBCrossTabSource;
    Series1: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formModeloGrafico: TformModeloGrafico;

implementation

uses principal, vendas;

{$R *.dfm}

end.
