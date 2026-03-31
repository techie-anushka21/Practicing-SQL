--Adding columns to an existing table and inserting values into it.
--But this time we will be performing it in a more optimal way.
--Also, we will add a Primary Key.

--Step 1: Create a table:-
CREATE TABLE emps3(
    id NUMBER(4),
    name VARCHAR2(25),
    address VARCHAR2(50)
);

--Table created.

INSERT INTO emps3 VALUES(1,'A','Pune');    --1 row added.
INSERT INTO emps3 VALUES(2,'B','Mumbai');  --1 row added.

--Step 2: Altering the table to add more Columns:-
ALTER TABLE emps3
ADD(
    dob DATE,
    department VARCHAR2(40)
);

--Table altered.

--Step 3: Updating values into the newly added columns:-
UPDATE emps3
SET
    dob = TO_DATE('31-01-2000','DD-MM-YYYY'),
    department = 'HR'
WHERE id = 1;

UPDATE emps3
SET
    dob = TO_DATE('07-07-1995','DD-MM-YYYY'),
    department = 'IT'
WHERE id = 2;

--Step 4: Adding Primary Key:-
ALTER TABLE emps3
ADD CONSTRAINT pk_emps3 PRIMARY KEY(id);    --now no 2 or more employees can have the same id.

SELECT * FROM emps3;