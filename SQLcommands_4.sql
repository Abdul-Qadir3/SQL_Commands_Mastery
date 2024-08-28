# Filtering operators using like/in/between
#Arithemetic Operators
#logical Operators(AND/ OR/ NOT)
# Limit /Offset
# Aggragation of numerical data eg sum,average,count etc
# group by 
# Case when

use world;
select * from city
where CountryCode like '%T%';

# fetch  the details of IDs with country code "TWN"
select ID, CountryCode from city
where CountryCode = "TWN"; # works for one selection of the data

# fetch  the details of IDs with country code "TWN", "ANT", ETH
select ID, CountryCode ,District ,Population from city
where CountryCode in ("TWN", "ANT", "ETH") # works for one selection of the data more then one we use "in" operator
order by ID; 

# fetch the population in between 150000 to 200000
select * from city
where Population between 190000 and 200000;

# fetch the population in between 50000 to 200000 and country code should be NLD
select * from city
where Population between 60000 and 200000 and CountryCode = "NLD";

# Not Operator: Fetch data of population not more then 1 lakh
select * from city
where not Population > 100000;

# fetch  the details of IDs not from country code "TWN", "ANT", ETH
select ID, CountryCode ,District ,Population from city
where CountryCode not in ("TWN", "ANT", "ETH") # works for one selection of the data more then one we use "in" operator
order by ID;

# "<>" Not equal to
select * from city
where Population <>1780000; # excludes

use sakila;
select * from payment;

# fetch the dat from customer id more than 10 and amount more then 8.99
select * from payment
where customer_id > 10 and amount > 8.99;

# fetch the dat from customer id not more than 10 and amount is more then 8.99
select * from payment
where not customer_id > 10 and amount > 8.99;

# fetch the dat from customer id not more than 10 and amount is not more then 8.99
select * from payment
where not customer_id > 10 and not amount > 8.99;

# Limit 5: Top 5 rows
select * from payment
limit 5;

# Limit 5: Top 10 rows
select * from payment
limit 10;

# Limit 10 offset 7: Fetch 10 rows from table leaving top 7
select * from payment
limit 10 offset 7;