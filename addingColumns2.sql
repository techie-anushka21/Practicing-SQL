--Adding columns to an existing table and inserting values into it.
--But this time we will be performing it in a more optimal way.

--Step 1: Create a table:-
CREATE TABLE emps(
    id NUMBER(4),
    name VARCHAR2(25),
    address VARCHAR2(50)
);

--Table created.

INSERT INTO emps VALUES(1,'A','Pune');    --1 row added.
INSERT INTO emps VALUES(2,'B','Mumbai');  --1 row added.

--Step 2: Altering the table to add more Columns:-
ALTER TABLE emps
ADD(
    dob DATE,
    department VARCHAR2(40)
);

--Table altered.

--Step 3: Updating values into the newly added columns:-
UPDATE emps
SET
    dob = TO_DATE('31-01-2000','DD-MM-YYYY'),
    department = 'HR'
WHERE id = 1;

UPDATE emps
SET
    dob = TO_DATE('07-07-1995','DD-MM-YYYY'),
    department = 'IT'
WHERE id = 2;

SELECT * FROM emps;