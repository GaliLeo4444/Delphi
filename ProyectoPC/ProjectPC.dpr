program ProjectPC;

uses
  Forms,
  UnidadPrograma in 'UnidadPrograma.pas' {Form1},
  UAcercaDe in 'UAcercaDe.pas' {FormAcercaDe},
  UPantallaCompleta in 'UPantallaCompleta.pas' {PantallaCompleta},
  UCaminos in 'UCaminos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Generador de Caminos';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
