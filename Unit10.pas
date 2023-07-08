unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm10 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    lbl4: TLabel;
    lbl5: TLabel;
    cbb1: TComboBox;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit11, Unit9, Unit12;

{$R *.dfm}

procedure TForm10.btn2Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm10.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user where nama = :nama and password = :password and level = :level');
zqry1.ParamByName('nama').AsString := edt1.Text;
zqry1.ParamByName('password').AsString := edt2.Text;
zqry1.ParamByName('level').AsString := cbb1.Text;
zqry1.Open;

if (cbb1.Text = '1') and (cbb1.Text = zqry1.Fields[3].AsString) and (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) then
  begin
      ShowMessage('Login berhasil sebagai admin!');
      posisiawal;
      Form9.Show;
  end
else if (cbb1.Text = '2') and (cbb1.Text = zqry1.Fields[3].AsString) and (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString)  then
  begin
      ShowMessage('Login berhasil sebagai user!');
      posisiawal;
      Form12.Show;
  end
else
begin
  lbl4.Caption := 'Anda blm terdaftar!';
end;

end;

procedure TForm10.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm10.posisiawal;
begin
edt1.Clear;
edt2.Clear;
cbb1.Text := '';
lbl4.Caption := '';
end;

end.
