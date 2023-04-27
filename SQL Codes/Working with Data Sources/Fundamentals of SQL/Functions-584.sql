## 1. Functions ##

SELECT ROUND(1.337) AS round_1337;

## 2. Multiple Inputs ##

SELECT ROUND(1.337,2) AS round_1337;

## 3. Columns as Arguments ##

SELECT invoice_id, customer_id, ROUND(total) AS rounded_total 
  FROM invoice
 LIMIT 10;

## 4. Results of Functions as Arguments ##

SELECT ROUND(unit_price * 0.85,2) AS unit_price_eur
,LENGTH(ROUND(unit_price * 0.85,2)) AS len_unit_price_eur
  FROM invoice_line
 LIMIT 5;

## 5. Integer Division ##

SELECT (milliseconds/1000)/60 AS integer_minutes ,(CAST(milliseconds AS REAL)/1000)/60 AS float_minutes
  FROM track
  LIMIT 10;

## 6. String Functions I — UPPER and LOWER ##

SELECT LOWER(last_name) AS lowercase_last_name
  FROM employee;

## 7. String Functions II — SUBSTRING ##

SELECT SUBSTRING(first_name, 1, 3) AS first_three_letters
  FROM employee ;

## 8. String Functions III — REPLACE ##

SELECT REPLACE(first_name || " " ||last_name,'s','$' )AS full_name
  FROM employee;