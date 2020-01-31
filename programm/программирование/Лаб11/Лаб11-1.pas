program z11v1;
uses crt;
var t:integer;
a,b:string;
begin
readln(a);
t:=length(a);
if t mod 2=1 then begin
                  b:=a[length(a)div 2+1];
                  insert(b,a,length(a)div 2+1);
                  end;
writeln(a);
end.
