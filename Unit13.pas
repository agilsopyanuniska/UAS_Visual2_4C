unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm13 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    cbb1: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.FormShow(Sender: TObject);
begin
cbb1.Text := '';
end;

procedure TForm13.btn1Click(Sender: TObject);
begin
if cbb1.ItemIndex = 0 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
end
else if cbb1.ItemIndex = 1 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from orang_tua');
zqry1.Open;
end
else if cbb1.ItemIndex = 2 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
end
else if cbb1.ItemIndex = 3 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kelas');
zqry1.Open;
end
else if cbb1.ItemIndex = 4 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;
end
else if cbb1.ItemIndex = 5 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;
end
else if cbb1.ItemIndex = 6 then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from riwayat_poin');
zqry1.Open;
end;
end;

end.
