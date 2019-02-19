PROGRAM ManagerLopeZone;




USES
  Forms,
  UnitPrograma in 'UnitPrograma.pas' {UIPrincipal},
  UnidadCarga in 'UnidadCarga.pas',
  UnitRoles in 'UnitRoles.pas' {FormRoles},
  Jugadores in 'Jugadores.pas';



{$R *.res}
///////////////////////////////////////////////////////////////////////////////




BEGIN
  Application.Initialize;
  Application.CreateForm(TUIPrincipal, UIPrincipal);
  Application.Run
END.
