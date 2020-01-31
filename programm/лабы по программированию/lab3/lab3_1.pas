program lab3_1;
uses crt;
var n: integer;
begin
     readln(n);
     case n mod 7 of
     1:writeln ('понедельник');
     2:writeln ('вторник');
     3:writeln ('среда');
     4:writeln ('четверг');
     5:writeln ('пятница');
     6:writeln ('суббота');
     else writeln ('воскресенье')
     end
end.