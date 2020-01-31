program lab4_4;
uses crt;
var m,n,i:integer;
begin
  readln(m,n);
  if n>m then begin
    for i:=n downto 1 do begin
        if (n mod i = 0) and (m mod i = 0) then write(i,',');
    end
  end
  else  begin
    for i:=m downto 1 do begin
        if (n mod i = 0) and (m mod i = 0) then write(i,',');
    end
  end
end.