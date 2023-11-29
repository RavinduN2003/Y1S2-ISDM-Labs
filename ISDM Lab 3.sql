(1)
select count(SID)
from Student;

(2)
select count(CID)
from Course;

(3)
select count(CID) as 'Number of Courses'
from Course;

(4)
select count(Mcode) as 'Modules with 3 credits'
from Module
where NoOfCredits = 3;

(5)
select sum(C_fee) as 'Sum of All Course Fee'
from Course;

(6)
select max(C_fee) as 'Highest Course fee'
from Course;

(7)
select min(C_fee) as 'Lowest Course fee'
from Course;

(8)
select avg(C_fee) as 'Average Course fee'
from Course;