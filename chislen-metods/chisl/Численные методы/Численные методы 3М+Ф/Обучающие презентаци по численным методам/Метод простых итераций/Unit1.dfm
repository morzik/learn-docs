object Form1: TForm1
  Left = 182
  Top = 265
  Width = 708
  Height = 305
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 15
    Height = 13
    Caption = 'n ='
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 71
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100':'
  end
  object Label1: TLabel
    Left = 104
    Top = 0
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 16
    Top = 136
    Width = 18
    Height = 13
    Caption = 'q1='
  end
  object Label5: TLabel
    Left = 16
    Top = 152
    Width = 18
    Height = 13
    Caption = 'q2='
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 18
    Height = 13
    Caption = 'q&&='
  end
  object Label7: TLabel
    Left = 14
    Top = 112
    Width = 23
    Height = 13
    Caption = 'eps='
  end
  object Edit2: TEdit
    Left = 35
    Top = 36
    Width = 49
    Height = 21
    TabOrder = 0
    Text = '5'
  end
  object Button1: TButton
    Left = 16
    Top = 72
    Width = 68
    Height = 25
    Caption = #1047#1072#1076#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 104
    Top = 16
    Width = 159
    Height = 109
    DefaultColWidth = 30
    DefaultRowHeight = 20
    Enabled = False
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssNone
    TabOrder = 2
    ColWidths = (
      30
      30
      30
      30
      30)
  end
  object Button2: TButton
    Left = 104
    Top = 140
    Width = 211
    Height = 25
    Caption = #1056#1077#1096#1080#1090#1100' '#1089#1080#1089#1090#1077#1084#1091
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object StringGrid2: TStringGrid
    Left = 384
    Top = 16
    Width = 159
    Height = 109
    ColCount = 100000000
    DefaultColWidth = 30
    DefaultRowHeight = 20
    FixedCols = 0
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 4
    RowHeights = (
      20
      20
      20
      20
      20)
  end
  object StringGrid3: TStringGrid
    Left = 560
    Top = 16
    Width = 35
    Height = 109
    ColCount = 1
    DefaultColWidth = 30
    DefaultRowHeight = 20
    FixedCols = 0
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 5
  end
  object StringGrid4: TStringGrid
    Left = 612
    Top = 16
    Width = 35
    Height = 109
    ColCount = 1
    DefaultColWidth = 30
    DefaultRowHeight = 20
    FixedCols = 0
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 6
  end
  object StringGrid5: TStringGrid
    Left = 280
    Top = 16
    Width = 35
    Height = 109
    ColCount = 1
    DefaultColWidth = 30
    DefaultRowHeight = 20
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ScrollBars = ssNone
    TabOrder = 7
  end
  object StringGrid6: TStringGrid
    Left = 332
    Top = 16
    Width = 35
    Height = 109
    ColCount = 1
    DefaultColWidth = 30
    DefaultRowHeight = 20
    FixedCols = 0
    FixedRows = 0
    ScrollBars = ssNone
    TabOrder = 8
  end
  object Button3: TButton
    Left = 332
    Top = 140
    Width = 315
    Height = 25
    Caption = #1064#1072#1075' 1'
    Enabled = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 35
    Top = 108
    Width = 49
    Height = 21
    TabOrder = 10
    Text = '0,00001'
  end
end
