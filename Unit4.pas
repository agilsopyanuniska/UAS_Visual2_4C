unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
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
    lbl3: TLabel;
    lbl4: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure ukuran;
    procedure posisiawal;
    procedure sql;
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := True;
btn6.Enabled := False;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := true;
edt4.Enabled := True;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
ukuran;
edt3.Text := zqry1.FieldList[1].AsString;
edt4.Text := zqry1.FieldList[2].AsString;
edt1.Text := zqry1.FieldList[3].AsString;
edt2.Text := zqry1.FieldList[4].AsString;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := true;
edt4.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
btn6.Enabled := False;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') then
begin
  ShowMessage(' ID Siswa , ID Ortu , Status atau Keterangan tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into hubungan values(null,"'+edt3.Text+'","'+edt4.Text+'","'+edt1.Text+'","'+edt2.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

procedure TForm4.btn3Click(Sender: TObject);
var
  id : integer;
begin
ukuran;
id := zqry1.FieldByName('id').AsInteger;
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') then
begin
  ShowMessage(' ID Siswa , ID Ortu , Status atau Keterangan tidak boleh Kosong');
end
else if (edt1.Text = zqry1.Fields[3].AsString) and (edt2.Text = zqry1.Fields[4].AsString) and (edt3.Text = zqry1.Fields[1].AsString) and (edt4.Text = zqry1.Fields[2].AsString) then
begin
 ShowMessage('Data Tidak Ada Perubahan');
 posisiawal;
end else
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('Update hubungan set siswa_id="'+edt3.Text+'",ortu_id="'+edt4.Text+'",status_hub_anak="'+edt1.Text+'",keterangan="'+edt2.Text+'" where id="'+IntToStr(id)+'"');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Berhasil Diubah');
    posisiawal;
end;
end;

procedure TForm4.btn4Click(Sender: TObject);
var
id : integer;
begin
id := zqry1.FieldByName('id').AsInteger;
if MessageDlg('Apakah Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from hubungan where id="'+IntToStr(id)+'"');
zqry1.ExecSQL;

sql;
ShowMessage('Data Berhasil Terhapus');
posisiawal;
end;
end;
procedure TForm4.posisiawal;
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
ukuran;
end;

procedure TForm4.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;
end;

procedure TForm4.ukuran;
begin
dbgrd1.Columns[0].Width := 45;
dbgrd1.Columns[1].Width := 45;
dbgrd1.Columns[2].Width := 45;
dbgrd1.Columns[3].Width := 90;
dbgrd1.Columns[4].Width := 100;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
