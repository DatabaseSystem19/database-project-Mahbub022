--pagesize & linesize
set pagesize 1500;
set linesize 300;

-- select
select * from profile;
select name from profile;

--update & delete
INSERT INTO applicant VALUES ('A016', 'Venue1', timestamp '2023-05-20 09:00:00');
update applicant set exam_venue = 'Venue5' where applicant_id = 'A016';
delete from applicant where applicant_id = 'A016';

--union, intersect, except
select applicant_id,apply_time from applicant where extract (hour from apply_time)>10 
union
select applicant_id,apply_time from applicant where extract (hour from apply_time)<16;  

--with clause
with avg_number(hsc_mark) as (select avg(hsc_mark) from eligible)
select * from eligible,avg_number where eligible.hsc_mark > avg_number.hsc_mark; 

--aggregate
select count (distinct hsc_gpa) as gpa_hsc from eligible; 
select max (total_mark) as exam_marks from examinee; 

--group by & having
select faculty,count(distinct dept_name) as number_of_dept from department group by faculty;
select faculty,count(distinct dept_name) as number_of_dept from department group by faculty having count(dept_name) > 2;

--nested subquery
select name from profile where reg_no = 
(select reg_no from eligible where applicant_id =
(select applicant_id from examinee where merit_place = 1 ));

--set membership
select name from profile where reg_no in
(select reg_no from eligible where applicant_id in 
(select applicant_id from examinee where merit_place >=1 and merit_place <=5 ));

--string
select dept_name,faculty from department where dept_name like '%Engineer%'; 

--join operations
select applicant_id,total_mark,merit_place,roll_no from examinee natural join student order by merit_place asc;
select name,merit_place from profile join eligible on profile.reg_no = eligible.reg_no join examinee on eligible.applicant_id = examinee.applicant_id where merit_place<4 order by merit_place asc; 

--views
create view admission as select name,p.reg_no,a.applicant_id,hsc_gpa,ssc_gpa,gpa_mark,phy_mark,math_mark,chem_mark,eng_mark,total_mark,
e.merit_place,s.roll_no,dept_name,dept_id,faculty from profile p join eligible eg  on p.reg_no = eg.reg_no
join applicant a on a.applicant_id = eg.applicant_id
join examinee e on e.applicant_id = a.applicant_id
join student s on s.merit_place = e.merit_place
join department d on d.roll_no = s.roll_no; 
<<<<<<< HEAD
select * from admission;
=======
select * from admission;
>>>>>>> d3c61a4cb8141bb22c264f82bf7fb81d38d7b22f
