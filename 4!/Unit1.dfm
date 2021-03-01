object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
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
  object LabelLine: TLabel
    Left = 192
    Top = 19
    Width = 44
    Height = 13
    Caption = 'LabelLine'
  end
  object LabelColumn: TLabel
    Left = 192
    Top = 67
    Width = 60
    Height = 13
    Caption = 'LabelColumn'
  end
  object EditLine: TEdit
    Left = 48
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditLine'
  end
  object EditColumn: TEdit
    Left = 48
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EditColumn'
  end
  object ButtonFillMatrix: TButton
    Left = 48
    Top = 256
    Width = 89
    Height = 25
    Caption = 'ButtonFillMatrix'
    TabOrder = 2
    OnClick = ButtonFillMatrixClick
  end
  object ButtonCalculationResult: TButton
    Left = 440
    Top = 256
    Width = 131
    Height = 25
    Caption = 'ButtonCalculationResult'
    TabOrder = 3
    OnClick = ButtonCalculationResultClick
  end
  object StringGridInitialMatrix: TStringGrid
    Left = 48
    Top = 112
    Width = 320
    Height = 120
    TabOrder = 4
  end
  object StringGridReceivedMassiv: TStringGrid
    Left = 440
    Top = 112
    Width = 152
    Height = 120
    TabOrder = 5
  end
  object CheckBoxGenerateMatrix: TCheckBox
    Left = 440
    Top = 8
    Width = 97
    Height = 17
    Caption = 'CheckBoxGenerateMatrix'
    TabOrder = 6
  end
  object CheckBoxManualFilling: TCheckBox
    Left = 440
    Top = 66
    Width = 97
    Height = 17
    Caption = 'CheckBoxManualFilling'
    TabOrder = 7
  end
end
