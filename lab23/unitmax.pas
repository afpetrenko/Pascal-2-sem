Unit unitmax;
Interface
Type
  rec = record
  name2, name : string [20];
  sch, bal : byte;
  end;
  tmas = array[1..3] of rec;
var
  mas : tmas;
  masx : rec;
Procedure input();
Procedure max();
Procedure write();

  Implementation
Procedure max();
var
i, j: byte;
Begin
i := 1;
with mas[1], rec do
  writeln(mas[1].bal);
masx := mas[1];
writeln('дона', masx.bal);
for i := 1 to 2 do
  begin
    if mas[i].bal < mas[i+1].bal 
      then
         masx := mas[i+1]; 
  end;
with masx, rec do
  writeln('Модуль', masx.bal);
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
    with mas[2], rec do
      begin
        name := 'Petr';
          name2 := 'Petrov';
          sch := 64;
          bal := 96;
        end;
    with mas[3], rec do
      begin
        name := 'Dima';
          name2 := 'Dimenko';
          sch := 32;
          bal := 84;
          end;
end;

  Procedure write();
  var
  f : text;
Begin 
  assign(f, 'f.txt');
  rewrite(f);
  writeln(f, 'Максимальное количество баллов:');
  writeln(f, masx.name, ' ', masx.name2, ' ', masx.sch, ' ', masx.bal);
  close(f);
end;
  

begin
end.