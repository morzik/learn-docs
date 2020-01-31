program lab2_1;
uses crt;
var n,k:longint;
begin
	readln(n);
	readln(k);
	if (((n<>1) and (k<>1)) or ((n=1) and (k=1)))
	then
	begin
	writeln('YES');
	end
	else
	begin
	writeln('NO');
	end;
end.
