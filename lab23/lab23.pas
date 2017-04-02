Program lab23;
Type
  rec = record
  name2, name : string [20];
  sch, bal : byte;
  end;
  tmas = array[1..3] of rec
Var
  mas : tmas;
  masx : rec;
  
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
          bal := 76;
        end;
    with mas[3], rec do
      begin
        name := 'Dima';
          name2 := 'Dimenko';
          sch := 32;
          bal := 84;
          end;
end;


  