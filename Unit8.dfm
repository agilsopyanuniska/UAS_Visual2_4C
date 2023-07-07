object Form8: TForm8
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Tambah Data Poin'
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
    Top = 77
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl2: TLabel
    Left = 144
    Top = 117
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object lbl3: TLabel
    Left = 144
    Top = 149
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object lbl4: TLabel
    Left = 144
    Top = 181
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl5: TLabel
    Left = 464
    Top = 32
    Width = 99
    Height = 23
    Caption = 'FORM POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 192
    Top = 77
    Width = 185
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 192
    Top = 117
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt3: TEdit
    Left = 192
    Top = 149
    Width = 193
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 192
    Top = 181
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbb1'
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object btn1: TButton
    Left = 160
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 352
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 448
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 544
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 640
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 9
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 128
    Top = 277
    Width = 657
    Height = 120
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 56
    Top = 152
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
    Left = 56
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 56
    Top = 88
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.313834386600000000
    ReportOptions.LastChange = 45110.317251886580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 93
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 302.362400000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Laporan Data Poin')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Poin ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 215.433210000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 404.409710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bobot')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 476.220780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'poin_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."poin_id"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 215.433210000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 404.409710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."bobot"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 476.220780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jenis"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 472
    Top = 149
  end
end
