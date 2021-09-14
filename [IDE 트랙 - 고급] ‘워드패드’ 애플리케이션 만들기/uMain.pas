unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Ribbon, Vcl.ActnMenus,
  Vcl.RibbonActnMenus, Vcl.StdCtrls, Vcl.RibbonActnCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.StdActns, Vcl.ExtActns, Vcl.ActnList,
  System.Actions, Vcl.RibbonLunaStyleActnCtrls, System.ImageList, Vcl.ImgList,
  Vcl.RibbonSilverStyleActnCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Touch.GestureMgr, System.Win.TaskbarCore, Vcl.Taskbar, Vcl.JumpList,
  Vcl.CategoryButtons, Vcl.ButtonGroup, Vcl.Themes, System.Win.ComObj,System.Win.ScktComp;

type
   { TTreeView }

  TMainForm = class(TForm)
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    New_Action: TAction;
    About_Action: TAction;
    Top_Action: TAction;
    Window_Action: TAction;
    Silver_Action: TAction;
    Auric_Action: TAction;
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    RibbonGroup6: TRibbonGroup;
    RibbonGroup7: TRibbonGroup;
    RibbonSpinEdit1: TRibbonSpinEdit;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    StatusBar1: TStatusBar;
    GridPanel1: TGridPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    RichEdit1: TRichEdit;
    PopupMenu1: TPopupMenu;
    New1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    TrayIcon1: TTrayIcon;
    JumpList1: TJumpList;
    Taskbar1: TTaskbar;
    Timer1: TTimer;
    GestureManager1: TGestureManager;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryPanel3: TCategoryPanel;
    CategoryPanel4: TCategoryPanel;
    CategoryButtons1: TCategoryButtons;
    ButtonGroup1: TButtonGroup;
    TreeView1: TTreeView;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    ImageList2: TImageList;
    AboutForm_Action: TAction;
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RibbonSpinEdit1Change(Sender: TObject);
    procedure New_ActionExecute(Sender: TObject);
    procedure Window_ActionExecute(Sender: TObject);
    procedure Silver_ActionExecute(Sender: TObject);
    procedure Auric_ActionExecute(Sender: TObject);
    procedure Top_ActionExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RichEdit1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ShowHint(Sender:Tobject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure About_ActionExecute(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
   procedure AboutForm_ActionExecute(Sender: TObject);
  private
    function GetCurrPos(RichEdit:TRichEdit):integer;
    function GetCurrLine(RichEdit:TRichEdit):integer;
    { Private declarations }
  public
    { Public decfunctiolarations }
  end;

var
  MainForm: TMainForm;

implementation

uses  uAbout;



var
   FilePath:string;

{$R *.dfm}

procedure TMainForm.AboutForm_ActionExecute(Sender: TObject);
begin
  AboutBox := TAboutBox.create(Application);
  try
    AboutBox.ShowModal;
  finally
    AboutBox.Free;
  end;
end;

procedure TMainForm.About_ActionExecute(Sender: TObject);
begin
    Display_About;
end;



procedure TMainForm.Auric_ActionExecute(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Auric');
end;


procedure TMainForm.FileOpen1Accept(Sender: TObject);
begin

  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
  Ribbon1.AddRecentItem(FileOpen1.Dialog.FileName);
end;

procedure TMainForm.FileOpen1BeforeExecute(Sender: TObject);
begin
   FileOpen1.Dialog.InitialDir := FilePath;
   FileOpen1.Dialog.Filter :=
   '프로젝트파일|*.dpr|유니트파일|*.pas|텍스트파일|*.txt';
end;

procedure TMainForm.FileSaveAs1Accept(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

procedure TMainForm.FileSaveAs1BeforeExecute(Sender: TObject);
begin
  FileSaveAs1.Dialog.InitialDir := FilePath;
end;


procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if RichEdit1.Lines.Text <> '' then
  begin
    Showmessage('메모장 지우시고 종료하십시오');
    CanClose := false;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Application.onhint := ShowHint;
end;

function TMainForm.GetCurrLine(RichEdit: TRichEdit): integer;
begin
  result := RichEdit.Perform(EM_LINEFROMCHAR,richEdit.SelStart,0);
end;

function TMainForm.GetCurrPos(RichEdit: TRichEdit): integer;
begin
  result := RichEdit.SelStart - RichEdit.Perform(EM_LINEINDEX,GetcurrLine(RichEdit),0);

end;

procedure TMainForm.New_ActionExecute(Sender: TObject);
begin
   RichEdit1.Clear;
end;

procedure TMainForm.RibbonSpinEdit1Change(Sender: TObject);
begin
  RichEdit1.Font.Size := RibbonSpinEdit1.value;
end;

procedure TMainForm.RichEdit1Change(Sender: TObject);
begin
  statusbar1.Panels[1].Text :=
  Format('현재컬럼:%d 현재라인수:%d', [GetcurrPos(RichEdit1)+1,
  GetCurrLine(Richedit1)+1]);
end;

procedure TMainForm.RichEdit1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
     sgiCircle:Showmessage('원');
     sgiSquare:Showmessage('사각형');
     sgiTriAngle:Showmessage('삼각형');
  end;
end;

procedure TMainForm.ShowHint(Sender: Tobject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
//Application.hintpause
end;

procedure TMainForm.Silver_ActionExecute(Sender: TObject);
begin
  TStyleManager.TrySetStyle('silver');
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels[2].Text :=
   FormatDateTime('yyyy-mmmm-dd dddd hh:nn:ss ampm',now);
// FormatFlaot('#,##0.00', i);
// Format('현재수 =%d , 총수 =%d',[i,j])
end;

procedure TMainForm.Top_ActionExecute(Sender: TObject);
begin
   Top_Action.Checked := not Top_Action.Checked;
   if Top_Action.Checked then
      FormStyle := fsStayOnTop
   else
      FormStyle := fsNormal;
end;



procedure TMainForm.Window_ActionExecute(Sender: TObject);
begin
   TStyleManager.TrySetStyle('windows');
end;
end.
