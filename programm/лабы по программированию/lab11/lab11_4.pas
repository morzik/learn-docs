program lab11_4;
uses crt;
var str:string; i:integer;
begin
  readln(str);
  for i := 1 to length(str) do
  begin
    if (ord(str[i])>=97) and (ord(str[i])<=122)
      then str[i]:=chr(ord(str[i])-32);
  end;
  writeln(str);
end.