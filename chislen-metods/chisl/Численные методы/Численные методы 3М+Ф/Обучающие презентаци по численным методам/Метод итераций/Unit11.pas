unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label6: TLabel;
    Image1: TImage;
    Button2: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EnableControls(Yes: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const x0 = 500; y0 =94;
      hx = 492; hy = 445;

      FileName = 'Graphic.bmp';
      a = -1; b = 1;

var Eps,
    x1,x2: Real;
    Step: Integer;

function u(x: Real): Real;
begin
u := exp(-1.1-x)-0.8;
end;

procedure ColorPoint(x,y: Integer);
const r = 3;
begin
Form1.Image1.Canvas.Ellipse(x-r,y-r,x+r,y+r);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Image1.Picture.LoadFromFile(FileName);
end;

procedure TForm1.EnableControls(Yes: Boolean);
begin
Edit1.ReadOnly := not Yes;
Button1.Enabled := Yes;
Button2.Enabled := not Yes;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Eps := StrToFloat(Edit1.Text);
Eps := Abs(Eps);
Edit1.Text := FloatToStr(Eps);
Eps := Eps*(1-q)/q;
Label6.Caption := 'D = Eps*(1-q)/q = '+FloatToStr(Eps);
EnableControls(false);
Step := -1;
x1 := a; x2 := a;

Image1.Canvas.MoveTo(x0+Round(x2*hx),y0-Round(u(x2)*hy));

Image1.Canvas.Pen.Color := clNavy;
Button2Click(Sender);
end;

procedure TForm1.Button2Click(Sender: TObject);
var CheckParam: Real;
    xpr: Real;
begin
Step := Step+1; Label8.Caption := 'Номер шага: '+IntToStr(Step);
xpr := x1; x1 := x2; Label9.Caption := 'x[n] = '+FloatToStr(x1);
x2 := u(x1); Label11.Caption := 'u(x[n]) = '+FloatToStr(x2);
Image1.Canvas.LineTo(x0+Round(xpr*hx),y0-Round(x2*hy));
Image1.Canvas.LineTo(x0+Round(x1*hx),y0-Round(x2*hy));
ColorPoint(x0+Round(x1*hx),y0-Round(x2*hy));
CheckParam := Abs(x1-x2)-Eps;
Label10.Caption := 'abs(x[n]-x[n+1])-D = '+FloatToStr(CheckParam);
if CheckParam < 0 then
begin
ShowMessage('Корень уравнения: x = '+FloatToStr(x1)+'.');
EnableControls(true);
Image1.Picture.LoadFromFile(FileName);

end;
end;

end.
