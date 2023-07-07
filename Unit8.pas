unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
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
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl5: TLabel;
    procedure bersih;
    procedure ukuran;
    procedure posisiawal;
    procedure sql;
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text := '';
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.posisiawal;
begin
btn1.Enabled := True;
btn2.Enabled := False;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
edt1.Enabled := False;
edt2.Enabled := False;
edt3.Enabled := False;
cbb1.Enabled := False;
bersih;
ukuran;
end;

procedure TForm8.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;
end;

procedure TForm8.ukuran;
begin
dbgrd1.Columns[0].Width := 45;
dbgrd1.Columns[1].Width := 150;
dbgrd1.Columns[2].Width := 50;
dbgrd1.Columns[3].Width := 100;
dbgrd1.Columns[4].Width := 80;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
edt3.Text := zqry1.FieldList[3].AsString;
cbb1.Text := zqry1.FieldList[4].AsString;
edt1.Enabled := true;
edt2.Enabled := True;
edt3.Enabled := True;
cbb1.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
ukuran;
end;

procedure TForm8.btn1Click(Sender: TObject);
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
cbb1.Enabled := True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (cbb1.Text='')then
begin
  ShowMessage('Nama , Bobot, Jenis atau Status tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

procedure TForm8.btn3Click(Sender: TObject);
var
  id : integer;
begin
ukuran;
id := zqry1.FieldByName('poin_id').AsInteger;
if (edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (cbb1.Text='')then
begin
  ShowMessage('Nama , Bobot, Jenis atau Status tidak boleh Kosong');
end
else if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString) and (cbb1.Text = zqry1.Fields[4].AsString) then
begin
 ShowMessage('Data Tidak Ada Perubahan');
 posisiawal;
end else
begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('Update poin set nama="'+edt1.Text+'",bobot="'+edt2.Text+'",jenis="'+edt3.Text+'",status="'+cbb1.Text+'" where poin_id="'+IntToStr(id)+'"');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Berhasil Diubah');
    posisiawal;
end;
end;


procedure TForm8.btn4Click(Sender: TObject);
var
id : integer;
begin
id := zqry1.FieldByName('poin_id').AsInteger;
if MessageDlg('Apakah Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from poin where poin_id="'+IntToStr(id)+'"');
zqry1.ExecSQL;

sql;
ShowMessage('Data Berhasil Terhapus');
posisiawal;
end;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
