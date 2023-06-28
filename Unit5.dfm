object Form5: TForm5
  Left = 192
  Top = 152
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
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 136
    Top = 40
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl2: TLabel
    Left = 136
    Top = 80
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object lbl3: TLabel
    Left = 136
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object dtp1: TDateTimePicker
    Left = 200
    Top = 40
    Width = 186
    Height = 21
    Date = 45105.313345810190000000
    Time = 45105.313345810190000000
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 200
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 200
    Top = 128
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'cbb1'
  end
  object btn1: TButton
    Left = 144
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
  end
  object btn2: TButton
    Left = 240
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
  end
  object btn3: TButton
    Left = 336
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
  end
  object btn4: TButton
    Left = 432
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
  end
  object btn5: TButton
    Left = 528
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
  end
  object btn6: TButton
    Left = 624
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 144
    Top = 224
    Width = 569
    Height = 120
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
