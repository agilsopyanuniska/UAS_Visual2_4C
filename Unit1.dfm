object Form1: TForm1
  Left = 196
  Top = 204
  Width = 928
  Height = 480
  Caption = 'Tambah Data Siswa'
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
    Left = 104
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object lbl2: TLabel
    Left = 104
    Top = 48
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object lbl3: TLabel
    Left = 104
    Top = 80
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object lbl4: TLabel
    Left = 104
    Top = 112
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl5: TLabel
    Left = 104
    Top = 144
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object lbl6: TLabel
    Left = 104
    Top = 176
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object lbl7: TLabel
    Left = 104
    Top = 208
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl8: TLabel
    Left = 528
    Top = 176
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object lbl9: TLabel
    Left = 528
    Top = 208
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object lbl10: TLabel
    Left = 528
    Top = 16
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object lbl11: TLabel
    Left = 528
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object lbl12: TLabel
    Left = 528
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object lbl13: TLabel
    Left = 528
    Top = 112
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl14: TLabel
    Left = 528
    Top = 144
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 296
    Width = 897
    Height = 145
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 184
    Top = 16
    Width = 225
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 184
    Top = 48
    Width = 225
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object edt3: TEdit
    Left = 184
    Top = 80
    Width = 225
    Height = 21
    TabOrder = 3
    Text = 'edt1'
  end
  object edt4: TEdit
    Left = 184
    Top = 112
    Width = 225
    Height = 21
    TabOrder = 4
    Text = 'edt1'
  end
  object edt5: TEdit
    Left = 184
    Top = 144
    Width = 225
    Height = 21
    TabOrder = 5
    Text = 'edt1'
  end
  object dtp1: TDateTimePicker
    Left = 184
    Top = 176
    Width = 146
    Height = 21
    Date = 45101.759552488420000000
    Time = 45101.759552488420000000
    Enabled = False
    TabOrder = 6
  end
  object edt6: TEdit
    Left = 184
    Top = 208
    Width = 225
    Height = 21
    TabOrder = 7
    Text = 'edt1'
  end
  object edt7: TEdit
    Left = 608
    Top = 16
    Width = 225
    Height = 21
    TabOrder = 8
    Text = 'edt1'
  end
  object edt8: TEdit
    Left = 608
    Top = 48
    Width = 225
    Height = 21
    TabOrder = 9
    Text = 'edt1'
  end
  object edt9: TEdit
    Left = 608
    Top = 80
    Width = 225
    Height = 21
    TabOrder = 10
    Text = 'edt1'
  end
  object edt10: TEdit
    Left = 608
    Top = 112
    Width = 225
    Height = 21
    TabOrder = 11
    Text = 'edt1'
  end
  object edt11: TEdit
    Left = 608
    Top = 144
    Width = 225
    Height = 21
    TabOrder = 12
    Text = 'edt1'
  end
  object edt12: TEdit
    Left = 608
    Top = 176
    Width = 225
    Height = 21
    TabOrder = 13
    Text = 'edt1'
  end
  object cbb1: TComboBox
    Left = 608
    Top = 208
    Width = 225
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Text = 'cbb1'
    Items.Strings = (
      'aktif'
      'tidak aktif')
  end
  object btn1: TButton
    Left = 184
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 15
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 304
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 16
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 424
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 17
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 544
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 18
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 664
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 19
    OnClick = btn5Click
  end
  object chk1: TCheckBox
    Left = 352
    Top = 184
    Width = 81
    Height = 17
    Caption = 'pilih'
    TabOrder = 20
    OnClick = chk1Click
  end
  object btn6: TButton
    Left = 768
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 21
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 32
    Top = 200
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
    LibraryLocation = 'libmysql.dll'
    Left = 32
    Top = 88
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 32
    Top = 144
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45102.422437025500000000
    ReportOptions.LastChange = 45102.429773217600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 48
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
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
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 283.464750000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Data Siswa')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 173.858380000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telepon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 298.582870000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kelas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 548.031850000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Wali Kelas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 650.079160000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 56.692950000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 173.858380000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 298.582870000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tingkat_kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 423.307360000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 548.031850000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 650.079160000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'siswa_id=siswa_id'
      'nis=nis'
      'nisn=nisn'
      'nama_siswa=nama_siswa'
      'nik=nik'
      'tempat_lahir=tempat_lahir'
      'tanggal_lahir=tanggal_lahir'
      'jenis_kelamin=jenis_kelamin'
      'tingkat_kelas=tingkat_kelas'
      'jurusan=jurusan'
      'wali_kelas=wali_kelas'
      'alamat=alamat'
      'telp=telp'
      'hp=hp'
      'status=status')
    DataSet = zqry1
    BCDToCurrency = False
    Left = 472
    Top = 96
  end
  object frxrprt2: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45104.881510717600000000
    ReportOptions.LastChange = 45104.882954328700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxrprt2ClickObject
    Left = 456
    Top = 152
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
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Detail Laporan Siswa')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Lahir')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tempat Lahir')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
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
        object Memo7: TfrxMemoView
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jurusan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HP')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'nis'
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
            '[frxDBDataset1."nis"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'nisn'
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
            '[frxDBDataset1."nisn"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'tempat_lahir'
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
            '[frxDBDataset1."tempat_lahir"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
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
            '[frxDBDataset1."tanggal_lahir"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
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
        object Memo15: TfrxMemoView
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'jurusan'
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
            '[frxDBDataset1."jurusan"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'hp'
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
            '[frxDBDataset1."hp"]')
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
    Left = 480
    Top = 184
  end
end
