# Sub-queries: To create or to fetch complecated data base
# To solve complecated problems

# Built in function
# Numeric Functions: Abs(), Round(), Ceil(), Floor
# abs(absolut): Converst Negative values to positive and positive remain positive
use world;
select Population , abs(Population) as Population_Abs from city;

# Round: Give both round-up and round-down
select * from country;
select round(SurfaceArea,0) as surface_area from country;

#Ceil : Round to upward
select CEIL(3.1);
select CEIL(-2.9);

# Floor : Rounds to Downward
select floor(3.9);
select floor(-2.3);

# SQRT
select round(sqrt(123),3);

# Exponent
select exp(1);

# log
select log(2.718281828459045);

use sakila;
select * from payment;

select payment_id,rental_id, year(payment_date) as Pay_year , month(payment_date) as pay_month, 
day(payment_date) as pay_day, time(payment_date) as pay_time
from payment;

# taking diference from todays date using "DATEDIFF"
select payment_id,timediff(current_date() - (payment_date)) as payed_ago from payment;

SELECT TIMEDIFF('2024-08-29 15:00:00', '2024-08-30 10:00:00') AS TimeDifference;

# Retrives data using subqueries
select * from film;
select film_id, category_id
from film_category
where film_id in (select film_id from film
where rental_duration = 6);