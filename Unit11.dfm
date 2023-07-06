object Form11: TForm11
  Left = 239
  Top = 172
  Width = 928
  Height = 480
  Caption = 'Form Daftar'
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
    Left = 216
    Top = 80
    Width = 139
    Height = 13
    Caption = 'Buat Nama/Usernama Anda :'
  end
  object lbl2: TLabel
    Left = 216
    Top = 128
    Width = 145
    Height = 13
    Caption = 'Buat Password Anda             : '
  end
  object lbl3: TLabel
    Left = 216
    Top = 168
    Width = 143
    Height = 13
    Caption = 'Masukkan Level Anda            :'
  end
  object edt1: TEdit
    Left = 368
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 368
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object btn1: TButton
    Left = 272
    Top = 216
    Width = 75
    Height = 25
    Caption = 'DAFTAR'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 376
    Top = 216
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 3
    OnClick = btn2Click
  end
  object cbb1: TComboBox
    Left = 368
    Top = 168
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
    Left = 640
    Top = 56
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 640
    Top = 112
  end
end
