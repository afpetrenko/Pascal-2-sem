Program lab12;
var
  s: string;
  l: byte;
  
Procedure output();
var
i: byte;

begin
i := 1;
  while s[i] <> ' ' do
  begin
  write(s[i]);;
  i := i + 1;
  end;
write(' ', s[i+1],'.');
i := i + 1;
  while s[i] <> ' ' do
  i := i + 1;
write(' ', s[i+1],'.');
end;
  
  
begin
writeln('Введите фамилию, имя, отчество:');
readln(s);
writeln('Фамилия и инциалы:');
output();
end.