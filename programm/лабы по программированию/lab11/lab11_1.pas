program lab11_1;
uses crt;
var str1, str2: string;
begin
  readln(str1,str2);
  if (pos(str1,str2)>0) or(pos(str2,str1)>0)
    then write('���� ������ � ������')
  else write('���� �� ������ � ������');
end.