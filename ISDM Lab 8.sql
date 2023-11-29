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
	NIC char(10),
	CID char(6),
	constraint student_pk primary key(SID)
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
	Accademic_Year char(2),
	Semester int,
	constraint offers_pk primary key(CID,Mcode)
	constraint offers_fk foreign key(CID) references Course(CID)
	constraint offers_fk foreign key(Mcode) references Module(Mcode)
);

ALTER TABLE Student
ADD CONSTRAINT CHK_Student_NIC
CHECK (LEN(NIC) = 10 AND NIC LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][vV]');

ALTER TABLE Module
ADD CONSTRAINT CHK_Credits
CHECK (NoOfCredits IN (1,2,3,4));