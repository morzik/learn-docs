program lab5_2; 
uses crt;
var n,m,c1,cp:integer;
    k,i:real;
begin
	write('n=');
	readln(n);
	cp:=n mod 10;
	n:=n div 10;
	m:=n;
	k:=0;
	while m>9 do
	  begin
	    m:=m div 10;
	    k:=k+1;
	  end;
		c1:=m;
		
		for i:=1 to k do
		  begin
		    m:=m*10;
		    cp:=cp*10;
		  end;
	n:=cp*10+(n-m)*10+c1;
	writeln('n2=',n);
	readln
end.