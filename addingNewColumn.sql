--Adding columns to an existing table and inserting values into it.
--We will also add Primary Key.

--Step 1: Create a table:-
CREATE TABLE emps2(
    id NUMBER(5),
    name VARCHAR2(25),
    address VARCHAR2(40)
);

--Table created.    (Now this is our existing table.)

--Step 2: Add some values to the existing table:-
INSERT INTO emps2 VALUES(1,'A','Pune');    --1 row created.
INSERT INTO emps2 VALUES(2,'B','Mumbai');  --1 row created.

--Step 3: Alter the table and add new columns:-
ALTER TABLE emps2
ADD dob DATE;

ALTER TABLE emps2
ADD department VARCHAR2(40);

--Step 4: Update the table by assigning values to the newly added columns in the existing table:-
UPDATE emps2
SET dob = TO_DATE('31-01-2000','DD-MM-YYYY')
WHERE id = 1;    --1 row updated.

UPDATE emps2
SET department = 'HR'
WHERE id = 1;    --1 row updated.

UPDATE emps2
SET dob = TO_DATE('07-07-1995','DD-MM-YYYY')
WHERE id = 2;    --1 row updated.

UPDATE emps2
SET department = 'IT'
WHERE id = 2;    --1 row updated.

SELECT * FROM emps2;    --Shows the existing table with newly added columns and their values

--Step 5: Adding Primary Key:-
ALTER TABLE emps2
ADD CONSTRAINT pk_emps2 PRIMARY KEY(id);

--After this if you try:-
--INSERT INTO emps2 VALUES(1,'E','Kolkata',TO_DATE('24-02-2002','DD-MM-YYYY'),'IT');
--The above command will throw an error because the id used is already assigned to employee 'A'.
--NOTE: This is not the very optimal code, but we are just learning and will optimize it in further programs.