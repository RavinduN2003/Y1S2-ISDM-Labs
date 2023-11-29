SELECT Cname
FROM Course C,Offers O,Module M
WHERE C.CID = O.CID AND M.Mcode = O.Mcode AND M.NoOfCredits < ALL (SELECT M.NoOfCredits 
														   FROM Offers O, Module M
														   WHERE O.Mcode = M.Mcode AND O.CID ='ISE');


(1)
SELECT C.Cname
FROM Course C
WHERE C.C_fee = (SELECT MAX(C.C_fee)
				 FROM Course C);


(2)
SELECT Mname
FROM Module M
WHERE M.Mcode IN (
    SELECT M.Mcode
    FROM Module M
    JOIN Offers O ON M.Mcode = O.Mcode
    WHERE O.CID = 'SE'
) AND M.Mcode IN (
    SELECT M.Mcode
    FROM Module M
    JOIN Offers O ON M.Mcode = O.Mcode
    WHERE O.CID = 'IT'
);
(3)
SELECT Mname
FROM Module M
WHERE M.Mcode IN (
    SELECT O1.Mcode
    FROM Offers O1
    JOIN Course C1 ON O1.CID = C1.CID
    WHERE C1.Cname = 'Software Engineering'
) AND M.Mcode NOT IN (
    SELECT O2.Mcode
    FROM Offers O2
    JOIN Course C2 ON O2.CID = C2.CID
    WHERE C2.Cname = 'Information Technology'
);

