program lab11_2;
uses crt;
var str:string; i:integer;
begin
  readln(str);
  while (i <=length(str)-1) do
  begin
    if (copy(str,i,3)='�� ') or (copy(str,i,3)='�� ') or (copy(str,i,3)=' �� ') or (copy(str,i,3)=' �� ') or (copy(str,i,3)=' �� ')
     then
       str:=copy(str,1,i)+''+copy(str,i+3,length(str)-i-1)
     else
       i:=i+1;
  end;
  writeln(str);
end.