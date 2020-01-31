Program lab6_3;
uses crt;
var i,n,s:integer;
begin
readln(n);
i:=2;
s:=1;
  while s<>0 do begin
    s:= n mod i;
    if s <> 0 then i:=i+1;
  end;
writeln(i);
end.