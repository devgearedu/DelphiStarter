//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.ListBox,
  FMX.Layouts, FMX.Controls.Presentation;

type
  TDeviceInfoForm = class(TForm)
    Button1: TButton;
    ToolBar1: TToolBar;
    Label1: TLabel;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeviceInfoForm: TDeviceInfoForm;

implementation
{$IFDEF IOS}
uses
  iOSapi.UIKit, iOSapi.Foundation, Macapi.Helpers;
{$ENDIF}
{$IFDEF ANDROID}
uses
  androidapi.JNI.JavaTypes,
  Androidapi.Helpers,
  androidapi.JNI.Os;
{$ENDIF}

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

{$IFDEF ANDROID}

function GetAndroidCodename(VerString: string): string;
begin
 if VerString = '1.0' then
  Result := 'BASE'
  else if VerString = '1.1' then
    Result := 'BASE_1_1'
  else if VerString = '1.5' then
    Result := '컵케이크'
  else if VerString = '1.6' then
    Result := '도넛'
  else if VerString = '2.0' then
    Result := 'ECLAIR'
  else if VerString = '2.0.1' then
    Result := 'ECLAIR_0_1'
  else if VerString = '2.1' then
    Result := 'ECLAIR_MR1'
  else if VerString = '2.2' then
    Result := '프로요'
  else if VerString = '2.3' then
    Result := '진저브레드'
  else if VerString = '2.3.3' then
    Result := '진저브레드_MR1'
  else if VerString = '3.0' then
    Result := '허니콤보'
  else if VerString = '3.1' then
    Result := '허니콤보_MR1'
  else if VerString = '3.2' then
    Result := '허니콤보_MR2'
  else if VerString = '4.0.3' then
    Result := '아이스크림샌드위치_MR1'
  else if Pos('4.0',VerString) = 1 then
    Result := '아이스크림샌드위치'
  else if VerString = '4.1' then
    Result := '젤리빈'
  else if VerString = '4.2' then
    Result := '젤리빈_MR1'
  else if VerString = '4.3' then
    Result := '젤리빈_MR2'
  else if Pos('4.4',VerString) = 1 then
    Result := 'KITKAT'
  else if VerString = '5.0' then
    Result := '롤리팝'
  else if VerString = '5.1' then
    Result := '로리팝_MR1'
  else if VerString = '6.0' then
    Result := '마쉬멜로'
  else if VerString = '7.0' then
    Result := 'NOUGAT'
  else if VerString = '7.1' then
    Result := 'NOUGAT_MR1'
  else if Pos('8.0',VerString) = 1 then
    Result := 'OREO'
  else if Pos('8.1',VerString) = 1 then
    Result := '오레오_MR1'
  else if VerString = '9' then
    Result := '파이'
  else if VerString = '10' then
    Result := '안드로이드10'
  else if VerString = '11' then
    Result := '안드로이드11'
  else if VerString = '12' then
    Result := '안드로이드12'
  else if VerString = '13' then
    Result := '안드로이드13'
  else Result := 'UNKNOWN';
end;
{$ENDIF}

procedure TDeviceInfoForm.Button1Click(Sender: TObject);
begin
{$IFDEF ANDROID}
  ListBoxItem1.ItemData.Text := Format('기기타입: %s', [JStringToString(TJBuild.JavaClass.MODEL)]);
  ListBoxItem2.ItemData.Text := Format('OS 이름: %s', [GetAndroidCodename(JStringToString(TJBuild_VERSION.JavaClass.RELEASE))]);GetAndroidCodename(JStringToString (TJBuild_VERSION.JavaClass.RELEASE));
  ListBoxItem3.ItemData.Text := Format('OS 버전: %s', [JStringToString(TJBuild_VERSION.JavaClass.RELEASE)]);
{$ENDIF}
{$IFDEF IOS}
  var Device : UIDevice;
  Device := TUIDevice.Wrap(TUIDevice.OCClass.currentDevice);
  ListBoxItem1.ItemData.Text := Format('OS Name: %s', [NSStrToStr(Device.systemName)]);
  ListBoxItem2.ItemData.Text := Format('OS Version: %s', [NSStrToStr(Device.systemVersion)]);
  ListBoxItem3.ItemData.Text := Format('Device Type: %s', [NSStrToStr(Device.model)]);
{$ENDIF}
end;

end.
