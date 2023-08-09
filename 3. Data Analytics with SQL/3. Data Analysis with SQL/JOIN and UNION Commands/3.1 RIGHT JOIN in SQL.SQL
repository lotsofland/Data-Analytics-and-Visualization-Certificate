-- RIGHT JOIN

--This is the structure of RIGHT JOIN:

SELECT column_name(s) 
FROM table1_name 
RIGHT JOIN table2_name 
ON table1.column_name = table2.column_name;

--The RIGHT JOIN command returns all records from the right table (Table 2),
--along with matching records from the left table (Table 1). If there are no
--matches at all, then only the right table (Table 2) records are returned.

--Remember that you can choose whichever columns you'd like to display in your 
--output by specifying them in the SELECT clause.

--QUIZ COMMANDS using employees database

--1. Column to perform a RIGHT JOIN on tables dept and emp? 

--deptno

--2. Use a RIGHT JOIN to connect the two tables dept as left and emp as right
--table. What department does COOK work for? 

SELECT *
FROM dept 
RIGHT JOIN emp 
ON dept.deptno = emp.deptno;

--NULL 

