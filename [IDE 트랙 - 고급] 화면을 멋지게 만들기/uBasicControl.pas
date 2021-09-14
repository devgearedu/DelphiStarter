unit ubasiccontrol;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Layouts, FMX.ListBox, FMX.Controls.Presentation, FMX.Edit, FMX.Colors,
  FMX.DateTimeCtrls, FMX.ComboEdit, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, Fmx.Bind.GenData,
  Data.Bind.GenData, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, FMX.Gestures, System.Actions,
  FMX.ActnList, Data.Bind.Components, Data.Bind.ObjectScope, FMX.ListView,
  FMX.Filter.Effects, FMX.Effects, FMX.StdCtrls, FMX.Objects, FMX.Ani;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    V: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    StyleBook1: TStyleBook;
    ListBox1: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBox2: TListBox;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    ComboEdit1: TComboEdit;
    TimeEdit1: TTimeEdit;
    ColorComboBox1: TColorComboBox;
    ListView1: TListView;
    TabItem5: TTabItem;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    GestureManager1: TGestureManager;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Image1: TImage;
    ImageControl1: TImageControl;
    GlowEffect1: TGlowEffect;
    ShadowEffect1: TShadowEffect;
    BlurEffect1: TBlurEffect;
    ReflectionEffect1: TReflectionEffect;
    ShadowEffect2: TShadowEffect;
    BandsEffect1: TBandsEffect;
    BandsEffect2: TBandsEffect;
    TilerEffect1: TTilerEffect;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    ColorAnimation1: TColorAnimation;
    FloatAnimation1: TFloatAnimation;
    ImageControl2: TImageControl;
    BitmapAnimation1: TBitmapAnimation;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button3: TButton;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    FloatAnimation5: TFloatAnimation;
    procedure ColorComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
   rectangle2.AnimateFloat('RotationAngle', 360, 3);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ani :TFloatAnimation;
begin
  ani := TFloatAnimation.Create(rectangle3);
  ani.PropertyName := 'RotationAngle';
  ani.Duration := 3;
  ani.StopValue := 360;
  ani.Loop := true;
  ani.Parent := Rectangle3;
  ani.Start; //stop;
end;

procedure TForm1.ColorComboBox1Change(Sender: TObject);
begin
  listBoxItem8.TextSettings.Fontcolor := ColorCombobox1.Color;
end;

end.
