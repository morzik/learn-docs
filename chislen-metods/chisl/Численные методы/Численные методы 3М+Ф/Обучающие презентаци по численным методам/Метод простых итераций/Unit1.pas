unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    Label1: TLabel;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    Button3: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure zap;
    procedure iter;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  n,k:byte;
  a:array[0..100,0..100]of real;
  b,x,y:array[0..100]of real;
  m,q1,q2,q3,q,eps:real;

implementation

uses Math, unit2, unit3, unit4, unit5 ;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
n:=StrToInt(Edit2.Text);
StringGrid1.Width:=31*n+4;
StringGrid1.Height:=21*n+4;
StringGrid1.ColCount:=n;
StringGrid1.RowCount:=n;
Button2.Top:=StringGrid1.Top+StringGrid1.Height+15;
Button2.Width:=StringGrid1.Width+52;
StringGrid1.Enabled:=true;
Button2.Enabled:=true;
StringGrid5.Left:=StringGrid1.Left+StringGrid1.Width+17;
StringGrid5.Height:=StringGrid1.Height;
StringGrid5.RowCount:=n;
StringGrid6.Left:=StringGrid5.Left+StringGrid5.Width+17;
StringGrid6.Height:=StringGrid1.Height;
StringGrid6.RowCount:=n;
StringGrid2.Left:=StringGrid6.Left+StringGrid6.Width+17;
StringGrid2.Width:=StringGrid1.Width;
StringGrid2.Height:=StringGrid1.Height;
StringGrid2.ColCount:=n;
StringGrid2.RowCount:=n;
StringGrid3.Left:=StringGrid2.Left+StringGrid2.Width+17;
StringGrid3.Height:=StringGrid1.Height;
StringGrid3.RowCount:=n;
StringGrid4.Left:=StringGrid3.Left+StringGrid3.Width+17;
StringGrid4.Height:=StringGrid1.Height;
StringGrid4.RowCount:=n;
Button3.Top:=StringGrid2.Top+StringGrid2.Height+15;
Button3.Width:=StringGrid2.Width+156;
Button3.Left:=StringGrid6.Left;
form2.ShowHint:=true;
form2.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
begin
for i:=0 to n-1 do begin
  for j:=0 to n-1 do
    if i<>j then a[i,j]:=-StrToFloat(StringGrid1.Cells[j,i])/StrToFloat(StringGrid1.Cells[i,i])
    else a[i,i]:=0;
  b[i]:=StrToFloat(StringGrid5.Cells[0,i])/StrToFloat(StringGrid1.Cells[i,i]);
  x[i]:=0;
  y[i]:=b[i];
end;
q1:=0;
for i:=0 to n-1 do begin
  m:=0;
  for j:=0 to n-1 do m:=m+abs(a[i,j]);
  if q1<m then q1:=m;
end;
Label4.Caption:='q1='+FloatToStr(RoundTo(q1,-7));
m:=0;
for i:=0 to n-1 do
  for j:=0 to n-1 do m:=m+a[i,j]*a[i,j];
q2:=sqrt(m);
Label5.Caption:='q2='+FloatToStr(RoundTo(q2,-7));
q3:=0;
for j:=0 to n-1 do begin
  m:=0;
  for i:=0 to n-1 do m:=m+abs(a[i,j]);
  if q3<m then q3:=m;
end;
Label6.Caption:='q&&='+FloatToStr(RoundTo(q3,-7));
if q1<q2 then q:=q1 else q:=q2;
if q>q3 then q:=q3;
if q<1 then begin
  eps:=StrToFloat(Edit1.Text)*(1-q)/q;
  Label1.Caption:='q='+FloatToStr(RoundTo(q,-7));
  for i:=0 to n-1 do begin
    for j:=0 to n-1 do StringGrid2.Cells[j,i]:=FloatToStr(a[i,j]);
    StringGrid4.Cells[0,i]:=FloatToStr(b[i]);
  end;
  k:=0;
  Button3Click(nil);
  Button3.Enabled:=true;
end
else begin
  Label1.Caption:='q>1! ����� �� ��������';
  Button3.Enabled:=false;
  StringGrid2.Refresh;
end;
form4.Button2Click(sender);
form4.ShowHint:=true;
form4.Visible:=true;
end;

procedure TForm1.iter;
var i,j:byte; sum:real;
begin
  for i:=0 to n-1 do x[i]:=y[i];
  for i:=0 to n-1 do begin
    sum:=0;
    for j:=0 to n-1 do sum:=sum+a[i,j]*x[j];
    y[i]:=sum+b[i];
  end;
end;

procedure TForm1.zap;
var i:byte;
begin
for i:=0 to n-1 do begin
  StringGrid3.Cells[0,i]:=FloatToStr(x[i]);
  StringGrid6.Cells[0,i]:=FloatToStr(y[i]);
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var pr:boolean; i:byte;
begin
if q=q1 then begin
  m:=0;
  for i:=0 to n-1 do m:=m+(abs(x[i]-y[i]));
  if m>eps then pr:=false else pr:=true;
end
else if q=q2 then begin
  m:=0;
  for i:=0 to n-1 do m:=m+(x[i]-y[i])*(x[i]-y[i]);
  m:=sqrt(m);
  if m>eps then pr:=false else pr:=true;
end
else begin
  m:=abs(x[0]-y[0]);
  for i:=1 to n-1 do if abs(x[i]-y[i])>m then m:=abs(x[i]-y[i]);
  if m>eps then pr:=false else pr:=true;
end;
if pr then begin
  Label1.Caption:='����� �������';
  Button3.Enabled:=false;
end
else begin
  iter;
  zap;
  inc(k);
  Label1.Caption:='��������='+FloatToStr(m);
  Button3.Caption:='��� '+IntToStr(k);
end;
end;

end.
