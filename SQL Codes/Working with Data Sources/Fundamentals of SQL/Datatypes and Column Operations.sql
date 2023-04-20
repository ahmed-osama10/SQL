## 4. Operations with Text ##

SELECT 'Data' || 'quest' AS join_words;

## 5. Aliases ##

SELECT employee_id, first_name, last_name,phone AS work_phone
  FROM employee;

## 6. Operations Between Columns and Strings ##

SELECT  first_name || ' Chinook'  AS first_name_chinook   
  FROM employee;

## 7. Operations with Text Columns ##

SELECT first_name || ' ' || last_name   AS full_name
  FROM employee;

## 8. Challenge! — Operations with Numeric Columns ##

SELECT  unit_price * quantity AS total_line, unit_price * 0.85 AS unit_price_eur 
  FROM invoice_line
 LIMIT 5; 