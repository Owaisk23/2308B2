CREATE DATABASE "2308B2";

CREATE TABLE Employees(
id int PRIMARY KEY IDENTITY(1,1),
empName varchar(70) NOT NULL,
designation varchar(100) NOT NULL,
salary int NOT NULL,
city varchar(70) NOT NULL,
deptId int
);

SELECT * FROM Employees;

INSERT INTO Employees(empName,designation,salary,city,deptId) VALUES
('Rubbas', 'GSAP Developper', 239999, 'Larkana', null),
('Abdullah', 'Game Developper', 39999, 'Khi', null),
('Hasnain', 'Laravel Developper', 429999, 'Hyd', null),
('Affan', 'MERN Developper', 9999, 'Khi', null),
('Tayyaba', 'ANGULAR Developper', 78929, 'Hyd', null),
('Sameer', 'MERN Developper', 1009999, 'Isb', null),
('Neha', 'UIUX Developper', 12999, 'Khi', null);


-- DISTINCT Keyword
SELECT DISTINCT city FROM Employees;

--Update
UPDATE Employees set salary=90000 where empName='Sameer';

UPDATE Employees set empName='Taha', city='Swat' where id=4; 

SELECT * FROM Employees;

UPDATE Employees set salary=120000 where city='Hyd';

UPDATE Employees set salary=220000 where empName='Sameer';

-- DELETE

DELETE FROM Employees where id=4;

-- where clause
SELECT empName, designation FROM Employees
where designation='Game Developper';

--NOT Operator
SELECT empName, designation FROM Employees
where NOT designation='Game Developper';

INSERT INTO Employees(empName,designation,salary,city,deptId) VALUES
('Yusra', 'MERN Developper', 19999, 'Khi', null)

-- AND OPERATOR
SELECT * FROM Employees
where designation='MERN Developper' AND salary>=25000;

SELECT * FROM Employees
where not designation='MERN Developper' AND salary>=25000;

-- OR Operator
SELECT * FROM Employees
where designation='MERN Developper' OR salary>=25000;

SELECT * FROM Employees
where not designation='MERN Developper' OR salary<=25000;

-- Between
SELECT * FROM Employees where id between 2 AND 7;

-- LIKE %a%
SELECT * FROM Employees where designation like '%n%';

SELECT * FROM Employees where designation like '%n%' AND city like '%k%';

-- IN
SELECT * FROM Employees where city IN ('Hyd');

--Order By

SELECT * FROM Employees Order By empName asc; 

-- Top

SELECT TOP 3 * FROM Employees;

SELECT TOP 50 percent * FROM Employees;

-- aggregate functions

SELECT * FROM Employees;

SELECT COUNT(empName) as total_employees FROM Employees;

SELECT MIN(salary) as min_salary FROM Employees;

SELECT MAX(salary) as max_salary FROM Employees;

SELECT SUM(salary) as total_salary FROM Employees;

SELECT AVG(salary) as average_salary FROM Employees;

SELECT CONCAT(empName, ' lives in ', city, ' is designated as ', designation, ' with salary of ', salary) as EMPDETAILS FROM Employees;

SELECT empName, salary from Employees where salary < (SELECT AVG(salary) as average_salary FROM Employees);

-- Group By Clause

SELECT city, COUNT(id) workers From Employees GROUP BY city;

SELECT city, MAX(salary) max_salary_paid From Employees GROUP BY city;

SELECT city, SUM(salary) max_salary_paid From Employees GROUP BY city;

INSERT INTO Employees(empName,designation,salary,city,deptId) VALUES
('Zoya', 'MANAGER', 639999, 'Larkana', null),
('Ali', 'MANAGER', 439999, 'Khi', null),
('Saif', 'MANAGER', 529999, 'Hyd', null),
('Taha', 'MANAGER', 154999, 'Isb', null);

-- having clause 
SELECT designation, COUNT(id) as ECOUNT FROM Employees GROUP BY designation having designation = 'Game Developper';

CREATE TABLE Departments(
	deptId int PRIMARY KEY identity(1,1),
	DName nvarchar(50) NOT NULL
);

INSERT INTO Departments VALUES ('HR'), ('SRO'), ('Academics'), ('Techroom'), ('Coordinator');
INSERT INTO Departments VALUES ('Examination');
INSERT INTO Departments VALUES ('Accounts'), ('Admin');
SELECT * FROM Employees;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

CREATE TABLE Employees(
	id int PRIMARY KEY IDENTITY(1,1),
	empName varchar(70) NOT NULL,
	designation varchar(100) NOT NULL,
	salary int NOT NULL,
	city varchar(70) NOT NULL,
	deptId int
	FOREIGN KEY (deptId) REFERENCES Departments(deptId)
);

INSERT INTO Employees(empName,designation,salary,city,deptId) VALUES
('Rubbas', 'Faculty', 239999, 'Larkana', 3),
('Abdullah', 'Exam Coordinator', 39999, 'Khi', 6),
('Hasnain', 'Senior HR', 429999, 'Hyd', 1),
('Affan', 'HR Head', 9999, 'Khi', 1),
('Tayyaba', 'Fee Collector', 78929, 'Hyd', 2),
('Sameer', 'IT Assistant', 1009999, 'Isb', 4),
('Neha', 'Junior Faculty', 12999, 'Khi', 3),
('Wajeeha', 'Coordinator', 9999, 'Khi', 5),
('Zoya', 'CAH', 1178929, 'Hyd', 3),
('Fiza', 'Coordinator', 124789, 'Isb', 5),
('Yumna', 'Faculty', 1212999, 'Khi', 3);

INSERT INTO Employees(empName,designation,salary,city,deptId) VALUES
('Rabia', 'Accounts', 9999, 'Larkana', null),
('Yusra', 'Admin', 399799, 'Khi', null),
('Ali', 'Workers', 329999, 'Hyd', null);

-- INNER JOIN
SELECT emp.*,d.DName FROM Employees as emp INNER JOIN Departments as d on emp.deptId = d.deptId;

-- LEFT JOIN
SELECT * FROM Employees as emp LEFT JOIN Departments as d on emp.deptId = d.deptId;

SELECT * FROM Departments as d LEFT JOIN Employees as emp on emp.deptId = d.deptId;

-- RIGHT JOIN
SELECT * FROM Employees as emp RIGHT JOIN Departments as d on emp.deptId = d.deptId;

-- FULL OUTER JOIN

SELECT emp.*,d.DName FROM Employees as emp FULL OUTER JOIN Departments as d on emp.deptId = d.deptId;

-- VIEW
CREATE VIEW [empDetails]
AS
SELECT id, empName, designation FROM Employees;

SELECT * FROM empDetails;

CREATE VIEW [deptName]
AS
SELECT DName FROM Departments;

SELECT * FROM deptName;

CREATE VIEW [empDeptDetails]
AS
SELECT emp.*,d.DName FROM Employees as emp INNER JOIN Departments as d on emp.deptId = d.deptId;

SELECT * FROM empDeptDetails;

DELETE FROM Employees where id = 3;

-- DATA CONTROL LANGUAGE

SELECT * FROM sys.sql_logins;

CREATE LOGIN HR_EMP with Password = '12345';
CREATE USER HR_EMP FROM LOGIN HR_EMP;


select * from sys.sql_logins;

GRANT SELECT on dbo.Employees TO HR_EMP;

GRANT INSERT, DELETE on dbo.Employees TO HR_EMP;

-- REVOKE(To take back the permission)
REVOKE DELETE on dbo.Employees TO HR_EMP;



-- PROCEDURES

CREATE PROCEDURE SeeEmp
AS
BEGIN
SELECT * FROM Employees
END;

SeeEmp;


ALTER PROCEDURE SeeEmp
AS
BEGIN
SELECT * FROM Employees where city = 'KHI'; 
END;

SeeEmp;

CREATE PROCEDURE AddEmp @Name varchar(255), @desig varchar(70), @sal int, @city varchar(60), @dId int
AS
BEGIN
INSERT INTO Employees VALUES(@Name, @desig, @sal, @city, @dId)
SELECT * FROM Employees
END;

AddEmp @Name='Haseeb', @desig='Software Developer', @sal=50000, @city='Karachi', @dId=2;

AddEmp @Name='Ali Zaib', @desig='MERN Developer', @sal=250000, @city='Karachi', @dId=3;

DROP PROCEDURE SeeEmp;

SeeEmp;

DELETE FROM Employees where id = 16;

ALTER PROCEDURE SeeEmp
AS
BEGIN
SELECT * FROM Employee where city = 'KHI'; 
END;

SeeEmp;

CREATE PROCEDURE AddEmp @Name varchar(255), @desig varchar(70), @sal int, @city varchar(60), @dId int
AS
BEGIN
INSERT INTO Employee VALUES(@Name, @desig, @sal, @city, @dId)
SELECT * FROM Employee
END;

AddEmp @Name='Haseeb', @desig='Software Developer', @sal=50000, @city='Karachi', @dId=2;

AddEmp @Name='Ali Zaib', @desig='MERN Developer', @sal=250000, @city='Karachi', @dId=3;

DROP PROCEDURE SeeEmp;

SeeEmp;

DELETE FROM Employee where id = 16;

-- indexes 

create index empname_index
On Employee(empName,salary);

select * from Employees where empName='Owais';

drop index employee.empname_index;

-- Triggers

 -- for
 CREATE TRIGGER AddEmp_trigger 
 On Employee
 for INSERT
 as
 BEGIN
 print('a new employee added successfully.')
 END;

 INSERT INTO Employee(empName,designation,salary,city,deptId) VALUES
('Taha ','Mob developer', 58788, 'swat',1);


 -- alter
 ALTER TRIGGER AddEmp_trigger 
 On Employee
 for INSERT
 as
 BEGIN
SELECT * FROM inserted;
 END;

 --Creating audit table
 CREATE TABLE EmpLogs(
 logid int Primary key identity(1,1),
 ActionPerformed nvarchar(255)
 );
 SELECT * FROM EmpLogs;


 SELECT * into Test from Employees;
 SELECT * From Test;

 -- Maintaining logs on tables

  create TRIGGER AddEmp_trigger 
 On Employees
 AFTER INSERT
 as
 BEGIN
DECLARE @Id int, @name varchar(50)
SELECT @Id=id, @name=empName FROM inserted
INSERT INTO EmpLogs VALUES(@name+' having Id = '+ CAST(@Id as varchar(6)) +' is added at '+ cast(GETDATE() as varchar(30)))
 END;


 -- instead of

 SELECT * from Employee;
 Alter TABLE Employee ADD emp_status int default(1) not null;


 CREATE Trigger Soft_Delete
 On Employee
 INSTEAD OF DELETE
 AS
 BEGIN
 DECLARE @ID int
 SELECT @ID=id from Deleted
 Update Employee set emp_status=0 where id=@ID
 END;

 DELETE from Employee where id=15;


 -- Update Trigger
 ALTER Trigger Update_Employees
 On Employees
 for Update
 as
 begin
DECLARE @Id int
DECLARE @Newname varchar(60), @Oldname varchar(60)
DECLARE @Newsalary int,  @Oldsalary int
DECLARE @NewDesignation varchar(60),@OldDesignation varchar(60)
DECLARE @Newdeptid int,  @Olddeptid int
DECLARE @Newcity varchar(60), @Oldcity varchar(60)
DECLARE @AuditString varchar(255)

SELECT * into #Temptable from inserted
WHILE(exists (SELECT id from #Temptable))
begin
SELECT @Id=id, @Newname=empName, @Newsalary=salary, @NewDesignation=designation,@Newcity=city,@Newdeptid=deptId FROM #Temptable
SELECT  @Oldname=empName, @Oldsalary=salary, @OldDesignation=designation,@Oldcity=city,@Olddeptid=deptId FROM deleted where id=@Id
SET @AuditString =''
SET @AuditString ='An employee having id = '+ CAST(@Id as varchar(6))+' on '+  CAST(GETDATE() as varchar(30))+' is changed '
if(@Oldname <> @Newname)
SET @AuditString = @AuditString + ' its name from '+@Oldname +' to '+ @Newname

if(@Oldsalary <> @Newsalary)
SET @AuditString = @AuditString + ' its salary from '+CAST(@Oldsalary as varchar(10)) +' to '+CAST(@Newsalary as varchar(10))

if(@OldDesignation <> @NewDesignation)
SET @AuditString = @AuditString + ' its designation from '+@OldDesignation +' to '+ @NewDesignation

if(@Oldcity <> @Newcity)
SET @AuditString = @AuditString + ' its city from '+@Oldcity +' to '+ @Newcity

if(@Olddeptid <> @Newdeptid)
SET @AuditString = @AuditString + ' its deptid from '+CAST(@Olddeptid as varchar(10)) +' to '+CAST(@Newdeptid as varchar(10))
 Insert into Emplogs values(@AuditString)
 DELETE FROM #Temptable where id=@Id
end
 end;


 select * from Employees;
 update Employees set city='karachi' where id > 4;
 select * from Emplogs;

 -- Transactions 
 -- ddl- data definition language (create , alter, drop)
 -- dml-data manipulation language (insert,update,delete, select)
 -- dcl-data control languages (grant/revoke)
 -- tcl- transaction control language. (ROLLBACK/ COMMIT)

 -- ACID properties.
 
-- A => Atomicity -- all the steps are fully completed or not a single step will execute.
-- C => Consistency -- all the nodes in a network should be aware of the transaction.
-- I => Isolation -- one transaction's info should not be known to another transaction.
-- D => Durability -- changes after transaction should be saved.

-- Integrity
Begin Transaction
Update Employees set empName='Khurram' where id= 1;
Commit Transaction;-- save changes

Rollback Transaction;-- wapis

BEGIN TRANSACTION
BEGIN try 
Update Employees set empName='chakwal' where id= 1/0;
print('Commited Successfully.')
COMMIT TRANSACTION
End try
BEGIN catch
print('Rolled back Successfully.')
Rollback Transaction
END catch;

