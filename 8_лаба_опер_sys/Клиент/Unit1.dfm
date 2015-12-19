object Form1: TForm1
  Left = 1091
  Top = 366
  Width = 925
  Height = 506
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
  object Button1: TButton
    Left = 48
    Top = 24
    Width = 113
    Height = 41
    Caption = #1050#1086#1085#1085#1077#1082#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 88
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 48
    Top = 128
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 248
    Top = 24
    Width = 121
    Height = 41
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 408
    Top = 32
    Width = 417
    Height = 21
    TabOrder = 4
  end
  object ListBox1: TListBox
    Left = 248
    Top = 96
    Width = 641
    Height = 305
    ItemHeight = 13
    TabOrder = 5
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    Top = 32
  end
end
