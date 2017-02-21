program HBOX;

uses
  Forms,
  uServidor in '..\..\BASE\uServidor.pas' {formServidor},
  HBOX_TLB in 'HBOX_TLB.pas',
  uModulo in '..\..\BASE\uModulo.pas' {ServerModule: TRemoteDataModule} {ServerModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor HBOX';
  Application.CreateForm(TformServidor, formServidor);
  Application.Run;
end.
