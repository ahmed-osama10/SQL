## 1. Ordering Results ##

SELECT track_id,name,milliseconds
  FROM track
 ORDER BY milliseconds;
 

## 2. Limiting Results ##

SELECT track_id,name,milliseconds
  FROM track
 ORDER BY milliseconds
 LIMIT 3;

## 3. Ordering by Multiple Columns ##

SELECT employee_id, first_name, last_name, reports_to
  FROM employee
 ORDER BY reports_to,last_name;

## 4. Reversing the Order ##

SELECT customer_id, first_name, last_name, country
  FROM customer
 ORDER BY country DESC, first_name ,last_name;

## 6. Not Including Ordering Columns ##

SELECT invoice_id
  FROM invoice
 ORDER BY total DESC
 LIMIT 5;

## 7. Order by Expressions ##

SELECT customer_id,first_name,last_name,country
  FROM customer
  ORDER BY (CASE WHEN country = 'Canada' THEN 0
         WHEN country = 'USA' THEN 1
         ELSE 2 END), country;
  