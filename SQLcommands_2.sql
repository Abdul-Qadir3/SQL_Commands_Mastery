# we use this to avoid repetion as below
use sakila; 

# Or we can 
select * from world.city;

# Retrieve selected columns only
select actor_id,last_name,last_update from actor ac;

# Aliases Are the nickname of columns
# like for "actor" we us "ac"
select actor_id,last_name from ac;

# creating order by order in ascending order
select actor_id,last_name,last_update from actor ac
order by actor_id;

# creating order by order in descending order
select actor_id,last_name,last_update from actor ac
order by actor_id desc;

# creating order by order in descending order with actor_id if more then 2 id then by last_name
select actor_id,last_name,last_update from actor ac
order by actor_id desc, last_name;