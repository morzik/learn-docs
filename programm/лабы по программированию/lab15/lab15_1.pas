program lab15_1;
uses crt;
var i,c:integer; x:string; glas,soglas: set of char ;
begin
  readln(x);
  c:=0;
  glas:=['�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�'];
  soglas:=['�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�'];
  for i:=1 to length(x) do
     if x[i] in soglas then c:=c+1;
   writeln(c);
end.