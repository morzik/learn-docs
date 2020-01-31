Program lab6_4;
uses crt;
var y,k:integer; pr,x : real;
begin
readln(x);
readln(y);
pr:=0;
k:=1;
while x<y do begin
pr:=x*0.1;
x:=pr+x;
k:=k+1;
end;
writeln(k);
end.