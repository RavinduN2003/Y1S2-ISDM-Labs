CREATE TABLE Employee(
	eno int,
	NIC CHAR(15),
	ename VARCHAR(50),
	address VARCHAR (50),
	dnumber int,

	CONSTRAINT Employee_PK primary key(eno),
	CONSTRAINT Employee_FK foreign key(dnumber) REFERENCES Department(dno),
	CONSTRAINT check_eno check( LEN(eno) = 3 AND eno LIKE '[0-9][0-9][0-9]' ),
	CONSTRAINT check_NIC check(NIC LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][vV]' ),
	CONSTRAINT check_ename check(ename IS NOT NULL),
);

CREATE TABLE Department (
	
	dno int,
	dname VARCHAR(50),

	CONSTRAINT Department_PK primary key(dno),
	CONSTRAINT check_dname check(dname = 'Headquaters' OR dname = 'Administrator' OR dname = 'Reasearch'),
);

CREATE TABLE Project (
	
	pno int,
	pname VARCHAR(20),
	location VARCHAR(30),

	CONSTRAINT Project_PK primary key(pno),
);

CREATE TABLE Work_on (

	eno int,
	pno int,
	hired_date date,
	hours int,

	CONSTRAINT Work_on_FK_Employee foreign key(eno) REFERENCES Employee(eno),
	CONSTRAINT Work_on_FK_Project foreign key(pno) REFERENCES Project(pno),
	CONSTRAINT check_hours check(hours > 0),
);

DROP TABLE Employee;
DROP TABLE Department;
DROP TABLE Project;
DROP TABLE Work_on;

INSERT INTO Employee
VALUES (100,' 901250087V','Smith,John B','731 Fondren, Houston',5),
	   (101,' 895290452V', 'Wrong, Franklin T', '638 Voss, Houston', 5),
	   (102,' 923859070V','Zelaya, Alicia J',' 33321 Castle, Spring', 4),
	   (103,' 918257988V', 'Wallace, Jennifer S',' 291 Berry,Bellaria',4),	   (104,' 904850045V', 'Narayan, Remesh K','975 Fire Oak, Humble' ,5);INSERT INTO DepartmentVALUES (1, 'Headquaters'),
	   (4, 'Administrator'),
       (5, 'Reasearch');INSERT INTO ProjectVALUES (1,' Road Construction', 'Bellaire'),
	   (2,'Power plant' , 'Sugarland'),
	   (3,'Reproduction', 'Houston'),
	   (4,'Recycling','Stafford');

INSERT INTO Work_on
VALUES (100, 1, ' 12/04/2011' , 12),
	   (100, 2, ' 25/02/2011' , 1),
       (100, 3, ' 15/05/2011' , 20),
       (101, 1, ' 02/06/2011' , 50);
DELETE FROM EmployeeWHERE eno = 103;select *from Project;select * from Employee;UPDATE ProjectSET pname = 'Water Recycling 'WHERE pno = 4;