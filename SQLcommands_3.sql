#Day 1
# data/datatype/structured /unstructured/Database/RDBMS/
#Day 2
# how to create a database /create table/ alter table/ basic queries/DDL,DML,DQL/order by/Aliases
use sakila;

select actor_id,last_name,last_update from actor ac
order by actor_id desc, last_name; # Taking first and 2nd periority

# How can we filter the data (Row work)
# Constraints, Filtering (where clause) ,Joints

#Constrains
use ineuron;

# NotNull
create table Courses(course_id Char(5) not null,course_name varchar(25) unique, duration int check(duration>0), faculty varchar(30) default("Sir zia"));
select * from courses;

# To modify/change the column
alter table courses
modify column course_id char(5) not null;

insert into courses(course_id,course_name)
values(23,"Deep Learining");
select * from courses;

# In unique we cannot make duplicate entry

# Default (if have not enter the column vlue sql will enter default value)
alter table courses
modify column duration int default(12);

insert into courses(course_id,course_name)
values(13,"Deep L");
select * from courses;

# check (give a condition and check weather the condition fulfills or not if fullfils made the data entry or vice versa)

alter table courses
modify column duration int check(duration>0);

insert into courses(course_id,course_name,duration)
values(19,"Deep Ler",-1); # wiil give error fro negative value
select * from courses;

insert into courses(course_id,course_name,duration)
values(19,"Deep Ler",3); # wiil not give error for positive value
select * from courses;

drop table courses;

# Data Filteration using wher clause

Use sakila;
describe customer;
select * from customer
where store_id = 1;

# fetch data of all amount between 3 to 6
select * from payment
where amount > 3 and amount < 7;

# fetch data of all amount between 3 to 6 and also giving alias
select payment_id as PID, customer_id as CID, staff_id as SID, rental_id as RID,
amount as AM, payment_date as PDA, last_update as LUP from payment
where amount > 3 and amount < 7; # we can also use or operator

# fetch data of all amount between 3 to 6 and also giving alias
select payment_id as PID, customer_id as CID, staff_id as SID, rental_id as RID,
amount as AM, payment_date as PDA, last_update as LUP from payment
where amount > 3 or staff_id = 1;

# fetch all the films with film id starting from "6" 
# using "like" can reflect a "phrase" from the sentence
select * from inventory
where film_id  like "%6%"; # "%" shows and captures before and after values of 6 
# this concept is similarly used in text data
