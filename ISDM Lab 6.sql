(1)
select S.SID,S.Sname,C.Cname
from Student S,Course C
where S.CID = C.CID;

(2)
select O.CID,M.Mname
from Offers O,Module M
where O.Mcode=M.Mcode;

(3)
select C.Cname,M.Mname
from Course C,Module M, Offers O
where C.CID=O.CID AND M.Mcode = O.Mcode;

(4)
select S.SID,S.Sname
from Student S,Course C
where S.CID=C.CID AND C.C_fee >100000;

(5)
select M.Mname
from  Module M,Offers O
where M.Mcode=O.Mcode AND O.Accadamic_year = 'Y1' AND  O.CID = 'IT';

