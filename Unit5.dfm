object Form5: TForm5
  Left = 197
  Top = 174
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
    Top = 119
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl2: TLabel
    Left = 464
    Top = 159
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object lbl3: TLabel
    Left = 464
    Top = 199
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl4: TLabel
    Left = 136
    Top = 71
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object lbl5: TLabel
    Left = 136
    Top = 119
    Width = 34
    Height = 13
    Caption = 'Poin ID'
  end
  object lbl6: TLabel
    Left = 136
    Top = 167
    Width = 34
    Height = 13
    Caption = 'Wali ID'
  end
  object lbl7: TLabel
    Left = 136
    Top = 207
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object lbl8: TLabel
    Left = 464
    Top = 71
    Width = 39
    Height = 13
    Caption = 'Kelas ID'
  end
  object lbl9: TLabel
    Left = 392
    Top = 16
    Width = 185
    Height = 23
    Caption = 'FORM RIWAYAT POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtp1: TDateTimePicker
    Left = 520
    Top = 119
    Width = 186
    Height = 21
    Date = 45105.313345810190000000
    Time = 45105.313345810190000000
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 520
    Top = 159
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 520
    Top = 199
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
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 240
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 528
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 624
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 144
    Top = 311
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
    Top = 119
    Width = 97
    Height = 17
    Caption = 'pilih'
    TabOrder = 10
    OnClick = chk1Click
  end
  object edt2: TEdit
    Left = 208
    Top = 71
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 208
    Top = 119
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'edt2'
  end
  object edt4: TEdit
    Left = 208
    Top = 167
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'edt2'
  end
  object edt5: TEdit
    Left = 208
    Top = 207
    Width = 121
    Height = 21
    TabOrder = 14
    Text = 'edt2'
  end
  object edt6: TEdit
    Left = 520
    Top = 71
    Width = 153
    Height = 21
    TabOrder = 15
    Text = 'edt2'
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 48
    Top = 271
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
    Top = 151
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from riwayat_poin')
    Params = <>
    Left = 48
    Top = 215
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.649099351900000000
    ReportOptions.LastChange = 45110.659214351850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 103
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 64.252010000000000000
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
            'ID')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 64.252010000000000000
          Width = 60.472480000000000000
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
            'Siswa ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Width = 64.252010000000000000
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
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Width = 64.252010000000000000
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
            'Wali ID')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 253.228510000000000000
          Width = 60.472480000000000000
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
        object Memo6: TfrxMemoView
          Left = 313.700990000000000000
          Width = 64.252010000000000000
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
            'Kelas ID')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 457.323130000000000000
          Width = 117.165430000000000000
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
            'Semester')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 574.488560000000000000
          Width = 79.370130000000000000
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
        object Memo9: TfrxMemoView
          Left = 377.953000000000000000
          Width = 79.370130000000000000
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
            'Tanggal')
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
        object Memo10: TfrxMemoView
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id'
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
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 64.252010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'siswa_id'
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
            '[frxDBDataset1."siswa_id"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 124.724490000000000000
          Width = 64.252010000000000000
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
        object Memo13: TfrxMemoView
          Left = 188.976500000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'wali_id'
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
            '[frxDBDataset1."wali_id"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 253.228510000000000000
          Width = 60.472480000000000000
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
        object Memo15: TfrxMemoView
          Left = 313.700990000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kelas_id'
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
            '[frxDBDataset1."kelas_id"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
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
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 457.323130000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'semester'
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
            '[frxDBDataset1."semester"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 574.488560000000000000
          Width = 79.370130000000000000
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
    Left = 376
    Top = 159
  end
end
