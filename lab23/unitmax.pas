Unit unitmax;
Interface
Type
  rec = record
  name2, name : string [20];
  sch, bal : byte;
  end;
  tmas = array[1..3] of rec;
var
  mas, masx : tmas;
  k : byte;

Procedure input();
Procedure max();
Procedure write();

  Implementation
Procedure max();
var
i, j: byte;
Begin
i := 1;
k := 1;
with mas[1], rec do
  writeln(mas[1].bal);
masx[k] := mas[1];
for i := 1 to 2 do
  begin
    if mas[i].bal <= mas[i+1].bal 
      then
        begin
         masx[k] := mas[i+1]; 
         inc(k);
  end;
with masx, rec do
  writeln('Модуль', masx[k].bal);
end;
end;




  Procedure input();
Begin
    with mas[1], rec do
        begin
          name := 'Ivan';
          name2 := 'Ivanov';
          sch := 54;
          bal := 59;
        end;
    writeln(mas[1].name, ' ', mas[1].name2, ' ', mas[1].sch, ' ', mas[1].bal);
    with mas[2], rec do
      begin
        name := 'Petr';
          name2 := 'Petrov';
          sch := 64;
          bal := 96;
        end;
    writeln(mas[2].name, ' ', mas[2].name2, ' ', mas[2].sch, ' ', mas[2].bal);
    with mas[3], rec do
      begin
        name := 'Dima';
          name2 := 'Dimenko';
          sch := 32;
          bal := 96;
          end;
          writeln(mas[3].name, ' ', mas[3].name2, ' ', mas[3].sch, ' ', mas[3].bal);
end;

  Procedure print();
  var
    i : byte;
    
begin
    for i := 1 to 3 do 
      begin
        writeln(mas[i].name, ' ', mas[i].name2, ' ', mas[i].sch, ' ', mas[i].bal);
        end;
end;


  Procedure write();
  var
  f : text;
  i : byte;
Begin 
  assign(f, 'f.txt');
  rewrite(f);
  writeln(f, 'Максимальное количество баллов:');
  for i := 1 to k do
  writeln(f, masx[i].name, ' ', masx[i].name2, ' ', masx[i].sch, ' ', masx[i].bal);
  close(f);
end;
  

begin
end.