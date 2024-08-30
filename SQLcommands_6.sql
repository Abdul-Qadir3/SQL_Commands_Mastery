# Joins is SQL
# Inner Join (reperesents the common data between two tables)
-- Uncommon data will not be reflected at all
# Full join (Through unioun data)
-- Will reflect all the data in the both tables
# Left Join
# Righ Join

# SQL joins are used to combine rows from two or more tables based on a related column between them.
# Joins allow you to retrieve data from multiple tables in a single query
# Returns only the rows where there is a matchor common in both tables.
use sakila;
select * from country;
select * from city;

 # inner join
 # Returns all the rows from the left table and the matching rows from the right table.
select * from country
inner join city
on country.country_id = city.country_id;

# left join: on specific columns(All data from left table and common data with right table)
# Returns all the rows from the right table and the matching rows from the left table.
# Returns all rows when there is a match in either the left or right table.
select * from country
left join city
on country.country_id = city.country_id;

# left join: on specific columns(All data from righ table and common data with left table)
select * from country
right join city
on country.country_id = city.country_id;

-- Use INNER JOIN when you only care about the rows that have a match in both tables.
-- Use LEFT JOIN when you need all rows from the left table, and also matching rows from the right table (if available).
-- Use RIGHT JOIN when you need all rows from the right table, and also matching rows from the left table (if available).
-- Use FULL JOIN when you need all rows from both tables, regardless of whether they have a match.
-- Use CROSS JOIN when you need to generate all possible combinations of rows from two tables.
-- Use SELF JOIN when you need to compare rows within the same table.

