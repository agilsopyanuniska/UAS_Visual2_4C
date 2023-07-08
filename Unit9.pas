unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm9 = class(TForm)
    mm1: TMainMenu;
    ambah1: TMenuItem;
    Query1: TMenuItem;
    JOIN1: TMenuItem;
    LIKE1: TMenuItem;
    Siswa1: TMenuItem;
    Ortu1: TMenuItem;
    WaliKelas1: TMenuItem;
    Kelas1: TMenuItem;
    Poin1: TMenuItem;
    Hubungan1: TMenuItem;
    RiwayatPoin1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    SELECT1: TMenuItem;
    User1: TMenuItem;
    lbl4: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure Siswa1Click(Sender: TObject);
    procedure Ortu1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure RiwayatPoin1Click(Sender: TObject);
    procedure WaliKelas1Click(Sender: TObject);
    procedure Poin1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure JOIN1Click(Sender: TObject);
    procedure LIKE1Click(Sender: TObject);
    procedure SELECT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit10, Unit1, Unit3, Unit2, Unit4, Unit5, Unit6, Unit8, Unit7,
  Unit14, Unit15, Unit13;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
Form10.Show;
end;

procedure TForm9.Siswa1Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm9.Ortu1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm9.User1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm9.Hubungan1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm9.RiwayatPoin1Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm9.WaliKelas1Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm9.Poin1Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm9.Kelas1Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm9.JOIN1Click(Sender: TObject);
begin
Form14.Show;
end;

procedure TForm9.LIKE1Click(Sender: TObject);
begin
Form15.Show;
end;

procedure TForm9.SELECT1Click(Sender: TObject);
begin
Form13.Show;
end;

end.
