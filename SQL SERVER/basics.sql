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




