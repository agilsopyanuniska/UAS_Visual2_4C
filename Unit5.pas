unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dtp1: TDateTimePicker;
    edt1: TEdit;
    cbb1: TComboBox;
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
    chk1: TCheckBox;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl9: TLabel;
    procedure bersih;
    procedure ukuran;
    procedure posisiawal;
    procedure sql;
    procedure chk1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Text := '';
end;

procedure TForm5.chk1Click(Sender: TObject);
begin
if chk1.Checked = True then
begin
dtp1.Enabled := True;
end
else
begin
  dtp1.Enabled := False;
end;

end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.posisiawal;
begin
dtp1.Enabled := False;
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
cbb1.Enabled := False;
chk1.Checked := False;
ukuran;
end;

procedure TForm5.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from riwayat_poin');
zqry1.Open;
end;

procedure TForm5.ukuran;
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
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
dtp1.Enabled := False;
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
cbb1.Enabled := True;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
ukuran;
edt1.Text := zqry1.FieldList[7].AsString;
edt2.Text := zqry1.FieldList[1].AsString;
edt3.Text := zqry1.FieldList[2].AsString;
edt4.Text := zqry1.FieldList[3].AsString;
edt5.Text := zqry1.FieldList[4].AsString;
dtp1.Date := zqry1.FieldList[6].AsDateTime;
edt6.Text := zqry1.FieldList[5].AsString;
cbb1.Text := zqry1.FieldList[8].AsString;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
edt4.Enabled := True;
edt5.Enabled := True;
edt6.Enabled := True;
cbb1.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
dtp1.Enabled := False;
chk1.Checked := False;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='')then
begin
  ShowMessage('Semester , Siswa ID, atau Poin ID tidak boleh Kosong');
end
else if (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage(' Wali ID atau Ortu ID tidak boleh Kosong');
end
else if (cbb1.Text='') or (edt6.Text='') then
begin
  ShowMessage('Status atau Kelas ID tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into riwayat_poin values(null,"'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'","'+edt1.Text+'","'+cbb1.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

procedure TForm5.btn3Click(Sender: TObject);
var
  id : integer;
begin
ukuran;
id := zqry1.FieldByName('id').AsInteger;
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='')then
begin
  ShowMessage('Semester , Siswa ID, atau Poin ID tidak boleh Kosong');
end
else if (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage(' Wali ID atau Ortu ID tidak boleh Kosong');
end
else if (cbb1.Text='') or (edt6.Text='') then
begin
  ShowMessage('Status atau Kelas ID tidak boleh Kosong');
end
else if (edt1.Text = zqry1.Fields[7].AsString) and (edt2.Text = zqry1.Fields[1].AsString) and (cbb1.Text = zqry1.Fields[8].AsString) and (edt3.Text = zqry1.Fields[2].AsString) and (dtp1.Date = zqry1.Fields[6].AsDateTime) and (edt4.Text = zqry1.Fields[3].AsString) and (edt5.Text = zqry1.Fields[4].AsString) and (edt6.Text = zqry1.Fields[5].AsString)then
begin
 ShowMessage('Data Tidak Ada Perubahan');
 posisiawal;
end else
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('Update riwayat_poin set siswa_id="'+edt2.Text+'",poin_id="'+edt3.Text+'",wali_id="'+edt4.Text+'",ortu_id="'+edt5.Text+'",kelas_id="'+edt6.Text+'",tanggal="'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'",semester="'+edt1.Text+'",status="'+cbb1.Text+'" where id="'+IntToStr(id)+'"');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Berhasil Diubah');
    posisiawal;
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
var
id : integer;
begin
id := zqry1.FieldByName('id').AsInteger;
if MessageDlg('Apakah Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from riwayat_poin where id="'+IntToStr(id)+'"');
zqry1.ExecSQL;

sql;
ShowMessage('Data Berhasil Terhapus');
posisiawal;
end;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
