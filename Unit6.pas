unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    lbl9: TLabel;
    edt2: TEdit;
    cbb1: TComboBox;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    frxrprt2: TfrxReport;
    frxdbdtst2: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure ukuran;
    procedure posisiawal;
    procedure sql;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
cbb1.Text := '';
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.posisiawal;
begin
bersih;
btn1.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
btn6.Enabled := False;
edt1.Enabled := False;
edt2.Enabled := False;
edt3.Enabled := False;
edt4.Enabled := False;
edt5.Enabled := False;
edt6.Enabled := False;
edt7.Enabled := False;
edt8.Enabled := False;
cbb1.Enabled := False;
ukuran;
end;

procedure TForm6.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
end;

procedure TForm6.ukuran;
begin
dbgrd1.Columns[0].Width := 45;
dbgrd1.Columns[1].Width := 100;
dbgrd1.Columns[2].Width := 110;
dbgrd1.Columns[3].Width := 90;
dbgrd1.Columns[4].Width := 100;
dbgrd1.Columns[5].Width := 95;
dbgrd1.Columns[6].Width := 70;
dbgrd1.Columns[7].Width := 80;
dbgrd1.Columns[8].Width := 40;
dbgrd1.Columns[9].Width := 80;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
ukuran;
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
edt7.Text := zqry1.FieldList[3].AsString;
edt3.Text := zqry1.FieldList[4].AsString;
edt8.Text := zqry1.FieldList[5].AsString;;
edt4.Text := zqry1.FieldList[6].AsString;
edt5.Text := zqry1.FieldList[7].AsString;
edt6.Text := zqry1.FieldList[8].AsString;
cbb1.Text := zqry1.FieldList[9].AsString;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
edt7.Enabled := True;
edt8.Enabled := True;
cbb1.Enabled := True;
btn1.Enabled := False;
btn6.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := True;
btn5.Enabled := True;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled := False;
btn6.Enabled := True;
btn3.Enabled := True;
btn4.Enabled := False;
btn5.Enabled := False;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
edt7.Enabled := True;
edt8.Enabled := True;
cbb1.Enabled := True;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
ukuran;
bersih;
posisiawal;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='')then
begin
  ShowMessage('NIK , NIP, atau Jenis Kelamin tidak boleh Kosong');
end
else if (edt4.Text='') or (edt5.Text='') or (cbb1.Text='')then
begin
  ShowMessage('Telp , Alamat, atau Status tidak boleh Kosong');
end
else if (edt6.Text='') or (edt7.Text='') or (edt8.Text='')then
begin
  ShowMessage('Pendidikan , Nama, atau Mapel tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt7.Text+'","'+edt3.Text+'","'+edt8.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb1.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

procedure TForm6.btn4Click(Sender: TObject);
var
  id : integer;
begin
ukuran;
id := zqry1.FieldByName('wali_id').AsInteger;
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='')then
begin
  ShowMessage('NIK , NIP, atau Jenis Kelamin tidak boleh Kosong');
end
else if (edt4.Text='') or (edt5.Text='') or (cbb1.Text='')then
begin
  ShowMessage('Telp , Alamat, atau Status tidak boleh Kosong');
end
else if (edt6.Text='') or (edt7.Text='') or (edt8.Text='')then
begin
  ShowMessage('Pendidikan , Nama, atau Mapel tidak boleh Kosong');
end
else if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (cbb1.Text = zqry1.Fields[9].AsString) and (edt3.Text = zqry1.Fields[3].AsString) and (edt4.Text = zqry1.Fields[4].AsString) and (edt5.Text = zqry1.Fields[5].AsString) and (edt6.Text = zqry1.Fields[6].AsString) and (edt7.Text = zqry1.Fields[7].AsString) and (edt8.Text = zqry1.Fields[8].AsString) then
begin
 ShowMessage('Data Tidak Ada Perubahan');
 posisiawal;
end else
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('Update wali_kelas set nik="'+edt1.Text+'",nip="'+edt2.Text+'",nama="'+edt7.Text+'",jenis_kelamin="'+edt3.Text+'",pendidikan="'+edt8.Text+'",telp="'+edt4.Text+'",alamat="'+edt5.Text+'",mata_pelajaran="'+edt6.Text+'",status="'+cbb1.Text+'" where wali_id="'+IntToStr(id)+'"');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Berhasil Diubah');
    posisiawal;
end;
end;

procedure TForm6.btn5Click(Sender: TObject);
var
id : integer;
begin
id := zqry1.FieldByName('wali_id').AsInteger;
if MessageDlg('Apakah Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from wali_kelas where wali_id="'+IntToStr(id)+'"');
zqry1.ExecSQL;

sql;
ShowMessage('Data Berhasil Terhapus');
posisiawal;
end;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
