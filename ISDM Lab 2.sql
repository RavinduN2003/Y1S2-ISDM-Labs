/*Lab sheet */

(1)
select * from Student;

(2)
select Mname,NoOfCredits
from Module

(3)
select Sname
from Student
where Sname LIKE 'A%';

(4)
select Sname
from Student
where dob < '1996/01/01';

(5)
select Sname,NIC
from Student
where Address LIKE '%Colombo%';

(6)
select Sname
from Student
where Sname LIKE 'K%' AND CID = 'DS';

(7)
select Sname 
from Student
where CID = 'DS' OR CID = 'IT';

/*Section 2*/

(1)
Select Sname
from Student
order by Sname;

(2)
select NIC
from student
order by NIC DESC;

(3)
select Sname,CID
from Student
order by Sname ASC, CID DESC; 



