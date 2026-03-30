--Adding columns to an existing table and inserting values into it.

--Step 1: Create a table:-
CREATE TABLE emps(
    id NUMBER(5),
    name VARCHAR2(25),
    address VARCHAR2(40)
);

--Table created.    (Now this is our existing table.)

--Step 2: Add some values to the existing table:-
INSERT INTO emps VALUES(1,'A','Pune');    --1 row created.
INSERT INTO emps VALUES(2,'B','Mumbai');  --1 row created.

--Step 3: Alter the table and add new columns:-
ALTER TABLE emps
ADD dob DATE;

ALTER TABLE emps
ADD department VARCHAR2(40);

--Step 4: Update the table by assigning values to the newly added columns in the existing table:-
UPDATE emps
SET dob = TO_DATE('31-01-2000','DD-MM-YYYY')
WHERE ID = 1;    --1 row updated.

UPDATE emps
SET department = 'HR'
WHERE ID = 1;    --1 row updated.

UPDATE emps
SET dob = TO_DATE('07-07-1995','DD-MM-YYYY')
WHERE ID = 2;    --1 row updated.

UPDATE emps
SET department = 'IT'
WHERE ID = 2;    --1 row updated.

SELECT * FROM emps;    --Shows the existing table with newly added columns and their values

--NOTE: This is not the very optimal code, but we are just learning and will optimize it in further programs.