-- Question 4: College Course Management System
-- B. Practical:
-- Create a College Course Management System using Course and Faculty tables.
-- Create Course and Faculty tables with suitable attributes.
-- Apply appropriate Primary Key and Foreign Key constraints.
-- Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- Insert at least 5 faculty records and 5 course records.
-- Display courses having credits between 2 and 4.
-- Display courses whose names start with a particular letter using LIKE.
-- Display courses belonging to a selected set of departments using IN.
-- Display unique department names using DISTINCT.
-- Update the faculty assigned to a particular course.
-- Delete a course based on a suitable condition.
-- Add a new column to the Course table using ALTER.
-- Display the final Course records.
create database CCM;
use CCM;
create table Course
(c_id int primary key,
c_name varchar(100) unique,
credits int not null,
department varchar(100) default "AIML");
create table Faculty
(f_id int primary key,
f_name varchar(100),
department varchar(100) default "AIML");
insert into Course 
values(1,"DBMS",4,"CSE"),
(2,"OOPS USING JAVA",3,"AIML"),
(3,"ADSA",4,"CSE"),
(4,"PROB AND STATS",2,"AIML"),
(5,"COA",1,"CSE");
insert into Faculty 
values(101,"Aman","CSE"),
(102,"Shika","AIML"),
(103,"Atul","CSE"),
(104,"Riya","AIML"),
(105,"Ritu","CSE");

alter table Faculty
add column course varchar(100);

update Faculty
set course="DBMS"
where f_id=101;

update Faculty
set course="OOPS USING JAVA"
where f_id=102;

update Faculty
set course="ADSA"
where f_id=103;

update Faculty
set course="PROB AND STATS"
where f_id=104;

update Faculty
set course="COA"
where f_id=105;

select * from Course
where credits between 2 and 4;

select * from Course
where c_name like "D%";

select * from Course 
where department in("CSE","AIML");

select distinct department
from Course;

update Faculty
set f_name="Reshma"
where course="OOPS USING JAVA";

delete from Course
where c_id=5;

alter table Course
add column no_of_students int;

select * from course;
