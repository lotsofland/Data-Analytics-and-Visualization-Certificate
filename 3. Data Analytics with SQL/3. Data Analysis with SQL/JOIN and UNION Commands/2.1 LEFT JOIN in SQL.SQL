-- LEFT JOIN Command

--This is the structure of LEFT JOIN:

SELECT column_name(s) 
FROM table1_name 
LEFT JOIN table2_name 
ON table1.column_name = table2.column_name;

--For example, using data from the band_members database. 

SELECT *
FROM band_instruments;

--and

SELECT *
FROM band_members;

--They share the name column. 
--Treat band_instruments as table1, band_members as table2.

SELECT * 
FROM band_instruments 
LEFT JOIN band_members 
ON band_instruments.name = band_members.name;

--John and Paul are presnt in both tables so they were successful. Keith was
--not present in the rght table so the results from right table for keith are
--NULL. Mick was not in the left table so his info from the right table was
--left out. 

--QUIZ COMMANDS using the department_of_education database. 

--1. Using finance and naep we are going to join the tables. What is a common column? 
--they both share the column id. 

SELECT *
FROM finance
LEFT JOIN naep
ON finance.id = naep.id;

--2. first result of column avg_math_4_score is 208.328
