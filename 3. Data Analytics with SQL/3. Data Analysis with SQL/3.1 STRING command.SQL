--Strings are treated differently than numbers and have their own set of commands for manipulating strings. 

--Shown here: UPPER, LOWER, TRIM, CONCAT, LEFT, RIGHT. 

--Used to format strings, bring consistency to data, and combine or extract numbers. 


--UPPER

SELECT UPPER('string');

--or 

SELECT UPPER(column_name) 
FROM table_name;

--To apply the command to an entire column of data. 


--LOWER

--For lowercase, apply the command in the exact same structure. 

SELECT LOWER('string');

--or

SELECT LOWER(column_name) 
FROM table_name;



--TRIM 

--Used to remove unwanted characters, such as extra spaces or symbols. 

SELECT TRIM([leading/trailing/both] [characters] FROM 'string')

--The word leading is used when the characters to be removed are at the beginning of the string. 

--The word trailing is used when the characters to be removed are at the end of the string. 

--The word both is used when the characters to be removed are at the beginning and the end of the string.

--If the characters argument is left blank, then only spaces are removed.

--The string argument can be a string or a column name in a table.

--example: 
SELECT TRIM(leading 'http://' FROM homepage) 
FROM movies;

--would remove http:// from a column of websites. 

--CONCAT

--The CONCAT command in SQL will combine strings for you so that you don't have to type them out yourself.

SELECT CONCAT('string1', 'string2', 'string3', ... );

--For example, you may want to combine a first name and last name to create a full name. Similarly, you may want to combine a street address with a city, state, and zip code to create a full address.

--You can use CONCAT to combine values in multiple columns in a data table as well. The structure remains the same, with column names used in place of string names.

SELECT CONCAT(column_name1, column_name2,...) 
FROM table_name;

--A table that contains runtime of movies in minutes, but does not have the unit could be fixed up with the command: 

SELECT CONCAT(runtime, ' min') 
FROM movies; 

--LEFT and RIGHT

--Extract a few characters from the LEFT or the RIGHT: 

SELECT LEFT('string', number_of_characters);

--or from a column: 

SELECT LEFT(column_name, number_of_characters) 
FROM table_name;

--(swapping LEFT for RIGHT when necessary)


--QUIZ COMMANDS using codedtweets table in the twitterairlinessentiment database. 

--1. To return the airline_sentiment column with all caps: 

SELECT UPPER(airline_sentiment)
FROM codedtweets;

--2. combine columns airline_sentiment and airline to format like airline_sentiment - airline. 

SELECT CONCAT(airline_sentiment,' - ', airline)
FROM codedtweets;

--3. Create a query that selects the leftmost char. of the column text. What returns in the first record? 

SELECT LEFT(text, 1)
FROM codedtweets;

--result: @

--4. Create a query that trims the starting @ from the text column. Result of first record? 

SELECT TRIM(leading '@' FROM text)
FROM codedtweets;

--result: VirginAmerica What @dhepburn said.
