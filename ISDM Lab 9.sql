Drop table Student
Drop table Offers
Drop table Module
Drop table Course

create table Course(
	
	CID char(6),
	Cname varchar(50),
	C_Description varchar(200),
	C_fee int
	constraint Course_pk primary key(CID)
);

create table Student(

	SID char(10),
	Sname varchar(50),
	Address varchar(50),
	dob date,
	NIC char(20),
	CID char(6),
	constraint student_pk primary key(SID),
	constraint student_fk foreign key(CID) references Course(CID) 
);

create table Module(

	Mcode char(6),
	Mname varchar(50),
	M_Description varchar(200),
	NoOfCredits int,
	constraint Module_pk primary key(Mcode)


);

create table Offers(
	CID char(6),
	Mcode char(6),
	Accademic_Year char(20),
	Semester int,
	constraint offers_pk primary key(CID,Mcode),
	constraint offers_fk foreign key(CID) references Course(CID),
	constraint module_fk foreign key(Mcode) references Module(Mcode)
);

/*1st Method*/
INSERT INTO Course(CID,Cname,C_Description,C_fee)
VALUES
	('IT','Information Technology','The programme is designed for technically focused students who capabilities in programming' , 175000),
	('SE','Software Engineering','g Software engineering is the discipline of designing, creating and maintaining', 185000),
	('CSNE','Computer Systems And Network Engineering','The programme aims to provide students with the knowledge, skills, planning, and designing', 155000),
	('DS','Data Science','The meticulous curriculum focuses on the fundamentals of computer science, statistics, and applied mathematics',170000);

/*2nd Method*/
INSERT INTO Course VALUES('IT','Information Technolog','The programme is designed for basically focused students who capabilities in programming',17500);
INSERT INTO Course VALUES('SE','Software Engineering ','Software engineering is the discipline of designing,creating and maintaining',185000);
INSERT INTO Course VALUES('CSNE','Computer Systems And Network Engineering','The programme aims to provide students with the knowledge, skills, planning, and designing',155000);
INSERT INTO Course VALUES('DS','Data Scinece','The meticulous curriculum focuses on the fundamentalsof computer science, statistics, and applied mathematics',170000);


/*3rd Method*/
INSERT INTO Course VALUES
	('IT','Information Technology','The programme is designed for basically focused students who capabilities in programming',17500),
	('SE','Software Engineering ','Software engineering is the discipline of designing,creating and maintaining',185000),
	('CSNE','Computer Systems And Network Engineering','The programme aims to provide students with the knowledge, skills, planning, and designing',155000),
	('DS','Data Scinece','The meticulous curriculum focuses on the fundamentalsof computer science, statistics, and applied mathematics',170000);



INSERT INTO Student VALUES('CN18384756','Kamal','No122, Rose street, matale','1994-05-02','946785467v','CSNE');
INSERT INTO Student VALUES('DS18234876','Pubudu','No678 , 3rd new lane,Maharahgama','1994-11-08','948763759v','DS');
INSERT INTO Student VALUES('IT18234568','Ann','No12, Kings street, colombo','1996-11-11','961234587v','IT');
INSERT INTO Student VALUES('SE19238567','Malith','No08, st.thomas street, Kandy','1992-12-20','922356785v','SE');

INSERT INTO Module VALUES('SE3050','User Experience Engineering','subject under SE',3);
INSERT INTO Module VALUES('IT1010','Introduction to Programming','subject under IT',4);
INSERT INTO Module VALUES('IT2050','Computer Networks','subject under IT',4);
INSERT INTO Module VALUES('IT3051','Fundamentals of Data Mining','subject under DS',4);

INSERT INTO Offers VALUES('SE','SE3050','Y3',2);
INSERT INTO Offers VALUES('IT','IT1010','Y1',2);
INSERT INTO Offers VALUES('IT','IT2050','Y2',1);
INSERT INTO Offers VALUES('DS','IT3051','Y3',1);


SELECT * FROM Course
SELECT * FROM Offers;
SELECT * FROM Student;
SELECT * FROM Module;


UPDATE Course
SET Cname = 'BOLD ACTION'
WHERE CID = 'IT';

UPDATE Student
SET NIC = '200302602960v'
WHERE SID = 'IT18234568';

UPDATE Module
SET NoOfCredits = 12
Where Mcode = 'IT1010';

UPDATE Offers
SET Accademic_Year = 'MOTHERF'
WHERE Mcode = 'IT3051';


DELETE FROM Student
WHERE SID = 'CN18384756';

Delete FROM Offers
WHERE CID = 'DS';