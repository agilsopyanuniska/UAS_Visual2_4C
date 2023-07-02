object Form4: TForm4
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'TAMBAH DATA HUBUNGAN'
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
    Left = 120
    Top = 16
    Width = 126
    Height = 13
    Caption = 'STATUS HUBUNGAN ANAK'
  end
  object lbl2: TLabel
    Left = 120
    Top = 64
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object lbl3: TLabel
    Left = 120
    Top = 96
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object lbl4: TLabel
    Left = 120
    Top = 128
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object edt1: TEdit
    Left = 264
    Top = 16
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 264
    Top = 56
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 96
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 576
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 7
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 248
    Width = 633
    Height = 137
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 264
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 264
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'edt4'
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 16
    Top = 168
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost:3306'
    Port = 3306
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi-7\Tugas UAS_Visual 2_4C\libmysql.dll'
    Left = 16
    Top = 64
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 16
    Top = 112
  end
end
