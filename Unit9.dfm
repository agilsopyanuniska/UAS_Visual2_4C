object Form9: TForm9
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'MENU ADMIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 312
    Top = 88
    Width = 343
    Height = 33
    Caption = 'Aplikasi Sederhana CRUD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 336
    Top = 144
    Width = 294
    Height = 33
    Caption = 'NAMA : SOPYAN AGIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 352
    Top = 200
    Width = 259
    Height = 33
    Caption = 'NPM : 2110010152'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 416
    Top = 24
    Width = 172
    Height = 23
    Caption = 'FORM MENU ADMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 784
    Top = 8
    Width = 97
    Height = 57
    Caption = 'Log Out'
    TabOrder = 0
    OnClick = btn1Click
  end
  object mm1: TMainMenu
    Left = 24
    Top = 16
    object ambah1: TMenuItem
      Caption = 'Tambah Data'
      object Siswa1: TMenuItem
        Caption = 'Siswa'
        OnClick = Siswa1Click
      end
      object Ortu1: TMenuItem
        Caption = 'Ortu'
        OnClick = Ortu1Click
      end
      object WaliKelas1: TMenuItem
        Caption = 'Wali Kelas'
        OnClick = WaliKelas1Click
      end
      object Kelas1: TMenuItem
        Caption = 'Kelas'
        OnClick = Kelas1Click
      end
      object Poin1: TMenuItem
        Caption = 'Poin'
        OnClick = Poin1Click
      end
      object Hubungan1: TMenuItem
        Caption = 'Hubungan'
        OnClick = Hubungan1Click
      end
      object RiwayatPoin1: TMenuItem
        Caption = 'Riwayat Poin'
        OnClick = RiwayatPoin1Click
      end
      object User1: TMenuItem
        Caption = 'User'
        OnClick = User1Click
      end
    end
    object Query1: TMenuItem
      Caption = 'Query'
      object JOIN1: TMenuItem
        Caption = 'JOIN'
        OnClick = JOIN1Click
      end
      object LIKE1: TMenuItem
        Caption = 'LIKE'
        OnClick = LIKE1Click
      end
      object SELECT1: TMenuItem
        Caption = 'SELECT (*)'
        OnClick = SELECT1Click
      end
    end
  end
end
