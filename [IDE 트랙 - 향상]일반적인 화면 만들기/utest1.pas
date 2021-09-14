unit utest1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Mybutton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    ColorDialog1: TColorDialog;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure MyButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

uses utest2;

procedure TForm1.Button5Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
       Color := ColorDialog1.Color;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form2 := TForm2.create(Application);
  Form2.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Fd:TFontDialog;
begin
  Fd := TFontDialog.Create(self);
  Caption := IntToStr(ComponentCount);
  if Fd.Execute then
     Font := Fd.Font;
  Fd.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MyButton.Caption :=  '´Ý±â';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MyButton.caption := '´Ý±â';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   ShowMessage('my process');
   Button1Click(Button1);
end;


procedure TForm1.MyButtonClick(Sender: TObject);
begin
  Close;
end;


end.
