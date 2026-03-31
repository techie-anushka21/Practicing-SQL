--Adding more values to an Existing Table.
--Also we will add Primary Key.

--Step 1: Create a table:-
CREATE TABLE emps4(
    id NUMBER(4),
    name VARCHAR2(25),
    address VARCHAR2(40),
    dob DATE,
    department VARCHAR2(45)
);

--Step 2: Insert values:-
INSERT INTO emps4 VALUES(1,'A','Pune',TO_DATE('31-01-2000','DD-MM-YYYY'),'HR');    --1 row created.
INSERT INTO emps4 VALUES(2,'B','Mumbai',TO_DATE('07-07-1995','DD-MM-YYYY'),'IT');  --1 row created.

--Now this is an existing table.

--Step 3: Adding more records (rows) to the existing table:-
INSERT INTO emps4 VALUES(3,'C','Delhi',TO_DATE('09-09-1997','DD-MM-YYYY'),'HR');    --1 row created.
INSERT INTO emps4 VALUES(4,'D','Hyderabad',TO_DATE('11-12-1998','DD-MM-YYYY'),'IT');    --1 row created.

--Step 4: Add Primary Key:-
ALTER TABLE emps4
ADD CONSTRAINT pk_emps4 PRIMARY KEY(id);

SELECT * FROM emps4;