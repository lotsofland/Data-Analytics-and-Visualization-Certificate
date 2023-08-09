--CAST Command 

--To convert data types. 

SELECT CAST(expression AS datatype(length)) 
FROM table_name

--Can be used to modify data type from a text to numeric for example a column
--of prices, you want an average but they're text currently. 

SELECT AVG(CAST(price AS decimal)) 
FROM cheapest;

--or turn written date into TIMESTAMP

SELECT CAST(cheap_date AS timestamp) 
FROM cheapest;

--due to the datatype we couldn't use LEFT as is but with varchar we can
--adjust the data type and pull the year. 

SELECT LEFT(CAST(cheap_date AS varchar), 4) 
FROM cheapest; 

--QUIZ COMMANDS using weatherinszeged table in the weatherinszeged database

--1. To shorten the temperature column, which data types should be converted
--into to shorten the values without turning them into integers? 

--decimal

SELECT CAST(temperature AS decimal(5,2))
FROM weatherinszeged;

--2. convert date from timestamp to date format. 

SELECT CAST(date AS date) 
FROM weatherinszeged;

--first result: 2006-03-31

--3. Humidity data is shown in decimal form with double precision. 

--Converting it to an integer would render the column useless. 
