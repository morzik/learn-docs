program lab5;
uses crt;
    const n=8;
type mass=array [1..10] of real;
var x,y,y1,t,q,otkl:mass;
    a,b:real;
    i,v:integer;

function sum(c:mass):real;
var s:real;
begin
s:=0;
for i:=1 to n do s:=s+c[i];
sum:=s;
end;

function sum2(c:mass):real;
var s:real;
begin
s:=0;
for i:=1 to n do s:=s+c[i]*c[i];
sum2:=s;
end;

function sumxy(c,d:mass):real;
var s:real;
begin
s:=0;
for i:=1 to n do s:=s+c[i]*d[i];
sumxy:=s;
end;

{-----------------------------------------}
function otk(y,y1:mass):real;
var s:real;
begin
s:=0;
for i:=1 to n do s:=s+sqr(y[i]-y1[i]);
otk:=s;
end;

function min:integer;
var w:real;k:integer;
begin
w:=otkl[1];k:=1;
for i:=2 to 4 do
 if otkl[i]<w
    then begin w:=otkl[i];
               k:=i;
         end;
min:=k;
end;



{---------  system  -----------------------}
procedure system2(x,y:mass; var a,b:real);
begin
a:=(n*sumxy(x,y)-sum(x)*sum(y))/(n*sum2(x)-sqr(sum(x)));
b:=(sum(y)*sum2(x)-sumxy(x,y)*sum(x))/(n*sum2(x)-sqr(sum(x)));
end;

procedure prisw;
begin
{y[1]:=16.444;  x[1]:=3;
y[2]:=4.111;   x[2]:=6;
y[3]:=1.827;   x[3]:=9;
y[4]:=1.028;   x[4]:=12;
y[5]:=0.658;   x[5]:=15;
y[6]:=0.457;   x[6]:=18;
y[7]:=0.336;   x[7]:=21;
y[8]:=0.257;   x[8]:=24;}

y[1]:=0.037;   x[1]:=2;
y[2]:=0.067;   x[2]:=5;
y[3]:=0.333;   x[3]:=8;
y[4]:=-0.111;   x[4]:=11;
y[5]:=-0.048;   x[5]:=14;
y[6]:=-0.030;   x[6]:=17;
y[7]:=-0.022;   x[7]:=20;
y[8]:=-0.018;   x[8]:=23;


end;


begin        clrscr;
{1---------- y:=ax+b --------------------}
  prisw;
  system2(x,y,a,b);  writeln('1 y=',a:2:3,'x+',b:2:3);
     for i:=1 to n do y1[i]:=a*x[i]+b;
  
otkl[1]:=otk(y,y1);   writeln(otkl[1]);  writeln;

{2---------- y:=a/x+b --------------------}
  prisw;
        
  otkl[2]:=otk(y,y1);   writeln(otkl[2]); writeln;

{3---------- y:=b*x^a --------------------}
{ prisw;
  
  otkl[3]:=otk(y,y1);   writeln(otkl[3]);  writeln;}
{3---------- y:=1/(ax+b) --------------------}
 prisw;
  
  otkl[3]:=otk(y,y1);   writeln(otkl[3]);  writeln;


{4---------- y:=a*ln(x)+b --------------------}
  prisw;
  
  otkl[4]:=otk(y,y1);   writeln(otkl[4]);  writeln;writeln;writeln;

case min of
1:writeln(min,' y:=a+bx');
2:writeln(min,' y:=a+b/x');
3:writeln(min,' y:=a*x^b ');   
3:writeln(min,' y:=1/(a*x+b) ');
4:writeln(min,' y:=a+b*ln(x)');
end;
end.