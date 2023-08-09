--INNER JOIN Command

--This is the structure of INNER JOIN:

SELECT column_name(s) 
FROM table1_name 
INNER JOIN table2_name 
ON table1.column_name = table2.column_name;

--QUIZ COMMANDS using dvdrentals. 

--1. Use INNER JOIN on film and film_actor using the film_id column. 

SELECT *
FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id;

--Result shows film_id 25 for the third record.

--2. Execute an INNER JOIN query on the tables film and film_category, using
--the film_id column. SELECT all columns. What is the category_id for the
--second record in the output?

SELECT *
FROM film
INNER JOIN film_category
ON film.film_id = film_category.film_id;

--result for second record category_id is 11. 

