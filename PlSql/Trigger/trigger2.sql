create or replace trigger xyz4
before delete or update on audi
begin
if rtrim(upper(To_char(sysdate,'day')))='WEDNESDAY'then
RAISE_APPLICATION_ERROR(-200011,'can not perform delete or update operation');
end if;
end;
/