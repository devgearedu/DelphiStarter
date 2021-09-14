program ProjectDeploy;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in '..\프로그램배포파일만들기-모바일\Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
