program e2admrep;

uses
  Forms,
  principal in 'principal.pas' {formPrincipal},
  funcoes in '..\funcoes\funcoes.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Relat�rios Administrativos';
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
