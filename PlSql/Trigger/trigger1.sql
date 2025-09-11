create or replace trigger udateclient
before update or delete on clientmaster 
for each row
begin
insert into audi values(:old.srno,:old.name);
end;
/