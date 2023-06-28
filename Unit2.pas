unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure ukuran;
    procedure posisiawal;
    procedure sql;
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled := False;
btn2.Enabled := True;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := True;
edt1.Enabled := true;
edt2.Enabled := True;
cbb1.Enabled := True;
cbb2.Enabled := True;
end;

procedure TForm2.bersih;
begin
edt1.Clear;
edt2.Clear;
cbb1.Text := '';
cbb2.Text := '';
end;

procedure TForm2.posisiawal;
begin
bersih;
ukuran;
btn1.Enabled := True;
btn2.Enabled := False;
btn3.Enabled := False;
btn4.Enabled := False;
btn5.Enabled := False;
edt1.Enabled := False;
edt2.Enabled := False;
cbb1.Enabled := False;
cbb2.Enabled := False;
end;

procedure TForm2.sql;
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
end;

procedure TForm2.ukuran;
begin
dbgrd1.Columns[0].Width := 45;
dbgrd1.Columns[1].Width := 45;
dbgrd1.Columns[2].Width := 80;
dbgrd1.Columns[3].Width := 90;
dbgrd1.Columns[4].Width := 100;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
ukuran;
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
cbb1.Text := zqry1.FieldList[3].AsString;
cbb2.Text := zqry1.FieldList[4].AsString;
edt1.Enabled := true;
edt2.Enabled := True;
cbb1.Enabled := True;
cbb2.Enabled := True;
btn1.Enabled := False;
btn2.Enabled := False;
btn3.Enabled := True;
btn4.Enabled := True;
btn5.Enabled := True;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if (edt1.Text='') or (edt2.Text='') or (cbb1.Text='') or (cbb2.Text='') then
begin
  ShowMessage('Nama , Password, Level , atau Status tidak boleh Kosong');
end else
    zqry1.SQL.Clear;
    zqry1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
    zqry1.ExecSQL;

    sql;
    ShowMessage('Data Tersimpan');
    ukuran;
    posisiawal;
end;

end.
