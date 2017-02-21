program INFO;

uses
  Forms,
  uServidor in '..\..\BASE\uServidor.pas' {formServidor},
  INFO_TLB in 'INFO_TLB.pas',
  uModulo in '..\..\BASE\uModulo.pas' {ServerModule: TRemoteDataModule} {ServerModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor INFO';
  Application.CreateForm(TformServidor, formServidor);
  Application.Run;
end.
