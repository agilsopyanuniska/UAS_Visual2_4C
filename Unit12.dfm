object Form12: TForm12
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
  object mm1: TMainMenu
    Left = 48
    Top = 16
    object QUERYYANGAKANDIGUNAKAN1: TMenuItem
      Caption = 'QUERY YANG AKAN DIGUNAKAN'
      object SELECT1: TMenuItem
        Caption = 'JOIN'
      end
      object LIKE1: TMenuItem
        Caption = 'LIKE'
      end
      object SELECT2: TMenuItem
        Caption = 'SELECT (*)'
      end
    end
  end
end