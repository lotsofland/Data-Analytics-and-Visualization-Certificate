-- UNION Command

--you can use the UNION command, following the structure below:

SELECT column_name(s) FROM table1_name 
UNION 
SELECT column_name(s) FROM table2_name;

--QUIZ COMMANDS using chicagoredlightspeedcamera database. 

--1. UNION query of intersection field from red_light_camera table 
-- and address field from speed_camera_locations table in ascending order. 

SELECT intersection FROM red_light_camera_locations 
UNION
SELECT address FROM speed_camera_locations
ORDER BY intersection ASC;

--2. first record shows 10318 S Indianapolis. 

