Program lab6_2;
uses crt;
var n, i, a, nol, pol, otr: integer;
begin
readln(n);
nol:=0;
pol:=0;
otr:=0;
for i:=1 to n do begin
    readln(a);
    if a=0 then nol:=nol+1
    else if a>0 then pol:=pol+1
    else otr:=otr+1;
end;
writeln(nol,' ', pol,' ', otr);
end.