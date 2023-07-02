object Form7: TForm7
  Left = 216
  Top = 160
  Width = 928
  Height = 480
  Caption = 'Tambah Data Kelas'
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
    Left = 136
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl2: TLabel
    Left = 136
    Top = 72
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object lbl3: TLabel
    Left = 136
    Top = 104
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object edt1: TEdit
    Left = 200
    Top = 32
    Width = 177
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 200
    Top = 72
    Width = 177
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt3: TEdit
    Left = 200
    Top = 104
    Width = 177
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 168
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 360
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 456
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 552
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 648
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 136
    Top = 192
    Width = 593
    Height = 137
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 32
    Top = 128
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
    Left = 24
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 32
    Top = 72
  end
end
