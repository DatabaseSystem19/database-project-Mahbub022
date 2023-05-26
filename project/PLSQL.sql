--variable declare and print value
set serveroutput on
declare
roll department.roll_no%type;
dept department.dept_name%type;
faculty department.faculty%type;
begin
select dept_name,roll_no,faculty into dept,roll,faculty from department where dept_id=07;
dbms_output.put_line('Roll: '||roll||' Dept: '||dept||' Faculty: '||faculty);
end;
/

--insert and set default value
set serveroutput on
declare
roll department.roll_no%type:='R016';
dept department.dept_name%type:='CSE';
faculty department.faculty%type:='EEE';
id department.dept_id%type:='07';
begin
insert into department VALUES(roll,dept,id,faculty);
end;
/
select * from department where roll_no='R016';

--row type
set serveroutput on
declare
dept_row department%rowtype;
begin
select roll_no, dept_name, dept_id, faculty into dept_row
from department where roll_no='R010';
dbms_output.put_line('Roll: '||dept_row.roll_no||' Dept: '||dept_row.dept_name||' Faculty: '||dept_row.faculty);
end;
/

--cursor and row count with while loop
set serveroutput on
declare
cursor c is select roll_no,dept_name from department;
dept_row department%rowtype;
begin
open c;
fetch c into dept_row.roll_no,dept_row.dept_name;
while c%found loop
dbms_output.put_line('Roll: '||dept_row.roll_no||' Dept: '||dept_row.dept_name);
dbms_output.put_line('Count: '||c%rowcount);
fetch c into dept_row.roll_no,dept_row.dept_name;
end loop;
close c;
end;
/

--if/elseif/else
set serveroutput on
declare
cursor c is select reg_no,hsc_mark from eligible;
e_row eligible%rowtype;
begin
open c;
fetch c into e_row.reg_no, e_row.hsc_mark;
while c%found loop
if e_row.hsc_mark>540
then dbms_output.put_line('Reg_no: '||e_row.reg_no||' HSC_Mark: '||e_row.hsc_mark||'Student rating: Outstanding');
elsif e_row.hsc_mark>500
then dbms_output.put_line('Reg_no: '||e_row.reg_no||' HSC_Mark: '||e_row.hsc_mark||'Student rating: Good');
else
dbms_output.put_line('Reg_no: '||e_row.reg_no||' HSC_Mark: '||e_row.hsc_mark||'Student rating: Medium');
end if;
dbms_output.put_line('Count: '||c%rowcount);
fetch c into e_row.reg_no, e_row.hsc_mark;
end loop;
close c;
end;
/

--procedure
create or replace procedure proc(
    merit in  examinee.merit_place%type,
    id out examinee.applicant_id%type,
    marks out examinee.total_mark%type
) is var varchar(30);
begin
select applicant_id,total_mark into id,marks from examinee where merit_place=merit;
end;
/

set serveroutput on
declare
merit examinee.merit_place%type:=1;
id examinee.applicant_id%type;
mark examinee.total_mark%type;
begin
proc(merit,id,mark);
dbms_output.put_line('Applicant_id: '||id||' Marks: '||mark||' Merit_place: '||merit);
end;
/

--function
create or replace function fun(
    roll in department.roll_no%type
) return varchar as faculty department.faculty%type;
begin
select faculty into faculty from department where roll_no=roll;
return faculty;
end;
/

set serveroutput on
declare
roll  department.roll_no%type:='R001';
faculty department.faculty%type;
dept department.dept_name%type;
cursor c is select dept_name,faculty from department where faculty= fun(roll); 
begin
open c;
fetch c into dept,faculty;
while c%found loop
dbms_output.put_line('Dept: '||dept||' Faculty: '||faculty);
fetch c into dept,faculty;
end loop;
close c;
end;
/

--drop procedur / function
drop procedure proc;
drop function fun;
