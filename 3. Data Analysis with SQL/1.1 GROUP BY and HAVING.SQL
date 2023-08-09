-- GROUP BY & HAVING COMMANDS--

-- General Structure of GROUP BY:
SELECT column_name(s) 
FROM table_name 
WHERE condition 
GROUP BY column_name
(s);

--Using data from nycflights13 to determine if the dataset is for only 2013 or
--if other years are included: 
SELECT year 
FROM flights 
GROUP BY year; 

--Since the only year returned was 2013, we were able to determine the data
--set is for only 2013.

--Could do a similar command to determine the origin of flights in the
--dataset: 
SELECT origin 
FROM flights 
GROUP BY origin;
--In this case, there are 3 cities the flight data originates from: Liberty
--nt'l Airport, JFK Int' Airport, and LaGuardia Airport. 



--Using GROUP BY to summarize data
SELECT column_name(s) 
FROM table_name 
WHERE condition 
GROUP BY column_name
(s);

--In addition to grouping by column it is possible to GROUP BY aggregate data
--functions like SUM, AVG, COUNT, MIN, and MAX. 
SELECT column_names(s), AGGREGATE(column_name) 
FROM table_name WHERE condition
GROUP BY column_name;

--For example: To determine how many flights departed in 2013 from each airport
--you could use
SELECT origin, COUNT(flight) 
FROM flights 
GROUP BY origin; 

--The command will group the data by where the origin of the flight and then
--counts the amount of flights departing that airport.


--Including HAVING conditions.

--Since the WHERE command cannot be applied to aggregate data we have a tool
--called the HAVING clause. 
SELECT column_name 
FROM table_name 
WHERE condition 
GROUP BY column_name 
HAVING condition; 

--To build on the last command structure we will pull the amount of flights from
--each airport that only have a flight count over 111,000. 

SELECT origin, COUNT(flight) 
FROM flights 
GROUP BY origin 
HAVING COUNT(flight)> 111000; 

--Only Liberty Int'l Airport and JFK Int' Airport show as a result since
--LaGuardia Airport has fewer than 111,000 flights departing in 2013. 



--QUIZ COMMANDS using database windsor_home_prices

--1. To show all possible values of bedrooms: 

SELECT bedrooms 
FROM windsor_home_prices 
GROUP BY bedrooms;

--2. To show the possible number of stories of each building:

SELECT stories 
FROM windsor_home_prices 
GROUP BY stories; 

--3. Grouping average house price per amount of bedrooms:

SELECT bedrooms, AVG(price) 
FROM windsor_home_prices 
GROUP BY bedrooms;

--4. Using HAVING to limit the search to prices above $60,000
s
SELECT bedrooms, AVG(price) 
FROM windsor_home_prices 
GROUP BY bedrooms 
HAVING AVG(price)> 60000;

