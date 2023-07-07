object Form14: TForm14
  Left = 255
  Top = 172
  Width = 928
  Height = 480
  Caption = 'Form JOIN'
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
  object lbl2: TLabel
    Left = 272
    Top = 40
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
    Left = 104
    Top = 112
    Width = 56
    Height = 13
    Caption = 'Tabel Siswa'
  end
  object lbl4: TLabel
    Left = 104
    Top = 168
    Width = 80
    Height = 13
    Caption = 'Tabel Orang Tua'
  end
  object lbl5: TLabel
    Left = 104
    Top = 224
    Width = 77
    Height = 13
    Caption = 'Tabel Wali Kelas'
  end
  object lbl6: TLabel
    Left = 592
    Top = 112
    Width = 49
    Height = 13
    Caption = 'Tabel Poin'
  end
  object lbl7: TLabel
    Left = 592
    Top = 168
    Width = 54
    Height = 13
    Caption = 'Tabel Kelas'
  end
  object lbl1: TLabel
    Left = 400
    Top = 8
    Width = 97
    Height = 23
    Caption = 'FORM JOIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 280
    Top = 72
    Width = 384
    Height = 23
    Caption = 'Pilih Kolom yang Akan Ditampilkan dari Tabel '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 368
    Top = 40
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'cbb1'
    OnChange = cbb1Change
    Items.Strings = (
      'Hubungan'
      'Riwayat Poin')
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 288
    Width = 897
    Height = 128
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 712
    Top = 256
    Width = 89
    Height = 25
    Caption = 'Jalankan Query'
    TabOrder = 2
    OnClick = btn1Click
  end
  object cbb2: TComboBox
    Left = 200
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbb2'
    Items.Strings = (
      'siswa_id'
      'nis'
      'nisn'
      'nama_siswa'
      'nik'
      'tempat_lahir'
      'tanggal_lahir'
      'jenis_kelamin'
      'tingkat_kelas'
      'jurusan'
      'wali_kelas'
      'alamat'
      'telp'
      'hp'
      'status')
  end
  object cbb3: TComboBox
    Left = 200
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'cbb2'
    Items.Strings = (
      'ortu_id'
      'nik'
      'nama'
      'pendidikan'
      'pekerjaan'
      'telp'
      'alamat'
      'jenis_kelamin'
      'agama'
      'status')
  end
  object cbb4: TComboBox
    Left = 200
    Top = 224
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'cbb2'
    Items.Strings = (
      'wali_id'
      'nik'
      'nip'
      'nama'
      'jenis_kelamin'
      'pendidikan'
      'telp'
      'alamat'
      'mata_pelajaran'
      'status')
  end
  object cbb5: TComboBox
    Left = 664
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'cbb2'
    Items.Strings = (
      'poin_id'
      'nama'
      'bobot'
      'jenis'
      'status')
  end
  object cbb6: TComboBox
    Left = 664
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'cbb2'
    Items.Strings = (
      'kelas_id'
      'nama'
      'jenis'
      'jurusan')
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
    Top = 136
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 40
    Top = 184
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 56
    Top = 240
  end
end
