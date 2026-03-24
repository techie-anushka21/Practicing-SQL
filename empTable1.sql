--1. Creating our second table in SQL, will be moving to other concepts in upcoming programs.
--2. Added Primary Key.
--3. Inserted values in the table.

--4. Also covered the following Common Mathematical Functions:-

--i. MAX() -> For maximum value.
--ii. MIN() -> For minimum value.
--iii. AVG() -> For average value.
--iv. SUM() -> For sum (addition).
--v. COUNT() -> For totalling.

--Table creation
CREATE TABLE employees(
    emp_id NUMBER(5),
    emp_name CHAR(25) NOT NULL,
    dept VARCHAR2(50) NOT NULL,
    salary NUMBER(15) NOT NULL
);

--Adding "PRIMARY KEY"
ALTER TABLE employees
ADD CONSTRAINT PK PRIMARY KEY(emp_id);

--Inserting values
INSERT INTO employees VALUES(1,'A','IT',60000);
INSERT INTO employees VALUES(2,'B','HR',50000);
INSERT INTO employees VALUES(3,'C','IT',75000);
INSERT INTO employees VALUES(4,'D','IT',45000);
INSERT INTO employees VALUES(5,'E','HR',66000);
INSERT INTO employees VALUES(6,'F','HR',42000);

SELECT MAX(salary) FROM employees;    --returns "75000"
SELECT MIN(salary) FROM employees;    --returns "42000"
SELECT SUM(salary) FROM employees;    --returns "338000"
SELECT AVG(salary) FROM employees;    --returns "56333.3333"

--Obtaining information from Specific Departments
SELECT MAX(salary) FROM employees WHERE dept = 'HR';    --returns 66000
SELECT MIN(salary) FROM employees WHERE dept = 'IT';    --returns 45000

SELECT AVG(salary) FROM employees WHERE dept = 'HR';    --returns 52666.6666  
SELECT AVG(salary) FROM employees WHERE dept = 'IT';    --returns 60000

SELECT COUNT(*) FROM employees;    --returns 6 (total no. of employees in the company)

SELECT COUNT(*) FROM employees WHERE dept = 'HR';    --return 3 (total no. of employees from "HR" Department)
SELECT COUNT(*) FROM employees WHERE dept = 'IT';    --return 3 (total no. of employees from "IT" Department)