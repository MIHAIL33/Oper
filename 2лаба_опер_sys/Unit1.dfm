object Form1: TForm1
  Left = 248
  Top = 259
  Width = 870
  Height = 640
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
  object SpeedButton1: TSpeedButton
    Left = 528
    Top = 248
    Width = 153
    Height = 73
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 528
    Top = 488
    Width = 153
    Height = 73
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1087#1082#1091
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 136
    Top = 24
    Width = 97
    Height = 13
    Caption = 'G:\2'#1083#1072#1073#1072'_'#1086#1087#1077#1088'_sys'
  end
  object SpeedButton3: TSpeedButton
    Left = 528
    Top = 368
    Width = 153
    Height = 65
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 344
    Top = 368
    Width = 137
    Height = 65
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1072#1081#1083
    OnClick = SpeedButton4Click
  end
  object FileListBox1: TFileListBox
    Left = 136
    Top = 56
    Width = 137
    Height = 137
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 320
    Top = 56
    Width = 217
    Height = 137
    DirLabel = Label1
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
  end
  object DriveComboBox1: TDriveComboBox
    Left = 136
    Top = 248
    Width = 249
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 136
    Top = 304
    Width = 257
    Height = 21
    FileList = FileListBox1
    Filter = 'All files (*.*)|*.*|EXE|*.exe*'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 528
    Top = 336
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 528
    Top = 448
    Width = 153
    Height = 21
    TabOrder = 5
  end
end
