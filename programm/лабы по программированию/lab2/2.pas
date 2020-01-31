program lab2_2;
uses crt;
var  x1, y1, x2, y2: integer; 
begin  
	readln(x1, y1, x2, y2);  
	if ((y1 = y2) and (abs(x2 - x1) = 1)) or ((x1 = x2) and (abs(y2 - y1) = 1)) or ((abs(y1 - y2) = 1) and (abs(x2 - x1) = 1)) 
	then    
		writeln('YES')  
	else    
		writeln('NO'); 
end.