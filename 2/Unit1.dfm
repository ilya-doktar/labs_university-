object Form1: TForm1
  Left = 0
  Top = 0
  Width = 438
  Height = 336
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 14
    Height = 13
    Caption = 'Y='
  end
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 17
    Height = 13
    Caption = 'X ='
  end
  object Edit1: TEdit
    Left = 63
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 63
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 48
    Top = 128
    Width = 313
    Height = 137
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 240
    Top = 274
    Width = 121
    Height = 17
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 208
    Top = 29
    Width = 153
    Height = 93
    Caption = 'F(x)'
    Items.Strings = (
      'sh(x)'
      'x^2'
      'exp(x)')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 48
    Top = 272
    Width = 113
    Height = 17
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
end
