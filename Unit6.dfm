object Form6: TForm6
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Tambah Data Wali Kelas'
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
    Left = 128
    Top = 24
    Width = 38
    Height = 13
    Caption = 'NIK/NIP'
  end
  object lbl2: TLabel
    Left = 128
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 128
    Top = 88
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl4: TLabel
    Left = 128
    Top = 128
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object lbl5: TLabel
    Left = 528
    Top = 24
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object lbl6: TLabel
    Left = 528
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl7: TLabel
    Left = 528
    Top = 88
    Width = 72
    Height = 13
    Caption = 'Mata Pelajaran'
  end
  object lbl8: TLabel
    Left = 528
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl9: TLabel
    Left = 352
    Top = 16
    Width = 14
    Height = 29
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 192
    Top = 24
    Width = 153
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 376
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object cbb1: TComboBox
    Left = 616
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'cbb1'
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object edt3: TEdit
    Left = 192
    Top = 88
    Width = 153
    Height = 21
    TabOrder = 3
    Text = 'edt1'
  end
  object edt4: TEdit
    Left = 616
    Top = 24
    Width = 153
    Height = 21
    TabOrder = 4
    Text = 'edt1'
  end
  object edt5: TEdit
    Left = 616
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 5
    Text = 'edt1'
  end
  object edt6: TEdit
    Left = 616
    Top = 88
    Width = 153
    Height = 21
    TabOrder = 6
    Text = 'edt1'
  end
  object edt7: TEdit
    Left = 192
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 7
    Text = 'edt1'
  end
  object edt8: TEdit
    Left = 192
    Top = 128
    Width = 153
    Height = 21
    TabOrder = 8
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 160
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 640
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 10
  end
  object btn3: TButton
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 448
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 13
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 544
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 14
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 160
    Top = 232
    Width = 609
    Height = 120
    DataSource = ds1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 432
    Top = 120
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi-7\Tugas UAS_Visual 2_4C\libmysql.dll'
    Left = 376
    Top = 56
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 432
    Top = 64
  end
end
