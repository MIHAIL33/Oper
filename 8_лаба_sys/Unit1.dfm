object Form1: TForm1
  Left = 384
  Top = 125
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
  object Button1: TButton
    Left = 104
    Top = 32
    Width = 129
    Height = 81
    Caption = #1053#1072#1095#1072#1090#1100' '#1087#1088#1086#1074#1077#1088#1082#1091
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 144
    Width = 369
    Height = 21
    TabOrder = 1
    Text = '127.0.0.1'
  end
  object Edit2: TEdit
    Left = 480
    Top = 96
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 136
    Top = 216
    Width = 609
    Height = 313
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 480
    Top = 128
    Width = 97
    Height = 21
    TabOrder = 4
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 688
    Top = 16
  end
  object TcpClient1: TTcpClient
    Left = 584
    Top = 16
  end
end
