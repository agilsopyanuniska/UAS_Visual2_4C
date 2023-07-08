object Form15: TForm15
  Left = 237
  Top = 170
  Width = 928
  Height = 480
  Caption = 'Form LIKE'
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
    Left = 400
    Top = 24
    Width = 94
    Height = 23
    Caption = 'FORM LIKE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 304
    Top = 64
    Width = 74
    Height = 19
    Caption = 'Pilih Tabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 304
    Top = 152
    Width = 76
    Height = 13
    Caption = 'Cari Data         :'
  end
  object lbl4: TLabel
    Left = 304
    Top = 112
    Width = 80
    Height = 13
    Caption = 'Kolom Acuan     :'
  end
  object cbb1: TComboBox
    Left = 400
    Top = 64
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbb1'
    OnChange = cbb1Change
    Items.Strings = (
      'siswa'
      'orang_tua'
      'wali_kelas'
      'hubungan'
      'riwayat_poin'
      'poin'
      'kelas')
  end
  object edt1: TEdit
    Left = 400
    Top = 152
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 416
    Top = 192
    Width = 89
    Height = 25
    Caption = 'Jalankan Query'
    TabOrder = 2
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 168
    Top = 256
    Width = 585
    Height = 120
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb2: TComboBox
    Left = 400
    Top = 112
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'cbb2'
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
    Left = 144
    Top = 96
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 192
    Top = 96
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 240
    Top = 96
  end
end
