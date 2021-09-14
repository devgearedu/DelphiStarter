program sample;

uses
  Vcl.Forms,
  USplash in 'E:\델파이교육소스_완성본\윈도우프로그래밍\메모장\USplash.pas' {SplashForm},
  uMain in 'E:\델파이교육소스_완성본\윈도우프로그래밍\메모장\uMain.pas' {MainForm},
  uAbout in 'E:\델파이교육소스_완성본\윈도우프로그래밍\메모장\uAbout.pas' {AboutBox},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('windows10 purple');
  Splashform := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Refresh;
  Application.CreateForm(TMainForm, MainForm);
  SplashForm.hide;
  SplashForm.Free;
  Application.Run;
end.
