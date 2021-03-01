object Form1: TForm1
  Left = 977
  Top = 213
  Width = 668
  Height = 538
  Caption = 'v'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 200
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object lbl2: TLabel
    Left = 160
    Top = 200
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object lbl3: TLabel
    Left = 72
    Top = 48
    Width = 16
    Height = 13
    Caption = 'lbl3'
  end
  object lbl4: TLabel
    Left = 232
    Top = 200
    Width = 16
    Height = 13
    Caption = 'lbl4'
  end
  object edt1: TEdit
    Left = 112
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object mmo1: TMemo
    Left = 80
    Top = 232
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object btn1: TButton
    Left = 56
    Top = 368
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 368
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 3
    OnClick = btn2Click
  end
end
