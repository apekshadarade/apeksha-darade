create or replace procedure  proc_grade (r in int, gt in int, grade out varchar2)
is 
begin
if gt <= 1500 and gt >= 990 then
grade:='1st class with dist.';
elsif gt <= 989 and gt >= 900 then
grade:='1st class';
elsif gt <= 899 and gt >= 825 then
grade:='2nd class';
else
grade:='Fail';
end if;
end;
/
