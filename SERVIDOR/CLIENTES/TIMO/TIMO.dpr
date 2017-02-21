program TIMO;

uses
  Forms,
  uServidor in '..\..\BASE\uServidor.pas' {formServidor},
  TIMO_TLB in 'TIMO_TLB.pas',
  uModulo in '..\..\BASE\uModulo.pas' {ServerModule: TRemoteDataModule} {ServerModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor TIMO';
  Application.CreateForm(TformServidor, formServidor);
  Application.Run;
end.
