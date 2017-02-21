program BETA;

uses
  Forms,
  uServidor in '..\..\BASE\uServidor.pas' {formServidor},
  BETA_TLB in 'BETA_TLB.pas',
  uModulo in '..\..\BASE\uModulo.pas' {ServerModule: TRemoteDataModule} {ServerModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor SERV';
  Application.CreateForm(TformServidor, formServidor);
  Application.Run;
end.
