program sample;

uses
  Vcl.Forms,
  USplash in 'E:\�����̱����ҽ�_�ϼ���\���������α׷���\�޸���\USplash.pas' {SplashForm},
  uMain in 'E:\�����̱����ҽ�_�ϼ���\���������α׷���\�޸���\uMain.pas' {MainForm},
  uAbout in 'E:\�����̱����ҽ�_�ϼ���\���������α׷���\�޸���\uAbout.pas' {AboutBox},
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
