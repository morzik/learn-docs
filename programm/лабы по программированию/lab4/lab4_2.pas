program lab4_2;
uses crt;
var n, f: longint;
begin
  readln(n);
  f := 1;
  while n > 0 do
    begin
      f := f * n;
      n := n - 2
    end;
  writeln('n!!= ', f);
end.