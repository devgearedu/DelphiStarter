program Project_Solar;

uses
  System.StartUpCopy,
  FMX.MobilePreview,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
