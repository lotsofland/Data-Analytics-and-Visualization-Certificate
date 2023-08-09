-- DISTINCT Command

--Distinct Values are unique and have no duplicates in a given set. 

SELECT DISTINCT(column_name) 
FROM table_name;

--If pulling car makes from a list of data:

SELECT DISTINCT(make)
FROM common;

--Would highlight all the different makes without having to manually sift through the data. 

--Taking it a step further, using ORDER BY to bring them into alphabetical order. 

SELECT DISTINCT(make)
FROM common
ORDER BY make ASC;

--Another interesting use, when taking the count it may include duplicates. However, if you add DISTINCT it'll pull a count of unique car makes. 

SELECT COUNT(make)
FROM common;
--347 found

--versus

SELECT COUNT(DISTINCT(make))
FROM common;
--42 found

--QUIZ Commands using vehicles table within the fueleconomy database. 

--1. How many distinct values are there for the column model? 

SELECT COUNT(DISTINCT(model))
FROM vehicles;

--result: 3,198

--2. Distinct count of class column? 

SELECT COUNT(DISTINCT(class))
FROM vehicles;

--result: 34

--3. what are some distinct values of the fuel column? 

SELECT DISTINCT(fuel)
FROM vehicles;

--Result: Diesel, Regular, Midgrade, CNG. 