create or replace procedure printMark(elg in eligible.eligibility%type) as 
cursor mark is select applicant_id,phy_mark,chem_mark,math_mark from examinee where applicant_id in (select applicant_id from eligible where eligibility=elg);
id examinee.applicant_id%type;
pM examinee.phy_mark%type;
cM examinee.chem_mark%type;
mM examinee.math_mark%type;
begin
open mark;
fetch mark into id,pM,cM,mM;
while mark%found loop
dbms_output.put_line('Applicant id: '||id||'  Phy_Mark: '||pM||'    Chem_Mark: '||cM||'    Math_Mark: '||mM);
fetch mark into id,pM,cM,mM;
end loop;
close mark;
end;
/

set serveroutput on
declare
elg eligible.eligibility%type:='yes';
begin
printMark(elg);
end;
/

select applicant_id,eligibility from eligible;