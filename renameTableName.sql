--Renaming a Table and Column in SQL.
--Also, we will add a Primary Key.

--Step 1: Create a table:-
CREATE TABLE emps5(
    id NUMBER(5),
    name VARCHAR2(25),
    address VARCHAR2(40),
    dob DATE,
    department VARCHAR2(50)
);

--Step 2: Inserting rows into the table (this is optional):-
INSERT INTO emps5 VALUES(1,'A','HYD',TO_DATE('22-07-1991','DD-MM-YYYY'),'HR');
INSERT INTO emps5 VALUES(2,'B','BLR',TO_DATE('31-07-1996','DD-MM-YYYY'),'IT');

--Step 3: Rename the table:-
--SYNTAX: RENAME existing_table_name to new_table_name;
RENAME emps5 to em5;

--Step 4: Rename any column:-
--SYNTAX: ALTER TABLE table_name
--        RENAME COLUMN existing_column_name TO new_column_name;
ALTER TABLE em5
RENAME COLUMN department to dept;

--Step 5: Add a Primary Key:-
ALTER TABLE em5
ADD CONSTRAINT pk_em5 PRIMARY KEY(id);

SELECT * FROM em5;