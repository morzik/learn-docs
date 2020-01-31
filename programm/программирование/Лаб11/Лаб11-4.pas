program z11v4;
uses crt;
var s:string;
i:integer;
begin
readln(s);
for i:=1 to length(s) do
    if (97<=ord(s[i])) and (ord(s[i])<=122) then s[i]:=chr(ord(s[i])-32);
writeln(s);
end.
    
 