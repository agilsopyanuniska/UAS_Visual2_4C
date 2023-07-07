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
    Top = 66
    Width = 126
    Height = 13
    Caption = 'STATUS HUBUNGAN ANAK'
  end
  object lbl2: TLabel
    Left = 120
    Top = 114
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object lbl3: TLabel
    Left = 120
    Top = 146
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object lbl4: TLabel
    Left = 120
    Top = 178
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object lbl5: TLabel
    Left = 376
    Top = 16
    Width = 154
    Height = 23
    Caption = 'FORM HUBUNGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 264
    Top = 66
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 264
    Top = 106
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 96
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 576
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 7
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 96
    Top = 298
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
    Top = 138
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 264
    Top = 178
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'edt4'
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 16
    Top = 218
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
    Left = 16
    Top = 114
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 16
    Top = 162
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.636386574100000000
    ReportOptions.LastChange = 45110.647828148150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 90
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
          Left = 238.110390000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Data Hubungan')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 158.740260000000000000
          Width = 68.031540000000000000
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
        object Memo8: TfrxMemoView
          Left = 226.771800000000000000
          Width = 68.031540000000000000
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
        object Memo9: TfrxMemoView
          Left = 294.803340000000000000
          Width = 68.031540000000000000
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
        object Memo10: TfrxMemoView
          Left = 362.834880000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status_hub_anak'
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
            '[frxDBDataset1."status_hub_anak"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 510.236550000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'keterangan'
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
            '[frxDBDataset1."keterangan"]')
          ParentFont = False
        end
      end
      object Memo6: TfrxMemoView
        Left = 510.236550000000000000
        Top = 60.472480000000000000
        Width = 147.401670000000000000
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
          'Keterangan')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 362.834880000000000000
        Top = 60.472480000000000000
        Width = 147.401670000000000000
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
          'Status Hubungan Anak')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 294.803340000000000000
        Top = 60.472480000000000000
        Width = 68.031540000000000000
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
        Top = 60.472480000000000000
        Width = 68.031540000000000000
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
      object Memo2: TfrxMemoView
        Left = 158.740260000000000000
        Top = 60.472480000000000000
        Width = 68.031540000000000000
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
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 576
    Top = 146
  end
end
