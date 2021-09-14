object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 309
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 366
    Height = 299
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Caption = 'Panel1'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 16
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 344
      Height = 277
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitHeight = 288
      DesignSize = (
        344
        277)
      object Mybutton: TButton
        Left = 16
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Close'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button1: TButton
        Left = 97
        Top = 16
        Width = 75
        Height = 25
        Caption = #49549#49457#48320#44221
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button2: TButton
        Left = 178
        Top = 16
        Width = 75
        Height = 25
        Caption = #54648#46308#47084#44277#50976' '
        TabOrder = 2
        OnClick = MyButtonClick
      end
      object Button3: TButton
        Left = 259
        Top = 16
        Width = 75
        Height = 25
        Caption = #54648#46308#47084#44277#50976' '
        TabOrder = 3
        OnClick = Button3Click
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 56
        Width = 309
        Height = 129
        Anchors = [akLeft, akTop, akRight]
        Caption = #51077#47141#54596#46300
        TabOrder = 4
        ExplicitWidth = 305
        object Edit1: TEdit
          Left = 16
          Top = 29
          Width = 273
          Height = 21
          TabOrder = 0
        end
        object ComboBox1: TComboBox
          Left = 16
          Top = 56
          Width = 273
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E')
        end
        object SpinEdit1: TSpinEdit
          Left = 16
          Top = 83
          Width = 273
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 10
        end
      end
      object Button4: TButton
        Left = 32
        Top = 200
        Width = 75
        Height = 25
        Caption = #54256#53944#48320#44221
        TabOrder = 5
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 32
        Top = 231
        Width = 75
        Height = 25
        Caption = #49353#49345
        TabOrder = 6
        OnClick = Button5Click
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 256
    Top = 224
  end
end
