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
    OnClick = btn6Click
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
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sekolah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Delphi-7\Tugas UAS_Visual 2_4C\libmysql.dll'
    Left = 312
    Top = 48
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
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
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.289147291700000000
    ReportOptions.LastChange = 45110.294231724540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 200
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
          Left = 279.685220000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Laporan Data Orang Tua')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
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
            'Ortu ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000000000
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
            'Nama')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000000000
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
            'Pendidikan')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
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
            'Pekerjaan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
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
            'Alamat')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ortu_id'
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
            '[frxDBDataset1."ortu_id"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 226.771800000000000000
          Width = 98.267780000000000000
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
          Left = 325.039580000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pendidikan'
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
            '[frxDBDataset1."pendidikan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 423.307360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pekerjaan'
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
            '[frxDBDataset1."pekerjaan"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 521.575140000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
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
            '[frxDBDataset1."alamat"]')
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
    Left = 424
    Top = 200
  end
  object frxrprt2: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.294616921300000000
    ReportOptions.LastChange = 45110.299211840280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 488
    Top = 208
    Datasets = <
      item
        DataSet = frxdbdtst2
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
          Left = 249.448980000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Detail Laporan Data Orang Tua')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 170.078850000000000000
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
            'NIK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Width = 124.724490000000000000
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
            'Telp')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Width = 124.724490000000000000
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
            'Jenis Kelamin')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 427.086890000000000000
          Width = 124.724490000000000000
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
            'Agama')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 551.811380000000000000
          Width = 124.724490000000000000
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
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 177.637910000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 302.362400000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 427.086890000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'agama'
          DataSet = frxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."agama"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst2
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
  object frxdbdtst2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 528
    Top = 208
  end
end
