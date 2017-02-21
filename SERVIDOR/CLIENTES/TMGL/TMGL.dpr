program TMGL;

uses
  Forms,
  uServidor in '..\..\BASE\uServidor.pas' {formServidor},
  TMGL_TLB in 'TMGL_TLB.pas',
  uModulo in '..\..\BASE\uModulo.pas' {ServerModule: TRemoteDataModule} {ServerModule: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor TMGL';
  Application.CreateForm(TformServidor, formServidor);
  Application.Run;
end.
