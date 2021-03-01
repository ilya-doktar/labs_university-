object MainFormOfLab6: TMainFormOfLab6
  Left = 476
  Top = 279
  Width = 681
  Height = 370
  Caption = #1051#1072#1073#1072' '#8470'6'
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
  object LabelSerialNumber: TLabel
    Left = 8
    Top = 48
    Width = 99
    Height = 13
    Caption = #1055#1086#1088#1103#1076#1082#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
  end
  object LabelFIO: TLabel
    Left = 8
    Top = 16
    Width = 36
    Height = 13
    Caption = #1060'.'#1048'.'#1054'.'
    Color = clSkyBlue
    ParentColor = False
  end
  object LabelHomeAdress: TLabel
    Left = 8
    Top = 88
    Width = 94
    Height = 13
    Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1072#1076#1088#1077#1089#1089
  end
  object LabelDateOfStatement: TLabel
    Left = 8
    Top = 128
    Width = 127
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1072' '#1091#1095#1077#1090
  end
  object EditSerialNumber: TEdit
    Left = 152
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditFIO: TEdit
    Left = 112
    Top = 16
    Width = 545
    Height = 21
    TabOrder = 1
  end
  object EditHomeAdress: TEdit
    Left = 152
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditDateOfStatement: TEdit
    Left = 152
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object SgData: TStringGrid
    Left = 8
    Top = 176
    Width = 657
    Height = 120
    RowCount = 2
    TabOrder = 4
    ColWidths = (
      64
      105
      127
      97
      138)
  end
  object BtnAddRecord: TButton
    Left = 288
    Top = 128
    Width = 105
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 5
    OnClick = BtnAddRecordClick
  end
  object BtnSave: TButton
    Left = 96
    Top = 304
    Width = 81
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = BtnSaveClick
  end
  object BtnLoad: TButton
    Left = 8
    Top = 304
    Width = 81
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 7
    OnClick = BtnLoadClick
  end
  object BtnDelRepeatedRecords: TButton
    Left = 272
    Top = 304
    Width = 153
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1074#1090#1086#1088#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
    TabOrder = 8
    OnClick = BtnDelRepeatedRecordsClick
  end
  object BtnExport: TButton
    Left = 184
    Top = 304
    Width = 81
    Height = 25
    Caption = #1069#1082#1089#1087#1086#1088#1090
    TabOrder = 9
    OnClick = BtnExportClick
  end
  object BtnClear: TButton
    Left = 560
    Top = 304
    Width = 107
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
    TabOrder = 10
    OnClick = BtnClearClick
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.dat'
    Filter = 
      #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093' (*.dat)|*.dat|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099 +
      ' (*.*)|*.*'
    Left = 320
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 
      #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093' (*.dat)|*.dat|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099 +
      ' (*.*)|*.*'
    Left = 368
    Top = 64
  end
end
