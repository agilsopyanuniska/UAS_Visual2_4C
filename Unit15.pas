unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm15 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    cbb1: TComboBox;
    lbl3: TLabel;
    edt1: TEdit;
    btn1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    lbl4: TLabel;
    cbb2: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

procedure TForm15.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from '+cbb1.Text+' where '+cbb2.Text+' like "%'+edt1.Text+'%"');
zqry1.Open;
end;

procedure TForm15.FormShow(Sender: TObject);
begin
cbb1.Text := '';
cbb2.Text := '';
edt1.Clear;
end;

procedure TForm15.cbb1Change(Sender: TObject);
begin
if cbb1.ItemIndex = 0 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('siswa_id');
cbb2.Items.Add('nis');
cbb2.Items.Add('nisn');
cbb2.Items.Add('nama_siswa');
cbb2.Items.Add('nik');
cbb2.Items.Add('tempat_lahir');
cbb2.Items.Add('tanggal_lahir');
cbb2.Items.Add('jenis_kelamin');
cbb2.Items.Add('tingkat_kelas');
cbb2.Items.Add('jurusan');
cbb2.Items.Add('wali_kelas');
cbb2.Items.Add('alamat');
cbb2.Items.Add('telp');
cbb2.Items.Add('hp');
cbb2.Items.Add('status');

end
else if cbb1.ItemIndex = 1 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('ortu_id');
cbb2.Items.Add('nama');
cbb2.Items.Add('nik');
cbb2.Items.Add('jenis_kelamin');
cbb2.Items.Add('pendidikan');
cbb2.Items.Add('pekerjaan');
cbb2.Items.Add('alamat');
cbb2.Items.Add('telp');
cbb2.Items.Add('agama');
cbb2.Items.Add('status');
end
else if cbb1.ItemIndex = 2 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('wali_id');
cbb2.Items.Add('nik');
cbb2.Items.Add('nip');
cbb2.Items.Add('nama');
cbb2.Items.Add('jenis_kelamin');
cbb2.Items.Add('pendidikan');
cbb2.Items.Add('alamat');
cbb2.Items.Add('telp');
cbb2.Items.Add('mata_pelajaran');
cbb2.Items.Add('status');
end
else if cbb1.ItemIndex = 3 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('id');
cbb2.Items.Add('siswa_id');
cbb2.Items.Add('ortu_id');
cbb2.Items.Add('status_hub_anak');
cbb2.Items.Add('keterangan');
end
else if cbb1.ItemIndex = 4 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('siswa_id');
cbb2.Items.Add('id');
cbb2.Items.Add('ortu_id');
cbb2.Items.Add('kelas_id');
cbb2.Items.Add('wali_id');
cbb2.Items.Add('poin_id');
cbb2.Items.Add('tanggal');
cbb2.Items.Add('semester');
cbb2.Items.Add('status');
end
else if cbb1.ItemIndex = 5 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('poin_id');
cbb2.Items.Add('nama');
cbb2.Items.Add('bobot');
cbb2.Items.Add('jenis');
cbb2.Items.Add('status');
end
else if cbb1.ItemIndex = 6 then
begin
cbb2.Text := '';
cbb2.Items.Clear;
cbb2.Items.Add('kelas_id');
cbb2.Items.Add('nama');
cbb2.Items.Add('jenis');
cbb2.Items.Add('jurusan');
end;
end;

end.
