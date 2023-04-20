## 2. Filtering Results with WHERE ##

SELECT first_name,title, city
 FROM employee 
WHERE city='Lethbridge';

## 3. Expressions in WHERE ##

SELECT first_name,last_name
 FROM employee 
WHERE LENGTH(first_name) = LENGTH(last_name); 
-- We compare strings with strings;

## 5. NOT Equal ##

SELECT employee_id, last_name, first_name, title, reports_to, hire_date,birthdate
  FROM employee
 WHERE NOT SUBSTRING(birthdate,1,4) = '1973'; -- Note the placement of `NOT`.

## 7. Multiple Conditions I ##

SELECT *
  FROM employee
 WHERE SUBSTRING(first_name ,1,1)='M'
       AND SUBSTRING(hire_date ,1,4)= '2016';

## 8. Multiple Conditions II ##

SELECT *
  FROM employee
   WHERE(SUBSTRING(hire_date ,1,4)= '2017' )
      AND(LENGTH(first_name)= 5 OR LENGTH(first_name)= 6 );