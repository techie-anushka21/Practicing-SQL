--Dropping a table in SQL.

--Create a table first (this is mandatory):-
CREATE TABLE emps(
    id NUMBER(4),
    name VARCHAR2(25),
    address VARCHAR2(50)
);

--Insert values in it (this is optional, can skip this part):-
INSERT INTO emps VALUES(1,'A','Pune');
INSERT INTO emps VALUES(2,'B','Mumbai');

--Dropping the table:-   (SYNTAX: DROP TABLE table_name)
DROP TABLE emps;    --The table is dropped after executing this command.