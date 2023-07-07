unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm11 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    btn1: TButton;
    btn2: TButton;
    lbl3: TLabel;
    cbb1: TComboBox;
    lbl4: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit10;

{$R *.dfm}

procedure TForm11.btn2Click(Sender: TObject);
begin
Form10.Show;
end;

procedure TForm11.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'",null)');
zqry1.ExecSQL;

ShowMessage('Daftar Sudah Berhasil');
end;

procedure TForm11.FormShow(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
cbb1.Text := '';
end;

end.
