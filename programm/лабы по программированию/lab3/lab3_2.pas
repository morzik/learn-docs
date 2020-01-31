program lab3_2;
uses crt;
var a,b,c,r,s:integer;
begin
readln(a,b,c);
readln(r,s);
if (((a<=r) and (b<=s)) or ((a<=s) and (b<=r))) or (((a<=r) and (c<=s)) or ((a<=s) and (c<=r))) or (((b<=r) and (c<=s)) or ((b<=s) and (c<=r))) then writeln('Yes')
else writeln ('No');
end.