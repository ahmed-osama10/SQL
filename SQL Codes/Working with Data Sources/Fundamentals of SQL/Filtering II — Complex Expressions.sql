## 1. The Order of Execution ##

SELECT *
  FROM employee
  WHERE reports_to =2
 LIMIT 5;

## 2. Comparison Operators ##

SELECT employee_id, last_name, first_name, title, reports_to, hire_date
  FROM employee
 WHERE  SUBSTRING(hire_date, 1, 4) <> '2016';
 

## 3. Comparing Numbers: Greater Than ##

SELECT *
  FROM track 
  WHERE (CAST(milliseconds AS REAL) / 1000) / 60 > 60 ;

## 4. Comparing Numbers: Greater than or Equal to ##

SELECT *
  FROM invoice
 WHERE total >= 18.81 ;

## 5. Between Two Values ##

SELECT *
  FROM track
 WHERE (CAST(milliseconds AS REAL ) / 1000 /60) BETWEEN 17 AND 19;