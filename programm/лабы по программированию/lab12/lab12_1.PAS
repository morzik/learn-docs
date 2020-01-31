{---------- Title of the program --------------}
program primer1;
uses crt;

type stroka=array[1..20] of real;
     matr=array[1..20] of stroka;

var m1,n1,i,j,k,l,r:integer;
        s,s1,s2,ext:real;
	              y,z:stroka;
                 a1:matr;

{----------- Description of functions ------------------}
function P(x:real):boolean;
begin
	p:=x>0;
end;
{---------------------------------------------}
function summa(m:integer;x:stroka):real;
    var i:integer;  s:real;
begin
    s:=0;
    for i:=1 to m do
    	s:=s+x[i];
    summa:=s
end;
{---------------------------------------------}
function summamod(m:integer;x:stroka):real;
    var i:integer;   s:real;
begin
    s:=0;
    for i:=1 to m do
        s:=s+abs(x[i]);
    summamod:=s
end;
{---------------------------------------------}
function quantity(m:integer;x:stroka):integer;
    var i,k:integer;
begin
	k:=0;
	for i:=1 to m do
		if p(x[i]) then k:=k+1;
	quantity:=k
end;

{------------- Description of procedures -------------}
procedure input_matr(var n,m:integer; var a:matr);
    var i,j:integer;
begin
    clrscr;
    write('input quantity of rows ');readln(n);
    write('input quantity of columns ');readln(m);
    for i:=1 to n do    begin
        for j:=1 to m do 	begin
		write(' A[',i,',',j,']=');
		read(a[i][j])	end;
	writeln;		end;
end;

procedure priswaiwanie_matr(var n,m:integer; var a:matr);
begin
    n:=3;m:=4;
    a[1][1]:=3;a[1][2]:=0;a[1][3]:=-5;a[1][4]:=3;
    a[2][1]:=-4;a[2][2]:=-1;a[2][3]:=-2;a[2][4]:=-3;
    a[3][1]:=1;a[3][2]:=3;a[3][3]:=0;a[3][4]:=8;
end;

procedure output_matr(n,m:integer; a:matr);
var i,j:integer;
begin
    for i:=1 to n do begin
    for j:=1 to m do write('  ',a[i][j]:6:2);
             writeln end
end;

procedure znak(m:integer;var x:stroka);
var i:integer;
begin
    for i:=1 to m do x[i]:=-x[i];
end;

procedure maximum(m:integer;x:stroka;var k:integer;var ma:real);
var i:integer;
begin
    k:=1;ma:=x[1];
    for i:=2 to m do
    if x[i]>ma then begin
                    k:=i;ma:=x[i]
                    end
end;

procedure maximummod(m:integer;x:stroka;var k:integer;var ma:real);
var i:integer;
begin
    k:=1;ma:=abs(x[1]);
    for i:=2 to m do
    if abs(x[i])>ma then begin
                         k:=i;ma:=abs(x[i])
                         end
end;

procedure poisk(m:integer; x:stroka; var flag:boolean);
var i:integer;
begin
    flag:=false; i:=1;
    while not flag and (i<=m) do begin
    if p(x[i]) then flag:=true;
    i:=i+1	end
end;

{--------------- Main program -----------------}
begin
    clrscr;    priswaiwanie_matr(n1,m1,a1);    writeln;

{-------  may be not used --------}
  clrscr; writeln('Array'); output_matr(n1,m1,a1);
    l:=0;
    for i:=1 to n1 do
    begin
        s:=summa(m1,a1[i]);
        if (s/m1<0) then
         l:=l+1;
	writeln('    sr Sum of ',i,' line =  ',s/m1:5:1);
    end;
    writeln(l);
end.
