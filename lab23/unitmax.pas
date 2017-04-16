Unit unitmax;
Interface

Type
  rec = record
  name2, name : string[20];
  sch, bal : integer;
  end;
  tmas = array[1..4] of rec;
var
  mas, masx : tmas;
  m : rec;
  k, i : byte;
  f : file of rec;

Procedure input(var k: byte);
Procedure max(var j: byte);
Procedure write();
Procedure readfile(var a: tmas);
Procedure print(var k: byte);

  Implementation
  
  
Procedure max(var j: byte);
var
i: byte;
Begin
i := 1;
k := 1;
with mas[1], rec do
  writeln('бал первого', mas[1].bal);
masx[1] := mas[1];
for i := 1 to (j-1) do
  begin
    if mas[i].bal <= mas[i+1].bal 
      then
        begin
         masx[1] := mas[i+1];
         writeln('номер масх', k);
         end;
  end;
  
for i := 1 to j do 
  begin
  if mas[i].bal = masx[1].bal then
    begin
      inc(k);
      masx[k] := mas[i];
    end;
  end;
with masx, rec do
  writeln('Макс', masx[k].bal);
end;






Procedure readfile(var a: tmas);
var
  k : byte;
Begin
  k := 0;
  Reset(f);
  while not eof(f) do
  begin
    inc(k);
    read(f, a[k]);   
  end;
  Close(f);
end;  





  Procedure input(var k: byte);
var
  i : byte;
Begin
    Assign(f, 'file.txt');
    Rewrite(f);
    for i := 1 to k do
      begin
        writeln(i, ' Студент');
        writeln('Имя:'); Readln(m.name);
        writeln('Фамилия:'); Readln(m.name2);
        writeln('Школа:'); Readln(m.sch);
        writeln('Кол-во баллов:'); Readln(m.bal);
        write(f, m); 
      end;
    close(f);
end;      
      




  Procedure print(var k: byte);
var
  l : byte;
begin
    for l := 1 to k do 
      begin
        writeln(mas[l].name, ' ', mas[l].name2, ' ', mas[l].sch, ' ', mas[l].bal);
      end;
    for l := 1 to 4 do
      writeln;   
    writeln; 
end;





  Procedure write();
  var
  f : text;
  i : byte;
Begin 
  assign(f, 'f.txt');
  rewrite(f);
  writeln(f, 'Максимальное количество баллов:');
  for i := 2 to k do
  writeln(f, masx[i].name, ' ', masx[i].name2, ' ', masx[i].sch, ' ', masx[i].bal);
  close(f);
end;
  

begin
end.