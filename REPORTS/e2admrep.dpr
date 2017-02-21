program e2admrep;

uses
  Forms,
  principal in 'principal.pas' {formPrincipal},
  funcoes in '..\PROJETO\funcoes.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Relatórios Administrativos';
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
