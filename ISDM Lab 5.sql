a)
select CID,count(SID) as 'No.of Students'
from Student
group by CID
having count(SID) < 10;

b)
select CID,count(Mcode) as 'No.of Modules'
from offers
group by CID
having count(Mcode) > 3
order by count(Mcode) ASC;

c)
select CID,Accadamic_year,count(Mcode)
from offers 
group by CID,Accadamic_year
having count(Mcode) < 10
order by CID ASC, Accadamic_year ASC;

d)
select CID ,count(Mcode) as 'Course offer more than 2 modules'
from Offers
where Accadamic_year = 'Y3'
group by CID
having count(Mcode) > 2;