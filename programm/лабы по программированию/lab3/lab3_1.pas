program lab3_1;
uses crt;
var n: integer;
begin
     readln(n);
     case n mod 7 of
     1:writeln ('�����������');
     2:writeln ('�������');
     3:writeln ('�����');
     4:writeln ('�������');
     5:writeln ('�������');
     6:writeln ('�������');
     else writeln ('�����������')
     end
end.