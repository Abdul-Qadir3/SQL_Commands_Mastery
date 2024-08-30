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