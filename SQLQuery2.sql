/*Final isdm db script*/


create table Course(
	CID char(6),   /*course ID*/
	Cname varchar(50),  
	C_Description varchar(200),
	C_fee int,   /*course fee for one semester*/
	constraint Course_PK PRIMARY KEY(CID) 
);


create table Student(
	SID char(10), /*student ID*/
	Sname varchar(50),
	Address varchar(150),
	dob date,
	NIC char(10),
	CID char(6),
	constraint Student_PK PRIMARY KEY(SID),
	constraint Studnet_cid_FK FOREIGN KEY(CID) REFERENCES Course(CID) 
);


create table Module(
	Mcode char(6), /*Module code*/
	Mname varchar(50),
	M_Description varchar(200),
	NoOfCredits int,
    constraint Module_PK PRIMARY KEY(Mcode)
	
);


create table Offers(
	CID char(6),
	Mcode char(6),
    Accadamic_year char(2),
	Semester int,
	constraint Offers_PK PRIMARY KEY(CID,Mcode),
	constraint Offers_cid_FK1 FOREIGN KEY(CID) REFERENCES Course(CID),
	constraint Offers_Mcode_FK2 FOREIGN KEY(Mcode) REFERENCES Module(Mcode)
);



insert into Course values('IT', 'Infromaton Technology', 'The programme is designed for technically focused students who capabilities in programming', 175000);
insert into Course values('SE', 'Software Engineering', 'Software engineering is the discipline of designing, creating and maintaining', 185000);
insert into Course values('CSNE', 'Computer Systems And Network Engineering', 'The programme aims to provide students with the knowledge, skills, planning, and designing', 155000);
insert into Course values('ISE','Information System Engineering', 'Information systems engineering specialty programme is the key to develop and manage complex systems that solve real-world problems', 145000);
insert into Course values('CS', 'Cyber Security', 'Information systems engineering specialty programme is the key to develop and manage complex systems that solve real-world problems.', 174000) ;
insert into Course values('DS', 'Data Scinece', 'The meticulous curriculum focuses on the fundamentals of computer science, statistics, and applied mathematics', 170000);


insert into Student values('IT18234568','Ann','No12, Kings street, colombo', '1996-11-11', '961234587v', 'IT');
insert into Student values('IT19275687','Rayan','No14, flower street, colombo12', '1994-01-10', '945673456v', 'IT');
insert into Student values('SE19238567','Malith','No08, st.thomas street, Kandy', '1992-12-20', '922356785v', 'SE');
insert into Student values('SE20284567','Pooja','No15, lakshmi Road, jaffna', '1996-08-07', '965678645v', 'SE');
insert into Student values('CN19465738','Sampath','No173, New kandy Road, kaduwella', '1996-11-20', '968764567v', 'CSNE');
insert into Student values('CN18384756','Kamal','No122, Rose street, matale', '1994-05-02', '946785467v', 'CSNE');
insert into Student values('IS18758649','Jayni','No111, Perera street, kurunegala', '1998-09-07', '982359856v', 'ISE');
insert into Student values('IS19234876','Dulina','No124 , 2nd street, colombo10', '1998-12-08', '983485764v', 'ISE');
insert into Student values('CS18223645','kalani','No08 , Gamini Road, Anuradhapura', '1996-10-11', '968564857v', 'CS');
insert into Student values('CS18234867','Damith','No125 , 1st street, kurunegala', '1996-02-15', '968763456v', 'CS');
insert into Student values('DS18234876','Pubudu','No678 , 3rd new lane, Maharahgama', '1994-11-08', '948763759v', 'DS');
insert into Student values('DS18375688','Kamani','No10 , new street, jaffna', '1994-03-05', '948763456v', 'DS');


insert into Module values('IT1010','Introduction to Programming','subject under IT',04);
insert into Module values('SE3050','User Experience Engineering','subject under SE',03);
insert into Module values('IE3082','Cryptography','subject under CS',04);
insert into Module values('IT3051','Fundamentals of Data Mining','subject under DS',04);
insert into Module values('IE3070','Network Technology Project','subject under CSNE',04);
insert into Module values('IE2051','Information Systems Project','subject under ISE',04);

insert into Module values('IT1050','Object Oriented Concepts','subject under IT',02);
insert into Module values('SE3020','Distributed Systems','subject under SE',04);
insert into Module values('IE3102','Enterprise Standards for Information Security','subject under CS',04);
insert into Module values('IT3071','Machine Learning and Optimization Methods','subject under DS',04);
insert into Module values('IE3080','Network Security Engineering','subject under CSNE',04);
insert into Module values('IE3051','E Business Strategy & Architecture and Design','subject under ISE',03);

insert into Module values('IT1100','Internet and Web Technologies','subject under IT',04);
insert into Module values('IT3100','Industry Placement','subject under SE',08);
insert into Module values('IE4052','Hardware Security','subject under CS',04);
insert into Module values('IT3011','Theory and Practices in Statistical Modelling','subject under DS',04);
insert into Module values('IE3030','Wide area Networks','subject under CSNE',04);
insert into Module values('IE3081','Enterprise Resource Planning','subject under ISE',04);

insert into Module values('IT2050','Computer Networks','subject under IT',04);
insert into Module values('SE4030','Secure Software Development','subject under SE',04);
insert into Module values('IE4042','Secure Software Engineering','subject under CS',04);
insert into Module values('IT4011','Database Administration and Storage Systems','subject under DS',04);
insert into Module values('IE4040','Information Assurance and Auditing','subject under CSNE',04);
insert into Module values('IE4011','Business Process Managemet','subject under ISE',04);



insert into Offers values('IT','IT1010','Y1',02);
insert into Offers values('SE','SE3050','Y3',02);
insert into Offers values('CSNE','IE3070','Y3',01);
insert into Offers values('ISE','IE2051','Y2',02);
insert into Offers values('CS','IE3082','Y3',01);
insert into Offers values('DS','IT3051','Y3',02);

insert into Offers values('IT','IT1050','Y1',02);
insert into Offers values('SE','SE3020','Y3',02);
insert into Offers values('CSNE','IE3080','Y3',02);
insert into Offers values('ISE','IE3051','Y3',01);
insert into Offers values('CS','IE3102','Y3',02);
insert into Offers values('DS','IT3071','Y3',02);

insert into Offers values('IT','IT1100','Y1',02);
insert into Offers values('SE','IT3100','Y3',02);
insert into Offers values('CSNE','IE3030','Y3',01);
insert into Offers values('ISE','IE3081','Y3',02);
insert into Offers values('CS','IE4052','Y4',01);
insert into Offers values('DS','IT3011','Y3',01);

insert into Offers values('IT','IT2050','Y2',01);
insert into Offers values('SE','SE4030','Y4',01);
insert into Offers values('CSNE','IE4040','Y4',01);
insert into Offers values('ISE','IE4011','Y4',01);
insert into Offers values('CS','IE4042','Y4',01);
insert into Offers values('DS','IT4011','Y4',01);