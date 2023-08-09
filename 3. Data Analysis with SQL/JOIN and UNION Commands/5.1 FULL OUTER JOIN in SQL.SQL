-- FULL OUTER JOIN Command

--This is the structure of FULL OUTER JOIN:

SELECT column_name(s) 
FROM table1_name 
FULL OUTER JOIN table2_name 
ON table1.column_name = table2.column_name;

--QUIZ COMMANDS using tmdb_5000

--1. FULL OUTER JOIN query credits and movies using the movie_id column. 

SELECT * 
FROM credits	
FULL OUTER JOIN movies
ON credits.movie_id = movies.movie_id;

--2. FULL OUTER JOIN query on products and transactions using product_id column. 

SELECT * 
FROM credits	
FULL OUTER JOIN movies
ON credits.movie_id = movies.movie_id;

