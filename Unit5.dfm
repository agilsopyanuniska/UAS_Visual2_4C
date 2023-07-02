object Form5: TForm5
  Left = 253
  Top = 246
  Width = 928
  Height = 480
  Caption = 'Tambah Data Riwayat Poin'
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
    Left = 464
    Top = 88
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl2: TLabel
    Left = 464
    Top = 128
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object lbl3: TLabel
    Left = 464
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl4: TLabel
    Left = 136
    Top = 40
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object lbl5: TLabel
    Left = 136
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Poin ID'
  end
  object lbl6: TLabel
    Left = 136
    Top = 136
    Width = 34
    Height = 13
    Caption = 'Wali ID'
  end
  object lbl7: TLabel
    Left = 136
    Top = 176
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object lbl8: TLabel
    Left = 464
    Top = 40
    Width = 39
    Height = 13
    Caption = 'Kelas ID'
  end
  object dtp1: TDateTimePicker
    Left = 520
    Top = 88
    Width = 186
    Height = 21
    Date = 45105.313345810190000000
    Time = 45105.313345810190000000
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 520
    Top = 128
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 520
    Top = 168
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'cbb1'
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object btn1: TButton
    Left = 144
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 528
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 624
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 144
    Top = 280
    Width = 569
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
  object chk1: TCheckBox
    Left = 720
    Top = 88
    Width = 97
    Height = 17
    Caption = 'pilih'
    TabOrder = 10
    OnClick = chk1Click
  end
  object edt2: TEdit
    Left = 208
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 208
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'edt2'
  end
  object edt4: TEdit
    Left = 208
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'edt2'
  end
  object edt5: TEdit
    Left = 208
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 14
    Text = 'edt2'
  end
  object edt6: TEdit
    Left = 520
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 15
    Text = 'edt2'
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 56
    Top = 224
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
    Left = 40
    Top = 120
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from riwayat_poin')
    Params = <>
    Left = 48
    Top = 184
  end
end
