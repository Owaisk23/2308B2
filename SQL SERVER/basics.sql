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