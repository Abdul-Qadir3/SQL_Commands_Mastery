# Create db, 
# Create table
# Add a table 
# Export Data
# Modified / add / delete

-- use available db 
use world;
select * from city;
select * from country;
use my_database;
select * from courses;
select Course_id,duration from courses;
create database ineuron;

-- create a new course 
use ineuron;
create table Courses(course_id Char(5),course_name varchar(25), duration int, faculty varchar(30));
describe courses;
-- describe sales;
-- drop table courses;
-- drop table sales;
-- drop database ineuron;

-- Table creation and inserting data row by row

insert into courses
values(12,"Data Analytics",9,"zia khan");
insert into courses
values(13,"Data Science",11,"Qasim");
insert into courses
values(14,"Machine Learning",12,"Qasim Khan");

-- incase if we want to input the values on selected columns not all
insert into courses (course_id,course_name,faculty)
values(15,"Artificial Intelligence","Qasim Khan");
select * from courses;

-- change table name 
alter table courses
add column experience int;

-- drop the column
alter table courses
drop column experience;
select * from courses;


