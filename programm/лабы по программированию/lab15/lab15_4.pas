program lab15_4;
uses crt;
type
m=set of 1..31;
arr= array [1..31] of integer;
var
numbers,i,contholydays:integer;
holydays:m;
mass:arr;

procedure vmas(var days:arr; var n:integer);
var i,m:integer;
begin
  write('сколько дней проверим?');
  read(n);
  for i:=1 to n do
    begin
    read(m);
    days[i]:=m;
    end;
end;

procedure counter_holydays(A:m; n:integer; days:arr; var k:integer);
begin
  k:=0;
  for i:=1 to n do
    if days[i] in A then k:=k+1;
end;

begin
holydays:=[1..5,9..12,18..19,25..26];
vmas(mass,numbers);
counter_holydays(holydays,numbers,mass,contholydays);
writeln;
writeln(contholydays);
end.