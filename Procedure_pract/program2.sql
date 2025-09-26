DECLARE
r      student_mark1.rollno%TYPE;
total  student_mark1.totalmarks%TYPE;
nm     student_mark1.name%TYPE;
gr     VARCHAR2(20);
BEGIN
FOR rec IN (SELECT rollno, name, totalmarks FROM student_mark1) LOOP
r := rec.rollno;
nm := rec.name;
total := rec.totalmarks;
proc_grade(r, total, gr);  
DBMS_OUTPUT.PUT_LINE(r || ' ' || nm || ' ' || gr);
INSERT INTO stud_result1 (rollno, name, grade)
VALUES (r, nm, gr);
END LOOP;
DBMS_OUTPUT.PUT_LINE('All records processed and inserted.');
END;
/