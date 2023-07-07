unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, ComCtrls, frxClass,
  frxDBSet;

type
  TForm1 = class(TForm)
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    dtp1: TDateTimePicker;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    chk1: TCheckBox;
    btn6: TButton;
    lbl15: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure ukuran;
    procedure posisiawal;
    procedure sql;
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt11.Clear;
edt12.Clear;
cbb1.Text := '';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := True;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
edt7.Enabled := True;
edt8.Enabled := True;
edt9.Enabled := True;
edt10.Enabled := True;
edt11.Enabled := True;
edt12.Enabled := True;
cbb1.Enabled := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
ukuran;
bersih;
posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
ukuran;
bersih;
posisiawal;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
ukuran;
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
edt3.Text := zqry1.FieldList[3].AsString;
edt4.Text := zqry1.FieldList[4].AsString;
edt5.Text := zqry1.FieldList[5].AsString;
dtp1.Date := zqry1.FieldList[6].AsDateTime;
edt6.Text := zqry1.FieldList[7].AsString;
edt7.Text := zqry1.FieldList[8].AsString;
edt8.Text := zqry1.FieldList[9].AsString;
edt9.Text := zqry1.FieldList[10].AsString;
edt10.Text := zqry1.FieldList[11].AsString;
edt11.Text := zqry1.FieldList[12].AsString;
edt12.Text := zqry1.FieldList[13].AsString;
cbb1.Text := zqry1.FieldList[14].AsString;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
edt7.Enabled := True;
edt8.Enabled := True;
edt9.Enabled := True;
edt10.Enabled := True;
edt11.Enabled := True;
edt12.Enabled := True;
cbb1.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
end;

procedure TForm1.ukuran;
begin
dbgrd1.Columns[0].Width := 45;
dbgrd1.Columns[1].Width := 45;
dbgrd1.Columns[2].Width := 80;
dbgrd1.Columns[3].Width := 90;
dbgrd1.Columns[4].Width := 100;
dbgrd1.Columns[5].Width := 95;
dbgrd1.Columns[6].Width := 70;
dbgrd1.Columns[7].Width := 80;
dbgrd1.Columns[8].Width := 40;
dbgrd1.Columns[9].Width := 80;
dbgrd1.Columns[10].Width := 60;
dbgrd1.Columns[11].Width := 90;
dbgrd1.Columns[12].Width := 80;
dbgrd1.Columns[13].Width := 80;
dbgrd1.Columns[14].Width := 40;
end;

procedure TForm1.posisiawal;
begin
bersih;
btn1.Enabled := True;
btn2.Enabled := False;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
edt1.Enabled := False;
edt2.Enabled := False;
edt3.Enabled := False;
edt4.Enabled := False;
edt5.Enabled := False;
edt6.Enabled := False;
edt7.Enabled := False;
edt8.Enabled := False;
edt9.Enabled := False;
edt10.Enabled := False;
edt11.Enabled := False;
edt12.Enabled := False;
cbb1.Enabled := False;
ukuran;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='')then
begin
  ShowMessage('NIS , NISN, atau Nama tidak boleh Kosong');
end
else if (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage('NIK , Tempat Lahir, atau Tanggal Lahir tidak boleh Kosong');
end
else if (edt6.Text='') or (edt7.Text='') or (edt8.Text='')then
begin
  ShowMessage('Jenis Kelamin , Kelas, atau Jurusan tidak boleh Kosong');
end
else if (edt9.Text='') or (edt10.Text='') or (edt11.Text='')then
begin
  ShowMessage('Wali Kelas , Alamat, atau Telp tidak boleh Kosong');
end
else if (edt12.Text='') or (cbb1.Text='')then
begin
  ShowMessage('HP atau Status tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+edt12.Text+'","'+cbb1.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

procedure TForm1.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  id : integer;
begin
ukuran;
id := zqry1.FieldByName('siswa_id').AsInteger;
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='')then
begin
  ShowMessage('NIS , NISN, atau Nama tidak boleh Kosong');
end
else if (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage('NIK , Tempat Lahir, atau Tanggal Lahir tidak boleh Kosong');
end
else if (edt6.Text='') or (edt7.Text='') or (edt8.Text='')then
begin
  ShowMessage('Jenis Kelamin , Kelas, atau Jurusan tidak boleh Kosong');
end
else if (edt9.Text='') or (edt10.Text='') or (edt11.Text='')then
begin
  ShowMessage('Wali Kelas , Alamat, atau Telp tidak boleh Kosong');
end
else if (edt12.Text='') or (cbb1.Text='')then
begin
  ShowMessage('HP atau Status tidak boleh Kosong');
end
else if (edt1.Text = zqry1.Fields[1].AsString) and (dtp1.Date = zqry1.Fields[6].AsDateTime) then
begin
 ShowMessage('Data Tidak Ada Perubahan');
 posisiawal;
end else
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('Update siswa set nis="'+edt1.Text+'",nisn="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt5.Text+'",tanggal_lahir="'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'",jenis_kelamin="'+edt6.Text+'",tingkat_kelas="'+edt7.Text+'",jurusan="'+edt8.Text+'",wali_kelas="'+edt9.Text+'",alamat="'+edt10.Text+'",telp="'+edt11.Text+'",hp="'+edt12.Text+'",status="'+cbb1.Text+'" where siswa_id="'+IntToStr(id)+'"');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Berhasil Diubah');
    posisiawal;
end;
end;
procedure TForm1.btn4Click(Sender: TObject);
var
id : integer;
begin
id := zqry1.FieldByName('siswa_id').AsInteger;
if MessageDlg('Apakah Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from siswa where siswa_id="'+IntToStr(id)+'"');
zqry1.ExecSQL;

sql;
ShowMessage('Data Berhasil Terhapus');
posisiawal;
end;
end;
procedure TForm1.chk1Click(Sender: TObject);
begin
dtp1.Enabled:=True;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
