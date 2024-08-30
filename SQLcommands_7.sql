# buildin functions in SQL
# String function
# Numeric function
# Datetime function
# And More


# String function
# concat function : Merge of two column
select * from actor;
select actor_id,first_name,last_name, concat(first_name," ",last_name) 
as full_name 
from actor;

# UPPER, lower, length function
select actor_id,first_name,last_name,lower(first_name) as first_u, length(last_name) as FL from actor;

# substring: 
select substring("Hello World",1,5) as SubSTR;
select substring("Hello World",6,9) as SUBStr;