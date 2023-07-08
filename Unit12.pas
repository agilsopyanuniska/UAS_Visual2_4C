unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm12 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    mm1: TMainMenu;
    QUERYYANGAKANDIGUNAKAN1: TMenuItem;
    SELECT1: TMenuItem;
    LIKE1: TMenuItem;
    SELECT2: TMenuItem;
    lbl4: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure SELECT1Click(Sender: TObject);
    procedure LIKE1Click(Sender: TObject);
    procedure SELECT2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit10, Unit14, Unit15, Unit13;

{$R *.dfm}

procedure TForm12.btn1Click(Sender: TObject);
begin
Form10.Show;
end;

procedure TForm12.SELECT1Click(Sender: TObject);
begin
Form14.Show;
end;

procedure TForm12.LIKE1Click(Sender: TObject);
begin
Form15.Show;
end;

procedure TForm12.SELECT2Click(Sender: TObject);
begin
Form13.Show;
end;

end.
