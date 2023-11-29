(1)
select CID,count(Mcode) as 'No of Modules in each Course'
from offers
group by CID;

(2)
select CID, count(SID) as 'No.of Students'
from Student
group by CID;

(3)
select CID,Accadamic_year, count(Mcode) as 'No of Modules'
from Offers
group by CID,Accadamic_year;

(4)
select Semester, count(Mcode)
from offers
where Semester = 2
group by Semester;

(5)
select CID,Semester, count(Mcode)
from offers
where Semester = 2
group by CID,Semester
order by CID ASC;
