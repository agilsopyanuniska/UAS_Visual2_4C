unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
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
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
edt8.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
cbb1.Text := '';
cbb2.Text := '';
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.posisiawal;
begin
bersih;
btn1.Enabled := True;
btn2.Enabled := False;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
edt8.Enabled := False;
edt2.Enabled := False;
edt3.Enabled := False;
edt4.Enabled := False;
edt5.Enabled := False;
edt6.Enabled := False;
edt7.Enabled := False;
cbb1.Enabled := False;
cbb2.Enabled := False;
ukuran;
end;

procedure TForm3.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from orang_tua');
zqry1.Open;
end;

procedure TForm3.ukuran;
begin
dbgrd1.Columns[0].Width := 45;
dbgrd1.Columns[2].Width := 100;
dbgrd1.Columns[2].Width := 80;
dbgrd1.Columns[3].Width := 90;
dbgrd1.Columns[4].Width := 100;
dbgrd1.Columns[5].Width := 95;
dbgrd1.Columns[6].Width := 70;
dbgrd1.Columns[7].Width := 80;
dbgrd1.Columns[8].Width := 40;
dbgrd1.Columns[9].Width := 80;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
ukuran;
edt2.Text := zqry1.FieldList[1].AsString;
edt3.Text := zqry1.FieldList[2].AsString;
edt4.Text := zqry1.FieldList[3].AsString;
edt5.Text := zqry1.FieldList[4].AsString;
edt6.Text := zqry1.FieldList[5].AsString;
edt7.Text := zqry1.FieldList[6].AsString;
edt8.Text := zqry1.FieldList[8].AsString;
cbb1.Text := zqry1.FieldList[7].AsString;
cbb2.Text := zqry1.FieldList[9].AsString;
edt8.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
edt7.Enabled := True;
cbb1.Enabled := True;
cbb2.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if (edt2.Text='') or (edt3.Text='') or (edt4.Text='')then
begin
  ShowMessage('NIK , Nama, atau Pendidikan tidak boleh Kosong');
end
else if (edt5.Text='') or (edt6.Text='') then
begin
  ShowMessage('Pekerjaan atau Telp tidak boleh Kosong');
end
else if (edt7.Text='') or (edt8.Text='') or (cbb1.Text='') or (cbb2.Text='') then
begin
  ShowMessage('Jenis Kelamin , Agama, Alamat , atau Status tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into orang_tua values(null,"'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+cbb1.Text+'","'+edt8.Text+'","'+cbb2.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := True;
btn6.Enabled := True;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
edt7.Enabled := True;
edt8.Enabled := True;
cbb1.Enabled := True;
cbb2.Enabled := True;
end;

procedure TForm3.btn3Click(Sender: TObject);
var
  id : integer;
begin
ukuran;
id := zqry1.FieldByName('ortu_id').AsInteger;
if (edt2.Text='') or (edt3.Text='') or (edt4.Text='')then
begin
  ShowMessage('NIK , Nama, atau Pendidikan tidak boleh Kosong');
end
else if (edt5.Text='') or (edt6.Text='') then
begin
  ShowMessage('Pekerjaan atau Telp tidak boleh Kosong');
end
else if (edt7.Text='') or (edt8.Text='') or (cbb1.Text='') or (cbb2.Text='') then
begin
  ShowMessage('Jenis Kelamin , Agama, Alamat , atau Status tidak boleh Kosong');
end
else if (edt2.Text = zqry1.Fields[1].AsString) and (edt3.Text = zqry1.Fields[2].AsString) and (cbb1.Text = zqry1.Fields[7].AsString) and (cbb2.Text = zqry1.Fields[9].AsString) and (edt4.Text = zqry1.Fields[3].AsString) and (edt5.Text = zqry1.Fields[4].AsString) and (edt6.Text = zqry1.Fields[5].AsString) and (edt7.Text = zqry1.Fields[6].AsString) and (edt8.Text = zqry1.Fields[7].AsString)then
begin
 ShowMessage('Data Tidak Ada Perubahan');
 posisiawal;
end else
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('Update orang_tua set agama="'+edt8.Text+'",nik="'+edt2.Text+'",nama="'+edt3.Text+'",pendidikan="'+edt4.Text+'",pekerjaan="'+edt5.Text+'",telp="'+edt6.Text+'",alamat="'+edt7.Text+'",jenis_kelamin="'+cbb1.Text+'",status="'+cbb2.Text+'" where ortu_id="'+IntToStr(id)+'"');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Berhasil Diubah');
    posisiawal;
end;
end;


procedure TForm3.btn4Click(Sender: TObject);
var
id : integer;
begin
id := zqry1.FieldByName('ortu_id').AsInteger;
if MessageDlg('Apakah Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from orang_tua where ortu_id="'+IntToStr(id)+'"');
zqry1.ExecSQL;

sql;
ShowMessage('Data Berhasil Terhapus');
posisiawal;
end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
ukuran;
bersih;
posisiawal;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
