program BASE;

uses
  Forms,
  uServidor in 'uServidor.pas' {formServidor},
  BASE_TLB in 'BASE_TLB.pas',
  uModulo in 'uModulo.pas' {ServerModule: TRemoteDataModule} {ServerModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor BASE';
  Application.CreateForm(TformServidor, formServidor);
  Application.Run;
end.
