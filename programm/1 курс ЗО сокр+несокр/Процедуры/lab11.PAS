{---------- Title of the program --------------}
program primer1;
uses crt;

type stroka=array[1..20] of real;
     matr=array[1..20] of stroka;

var m,n,i,j,k,l,r:integer;
        s,s1,s2,ext:real;
	              y,z:stroka;
                 a:matr;

{----------- Description of functions ------------------}
function P(x:real):boolean;
begin
	p:=x>0;
end;
{---------------------------------------------}
function summa(mm:integer;x:stroka):real;
    var i:integer;  s:real;
begin
    s:=0;
    for i:=1 to m do
    	s:=s+x[i];
    summa:=s
end;
{---------------------------------------------}
function summamod(mm:integer;x:stroka):real;
    var i:integer;   s:real;
begin
    s:=0;
    for i:=1 to mm do
        s:=s+abs(x[i]);
    summamod:=s
end;
{---------------------------------------------}
function quantity(mm:integer;x:stroka):integer;
    var i,k:integer;
begin
	k:=0;
	for i:=1 to mm do
		if p(x[i]) then k:=k+1;
	quantity:=k
end;

{------------- Description of procedures -------------}
procedure input_matr(var nn,mm:integer; var Mat:matr);
    var i,j:integer;
begin
    clrscr;
    write('input quantity of rows ');readln(nn);
    write('input quantity of columns ');readln(mm);
    for i:=1 to nn do    begin
        for j:=1 to mm do 	begin
		write(' элемент матрицы[',i,',',j,']=');
		read(Mat[i][j])	end;
	writeln;		end;
end;

procedure priswaiwanie_matr(var n,m:integer; var mat:matr);
begin
    n:=3;m:=4;
    mat[1][1]:=3;  mat[1][2]:=0;   mat[1][3]:=-5;  mat[1][4]:=3;
    mat[2][1]:=-4; mat[2][2]:=-1;   mat[2][3]:=-2; mat[2][4]:=-3;
    mat[3][1]:=1;  mat[3][2]:=3;    mat[3][3]:=0;   mat[3][4]:=8;
end;

procedure output_matr(nn,mm:integer; mat:matr);
var i,j:integer;
begin
    for i:=1 to nn do begin
    for j:=1 to mm do write('  ',mat[i][j]:6:2);
             writeln end
end;

procedure znak(mm:integer;var x:stroka);
var i:integer;
begin
    for i:=1 to mm do x[i]:=-x[i];
end;

procedure maximum(mm:integer;x:stroka;var k:integer;var ma:real);
var i:integer;
begin
    k:=1;ma:=x[1];
    for i:=2 to mm do
    if x[i]>ma then begin
                    k:=i;ma:=x[i]
                    end
end;

procedure maximummod(mm:integer;x:stroka;var k:integer;var ma:real);
var i:integer;
begin
    k:=1;ma:=abs(x[1]);
    for i:=2 to mm do
    if abs(x[i])>ma then begin
                         k:=i;ma:=abs(x[i])
                         end
end;

procedure poisk(mm:integer; x:stroka; var flag:boolean);
var i:integer;
begin
    flag:=false; i:=1;
    while not flag and (i<=mm) do begin
    if p(x[i]) then flag:=true;
    i:=i+1	end
end;

{--------------- Main program -----------------}
begin
    clrscr;    input_matr(n,m,a);    writeln;

{-------  may be not used --------}
  clrscr; writeln('Array'); output_matr(n,m,a);

    for i:=1 to n do
    begin
        s:=summa(m,a[i]);
	writeln('    Sum of ',i,' line =  ',s:5:1)
    end;
end.
