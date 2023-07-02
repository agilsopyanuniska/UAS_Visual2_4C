object Form2: TForm2
  Left = 214
  Top = 192
  Width = 928
  Height = 480
  Caption = 'Tambah Data User'
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
    Left = 144
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl2: TLabel
    Left = 144
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lbl3: TLabel
    Left = 144
    Top = 96
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object lbl4: TLabel
    Left = 144
    Top = 136
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 216
    Top = 32
    Width = 209
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 216
    Top = 64
    Width = 209
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object cbb1: TComboBox
    Left = 216
    Top = 96
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'cbb1'
    Items.Strings = (
      '1'
      '2')
  end
  object cbb2: TComboBox
    Left = 216
    Top = 136
    Width = 209
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbb2'
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object btn1: TButton
    Left = 176
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 352
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 440
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 536
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 8
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 176
    Top = 248
    Width = 585
    Height = 120
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn6: TButton
    Left = 624
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 10
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 72
    Top = 280
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3307
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi-7\Tugas UAS_Visual 2_4C\libmysql.dll'
    Left = 64
    Top = 160
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 72
    Top = 224
  end
end
