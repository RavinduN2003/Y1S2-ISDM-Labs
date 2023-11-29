(1)
SELECT Mname
FROM Module
WHERE NoOfCredits = (SELECT NoOfCredits
					FROM Module
					WHERE Mcode = 'IE3051')


(2)
SELECT Cname
FROM Course 
WHERE C_fee = (SELECT MAX(C_fee)
				FROM Course);

(3)
SELECT Mname
FROM Module
WHERE NoOfCredits < (SELECT NoOfCredits
					FROM Module
					WHERE Mname = 'Fundamentals of Data Mining');


(4)
SELECT Mname
FROM Module
WHERE NoOfCredits = (SELECT MAX(NoOfCredits)
					FROM Module);



(5)

SELECT C.Cname AS CourseName
FROM Course C
WHERE C.CID <> 'SE' AND (SELECT COUNT(O.Mcode)
						 FROM Offers O
						 WHERE O.CID = C.CID AND O.Accadamic_year = 'Y4') > (SELECT COUNT(O.Mcode)
                                                                             FROM Offers O
                                                                             WHERE O.CID = 'SE' AND O.Accadamic_year = 'Y4');



