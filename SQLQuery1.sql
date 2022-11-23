create database Institute;
use Institute;

CREATE TABLE Course (
    CourseName varchar(25) NOT NULL,
    CourseID int NOT NULL,
    Fees int,
    PRIMARY KEY (CourseName)
);
select * from Course;

INSERT INTO Course ( CourseName,CourseID, Fees)
VALUES ('DAC',01,  100000);

CREATE TABLE Student (
    RollNo int NOT NULL,
    Name varchar(25) NOT NULL,
    Age int,
   CourseName varchar(25) NOT NULL,
   Grade varchar(20),
   FOREIGN KEY (CourseName) REFERENCES Course(CourseName)
);

ALTER TABLE Student
ADD PRIMARY KEY (RollNo);

select * from Student;

INSERT INTO Student(RollNo,Name,Age, CourseName,Grade)
VALUES (101,'Shivani', 22, 'DAC', 'A');

DELETE FROM Student WHERE RollNo=104;


