program ProjectTeleCalcu;


uses
  Forms,
  TelesCalculadora in 'TelesCalculadora.pas' {Form1};


{$R *.res}


begin
  Application.Initialize;
  Application.Title := 'TelesCalculadora';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
