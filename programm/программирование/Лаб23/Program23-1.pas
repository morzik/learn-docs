program upr1;
uses crt;
type mass=array [1..10000] of real;

var x:real;
    y,n:integer;
    f:file of integer;
    st:string;
    m:mass;
    l:boolean;
    
//sozdanie faila
procedure newfile (st:string; n:integer);
var i:integer;
begin
assign(f,st);
rewrite(f);
randomize;
for i:=1 to n do
 begin
 x:=(random(7)+1)*0.26;
 write(f,x);
 end;
close(f);
end;

begin
write('¬ведите название файла: ');
readln(st);
write('¬ведите колличество значений: ');
readln(n);
newfile(st,n);
end.


    