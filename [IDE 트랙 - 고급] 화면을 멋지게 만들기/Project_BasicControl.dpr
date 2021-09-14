program Project_BasicControl;

uses
  System.StartUpCopy,
  FMX.Forms,
  uBasicControl in 'uBasicControl.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
