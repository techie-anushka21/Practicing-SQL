--Creating a table for students' details

--Table creation
CREATE TABLE students(
    id NUMBER(5),
    name CHAR(20),
    address VARCHAR2(40)
);

--Value insertion
INSERT INTO students VALUES (101, 'A', 'Delhi');
INSERT INTO students VALUES (102, 'B', 'Mumbai');
INSERT INTO students VALUES (103, 'C', 'Chennai');
INSERT INTO students VALUES (104, 'D', 'Kolkata');

SELECT * FROM students;    --To fetch the data from table