program lab5;
uses crt;
    const n=8;
type mass=array [1..10] of real;
var x,y,y1,t,q,otkl:mass;
    a,b:real;
    i,v:integer;

function sum(c:mass):real;
var s:real;
i:integer;
begin
s:=0;
for i:=1 to n do s:=s+c[i];
sum:=s;
end;

function sum2(c:mass):real;
var s:real;i:integer;
begin
s:=0;
for i:=1 to n do s:=s+c[i]*c[i];
sum2:=s;
end;

function sumxy(c,d:mass):real;
var s:real;i:integer;
begin
s:=0;
for i:=1 to n do s:=s+c[i]*d[i];
sumxy:=s;
end;

{-----------------------------------------}
function otk(y,y1:mass):real;
var s:real;i:integer;
begin
s:=0;
for i:=1 to n do s:=s+sqr(y[i]-y1[i]);
otk:=s;
end;

function min:integer;
var w:real;k,i:integer;
begin
w:=otkl[1];k:=1;
for i:=2 to 5 do
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

y[1]:=0.023;  x[1]:=0.333;
y[2]:=0.026;   x[2]:=0.167;
y[3]:=0.031;   x[3]:=0.111;
y[4]:=0.039;   x[4]:=0.083;
y[5]:=0.050;   x[5]:=0.067;
y[6]:=0.070;   x[6]:=0.056;
y[7]:=0.120;   x[7]:=0.048;
y[8]:=0.420;   x[8]:=0.042;


end;


begin        clrscr;
{1---------- y:=ax+b --------------------}
  prisw;
  system2(x,y,a,b);  writeln('1 y=',a:2:3,'x+',b:2:3);
     for i:=1 to n do y1[i]:=a*x[i]+b;
  
otkl[1]:=otk(y,y1);   writeln(otkl[1]);  writeln;

{2---------- y:=a/x+b --------------------}
  prisw;
  for i:=1 to n do t[i]:=1/x[i];
      system2(t,y,a,b); writeln('2 y=',a:2:3,'/x+',b:2:3);
     for i:=1 to n do y1[i]:=a/x[i]+b;
  otkl[2]:=otk(y,y1);   writeln(otkl[2]); writeln;

{3---------- y:=b*x^a --------------------}
 prisw;
       for i:=1 to n do
       begin t[i]:=ln(x[i]);
                        q[i]:=ln(y[i]);  end;
      system2(t,q,a,b); b:=exp(b);  writeln('3 y=',b:2:3,'*x^+',a:2:3);
     for i:=1 to n do y1[i]:=b*power(x[i],a);
  otkl[3]:=otk(y,y1);   writeln(otkl[3]);  writeln;
{4---------- y:=1/(ax+b) --------------------}
 prisw;
       for i:=1 to n do q[i]:=1/y[i];
    system2(x,q,a,b);  writeln('4 y=1/(',a:2:3,'*x+',b:2:3,')');
     for i:=1 to n do y1[i]:=1/(a*x[i]+b);
  otkl[4]:=otk(y,y1);   writeln(otkl[4]);  writeln;


{5---------- y:=a*ln(x)+b --------------------}
  prisw;
         for i:=1 to n do t[i]:=ln(x[i]);
    system2(t,y,a,b);  writeln('5 y=',a:2:3,'ln(x)+',b:2:3);
     for i:=1 to n do y1[i]:=a*ln(x[i])+b;
  otkl[5]:=otk(y,y1);   writeln(otkl[5]);  writeln;writeln;writeln;

case min of
1:writeln(min,' y:=a+bx');
2:writeln(min,' y:=a/x+b ');
3:writeln(min,' y:=b*x^a ');
4:writeln(min,' y:=1/(a*x+b) ');
5:writeln(min,' y:=aln(x)+b');
end;
end.
