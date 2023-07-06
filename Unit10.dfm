object Form10: TForm10
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 408
    Top = 80
    Width = 127
    Height = 23
    Caption = 'FORM LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 288
    Top = 136
    Width = 87
    Height = 13
    Caption = 'Masukkan Nama : '
  end
  object lbl3: TLabel
    Left = 288
    Top = 184
    Width = 106
    Height = 13
    Caption = 'Masukkan Password : '
  end
  object lbl4: TLabel
    Left = 408
    Top = 272
    Width = 16
    Height = 13
    Caption = 'lbl4'
  end
  object lbl5: TLabel
    Left = 288
    Top = 232
    Width = 82
    Height = 13
    Caption = 'Masukkan Level :'
  end
  object edt1: TEdit
    Left = 400
    Top = 136
    Width = 169
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 400
    Top = 184
    Width = 169
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 296
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 480
    Top = 296
    Width = 81
    Height = 25
    Caption = 'Sign Up'
    TabOrder = 3
    OnClick = btn2Click
  end
  object cbb1: TComboBox
    Left = 400
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'cbb1'
    Items.Strings = (
      '1'
      '2')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi-7\Tugas UAS_Visual 2_4C\libmysql.dll'
    Left = 712
    Top = 120
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 712
    Top = 176
  end
end
