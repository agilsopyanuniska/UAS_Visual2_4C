object Form13: TForm13
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form SELECT (*)'
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
    Left = 336
    Top = 48
    Width = 273
    Height = 29
    Caption = 'FORM QUERY SELECT (*)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 304
    Top = 128
    Width = 81
    Height = 21
    Caption = 'Pilih Tabel '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 400
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbb1'
    Items.Strings = (
      'siswa'
      'orang tua'
      'wali kelas'
      'kelas'
      'poin'
      'hubungan'
      'riwayat poin')
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 232
    Width = 865
    Height = 153
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 392
    Top = 176
    Width = 99
    Height = 25
    Caption = 'Jalankan QUERY'
    TabOrder = 2
    OnClick = btn1Click
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
    Top = 136
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 704
    Top = 160
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 808
    Top = 160
  end
end
