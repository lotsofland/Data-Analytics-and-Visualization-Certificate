--TIME and DATE Command Notes

--The structure of the date command is:

CURRENT_DATE; 

--To return the value in the output use:

SELECT CURRENT_DATE; 

--Applying operators to the command will add or subtract dates to the current
--date: 

SELECT CURRENT_DATE + 5;

--Might be a useful tool when estimating a processing time or shipping time. 



--In a similar fashion we can return the current time using: 

CURRENT_TIME;

--and 

SELECT CURRENT_TIME; 

--It is important to note that these commands are relative to the dataset and
--may not match with local timezone. 

--Using this command you can set the server's time to a specific timezone
--using: 

SET timezone = 'timezone';

--'America/New_York' for the Eastern Time Zone 
--'America/Chicago' for the Central Time Zone 
--'America/Denver' for the Mountain Time Zone 
--'America/Los_Angeles' for the Pacific Time Zone 



CURRENT_TIMESTAMP

--Returns the Date and Time when the code is run. 

SELECT CURRENT_TIMESTAMP;


--EXTRACT to Pull Year, Month, or Day to isolate changes over time. 

EXTRACT (YEAR from date'YYYY-MM-DD'); 

--or 

EXTRACT (YEAR from date'MM/DD/YYYY');

--Exchange YEAR, for MONTH, or DAY.


--To extract from an entire column, follow this structure:

SELECT *, EXTRACT (YEAR from column_name) 
FROM table_name;

--Using the * after SELECT we can pull all columns as well as the new extracted
--year column. 

-- AGE, working with data that contains dates, like shipping or delivery for
--example, you may want to see the time passed since the product has shipped.
--Or may want to see how long it took from products to go from shipping status
--to delivery status. 

--Find the difference using this command:

AGE ('date2','date1');

--date1 being the earlier date, date2 being the more recent date. 

--Using SELECT with this command will return the difference between the two
--dates. 


--QUIZ COMMANDS using data from bitcoinhistoricaldata. 

--1. Finding the difference of dates 9/8/2021 and 5/2/2018

SELECT AGE ('9/8/2021', '5/2/2018');

--Revealed AGE of 3 years, 4 months, and 6 days. 

--2. Command to reveal current time in SQL. 

CURRENT_TIME

--3. using bitcoinhistoricaldata database to to extract the months in the
--timestamp column that make up the bitstamp table. find the result of the
--first record.  

SELECT EXTRACT (MONTH from timestamp) FROM bitstamp;

--result of the first record was 12. 
