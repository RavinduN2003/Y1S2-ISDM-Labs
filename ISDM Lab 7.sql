(1)
select C.CID,count(S.SID)
from Student S,Course C
where S.CID = C.CID
group by C.CID;

(2)
select C.Cname,count(S.SID) as 'Number of Students'
from Student S, Course C
where S.CID = C.CID
group by C.Cname;

(3)
select O.CID,count(O.Mcode)
from Offers O
where O.Accadamic_year = 'Y1'
group by O.CID
having  count(O.Mcode) > 2;


(4)
select C.Cname,O.Accadamic_year,count(M.Mcode)
from Course C,Offers O,Module M
where C.CID = O.CID AND O.Mcode = M.Mcode
group by C.Cname,O.Accadamic_year
having count(M.Mcode) > 2;
