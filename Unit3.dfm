object Form3: TForm3
  Left = 242
  Top = 148
  Width = 928
  Height = 480
  Caption = 'Tambah Data Orang Tua'
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
    Left = 40
    Top = 40
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 40
    Top = 80
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 40
    Top = 128
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object lbl4: TLabel
    Left = 40
    Top = 168
    Width = 57
    Height = 13
    Caption = 'PEKERJAAN'
  end
  object lbl5: TLabel
    Left = 40
    Top = 208
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl6: TLabel
    Left = 360
    Top = 32
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl7: TLabel
    Left = 360
    Top = 72
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl8: TLabel
    Left = 360
    Top = 120
    Width = 36
    Height = 13
    Caption = 'AGAMA'
  end
  object lbl9: TLabel
    Left = 360
    Top = 168
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt2: TEdit
    Left = 112
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt3: TEdit
    Left = 112
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt4: TEdit
    Left = 112
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object edt5: TEdit
    Left = 112
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 3
    Text = 'edt1'
  end
  object edt6: TEdit
    Left = 112
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 4
    Text = 'edt1'
  end
  object edt7: TEdit
    Left = 456
    Top = 32
    Width = 177
    Height = 21
    TabOrder = 5
    Text = 'edt1'
  end
  object edt8: TEdit
    Left = 456
    Top = 120
    Width = 177
    Height = 21
    TabOrder = 6
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 456
    Top = 72
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'cbb1'
    Items.Strings = (
      'Pria'
      'Perempuan')
  end
  object cbb2: TComboBox
    Left = 456
    Top = 160
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'cbb2'
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object btn1: TButton
    Left = 696
    Top = 40
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 696
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 696
    Top = 168
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 816
    Top = 40
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 816
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 816
    Top = 168
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 14
  end
  object dbgrd1: TDBGrid
    Left = 80
    Top = 264
    Width = 777
    Height = 145
    DataSource = ds1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
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
    Left = 312
    Top = 48
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from orang_tua')
    Params = <>
    Left = 312
    Top = 96
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 312
    Top = 152
  end
end
