# Aggregation is have many form such as sum,avg,count, max,min
# 1. Show the countrywise average population, avg life expectancy ,total surface area
# 2. Show the countrywise average population, avg life expectancy ,total surface area
# 3. Categorize countries as under-developed , developing and developed using GNP
# 4. Caategorize the country as per the population density as LPD,MPD and HPD


# Group By merges or agregates
use world;
select * from country
order by continent;

# fetch the total surface area
select sum(SurfaceArea) as Total_SurfaceArea,sum(Population) as Total_Population,
avg(LifeExpectancy) as Avg_LifeExpectancy,sum(GNP) as Total_GNP from country;

# Groupby: Group by from a particular parameter by continent
select Continent,sum(SurfaceArea) as Total_SurfaceArea,sum(Population) as Total_Population,
avg(LifeExpectancy) as Avg_LifeExpectancy,sum(GNP) as Total_GNP from country 
group by Continent;

# Groupby: Group by from a particular parameter by Region
select Region,sum(SurfaceArea) as Total_SurfaceArea,sum(Population) as Total_Population,
avg(LifeExpectancy) as Avg_LifeExpectancy,sum(GNP) as Total_GNP from country 
group by Region;

# Groupby: Group by from a particular parameter by Region and count total number of countries in a particualr region
select Region,count(Name),sum(SurfaceArea) as Total_SurfaceArea,sum(Population) as Total_Population,
avg(LifeExpectancy) as Avg_LifeExpectancy,sum(GNP) as Total_GNP from country 
group by Region;

# Groupby: Group by from a particular parameter by Region and count total number of countries in a particualr Continent
select Continent,count(Name),sum(SurfaceArea) as Total_SurfaceArea,sum(Population) as Total_Population,
avg(LifeExpectancy) as Avg_LifeExpectancy,sum(GNP) as Total_GNP from country 
group by Continent;


# we use group by with agregation  to understand the sumary of the data
# we use group by with agregation  to understand the sumary of the data
select Continent, count(Name) as No_of_Country from country
group by Continent;


# Having
# we use group by with agregation and use having on agregation
select Continent, count(Name) as No_of_Country from country
group by Continent
having No_of_Country >30;

# we use group by with agregation and use having on agregation
select Continent, count(Name) as No_of_Country from country
group by Continent
having No_of_Country >3
order by No_of_Country;

# Case When :
# Categorize countries as under-developed , developing and developed using GNP
select min(GNP), max(GNP) from country;

select Name, Continent,
Case
when GNP <= 1000000 then "Under Developed"
when GNP > 1000000 and GNP <= 4500000 then "developing"
else "Developed" end
from country;

# above from a column so convert to alias
select Name, Continent,
Case
when GNP <= 1000000 then "Under Developed"
when GNP > 1000000 and GNP <= 4500000 then "developing"
else "Developed" end as Country_Categ
from country
having Country_Categ = "Developed";

# Group by using the particular column(entire code itself) alias will not be used for group by
select Case
when GNP <= 100000 then "Under Developed"
when GNP > 100000 and GNP <= 4500000 then "developing"
else "Developed" end as Country_Categ, count(Name) as no_of_countries
from country
group by Case
when GNP <= 100000 then "Under Developed"
when GNP > 100000 and GNP <= 4500000 then "developing"
else "Developed" end;