unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm14 = class(TForm)
    lbl2: TLabel;
    cbb1: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    cbb5: TComboBox;
    cbb6: TComboBox;
    lbl1: TLabel;
    lbl8: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure cbb1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.cbb1Change(Sender: TObject);
begin
if cbb1.ItemIndex = 0 then
begin
cbb2.Text := '';
cbb3.Text := '';
cbb4.Text := '';
cbb5.Text := '';
cbb6.Text := '';
cbb2.Enabled := True;
cbb3.Enabled := True;
cbb4.Enabled := False;
cbb5.Enabled := False;
cbb6.Enabled := False;
end
else if cbb1.ItemIndex = 1 then
begin
cbb2.Text := '';
cbb3.Text := '';
cbb4.Text := '';
cbb5.Text := '';
cbb6.Text := '';
cbb4.Enabled := True;
cbb5.Enabled := True;
cbb6.Enabled := True;
cbb2.Enabled := True;
cbb3.Enabled := True;
end;
end;

procedure TForm14.FormShow(Sender: TObject);
begin
cbb2.Enabled := False;
cbb3.Enabled := False;
cbb4.Enabled := False;
cbb5.Enabled := False;
cbb6.Enabled := False;
cbb1.Text := '';
cbb2.Text := '';
cbb3.Text := '';
cbb4.Text := '';
cbb5.Text := '';
cbb6.Text := '';
end;

procedure TForm14.btn1Click(Sender: TObject);
begin
if cbb1.Text ='Hubungan' then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+'');
zqry1.SQL.Add('FROM hubungan');
zqry1.SQL.Add('INNER JOIN siswa ON siswa.siswa_id = hubungan.siswa_id');
zqry1.SQL.Add('INNER JOIN orang_tua ON orang_tua.ortu_id = hubungan.ortu_id');
zqry1.Open;
end else
if cbb1.Text='Riwayat Poin' then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('SELECT siswa.'+cbb2.Text+', orang_tua.'+cbb3.Text+',wali_kelas.'+cbb4.Text+',poin.'+cbb5.Text+',kelas.'+cbb6.Text+'');
  zqry1.SQL.Add('FROM riwayat_poin');
  zqry1.SQL.Add('INNER JOIN siswa ON siswa.siswa_id = riwayat_poin.siswa_id');
  zqry1.SQL.Add('INNER JOIN orang_tua ON orang_tua.ortu_id = riwayat_poin.ortu_id');
  zqry1.SQL.Add('INNER JOIN kelas ON kelas.kelas_id = riwayat_poin.kelas_id');
  zqry1.SQL.Add('INNER JOIN poin ON poin.poin_id = riwayat_poin.poin_id');
  zqry1.SQL.Add('INNER JOIN wali_kelas ON wali_kelas.wali_id = riwayat_poin.wali_id');
  zqry1.Open;
  end;
end;

end.
