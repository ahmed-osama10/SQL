## 1. LIKE ##

SELECT first_name, last_name, phone
  FROM customer
 WHERE first_name
  LIKE '%belle%'; 

## 2. Patterns ##

SELECT first_name,last_name,phone
  FROM customer 
  WHERE first_name
  LIKE '%a%a%a%'or 'A%A%A' ;

## 4. IN a List ##

SELECT customer_id, first_name, last_name, country ,state
  FROM customer
 WHERE state IN ('CT', 'DE', 'FL', 'GA', 'MA', 'MD', 'ME',
 'NC', 'NH', 'NJ', 'NY', 'RI', 'SC', 'VA');

## 5. Comparing with Missing Values ##

SELECT 0;

## 7. A Stronger Equality ##

SELECT employee_id, last_name, first_name, title, reports_to
  FROM employee
 WHERE reports_to IS NULL OR reports_to <> 1;