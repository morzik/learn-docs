program lab5_4;
var n, x, y: integer;
    f: boolean;
 
begin
  write('n = ');
  readln(n);
  n := abs(n);
  f := true;
  for x := 1 to trunc(sqrt(n)) do
    for y := 1 to trunc(sqrt(n)) do
      if n = x * x + y * y
        then begin
          writeln(x, ', ', y);
          f := false
        end;
  if f then writeln('Net par.');
  readln
end.