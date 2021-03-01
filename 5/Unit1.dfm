object MainFormOfLab5: TMainFormOfLab5
  Left = 204
  Top = 209
  Caption = #1051#1072#1073#1072' '#8470'5'
  ClientHeight = 444
  ClientWidth = 680
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelLine: TLabel
    Left = 168
    Top = 48
    Width = 83
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1080':'
  end
  object FieldOfText: TComboBox
    Left = 168
    Top = 67
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnExit = FieldOfTextExit
    OnKeyPress = RestrictionOfInput
  end
  object BitBtnClose: TBitBtn
    Left = 200
    Top = 343
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object FieldOfPrintResult: TMemo
    Left = 168
    Top = 200
    Width = 289
    Height = 137
    Lines.Strings = (
      'FieldOfPrintResult')
    TabOrder = 2
  end
  object ButtonClearFieldOfPrintResult: TButton
    Left = 352
    Top = 344
    Width = 73
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = ButtonClearFieldOfPrintResultClick
  end
end
