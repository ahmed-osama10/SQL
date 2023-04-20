## 2. If . . . Then in SQL ##

SELECT invoice_id,total,
   (CASE WHEN total >= 10 THEN 'High'
    ELSE 'Low' END) AS total_category
  FROM invoice;

## 3. Multiple If . . . Thens ##

SELECT invoice_id,total, 
 (CASE
  WHEN total > 10 THEN 'High' 
  WHEN total >5 AND total <= 10 THEN 'Medium' 
  WHEN total <= 5 THEN 'Low'
  ELSE 'Unknown' END) AS total_category 
  FROM invoice;

## 4. Or ELSE . . . ##

SELECT first_name, last_name, title, reports_to,
       (CASE
         WHEN reports_to = 1 THEN 'Adams'
         WHEN reports_to = 2 THEN 'Edwards'
         WHEN reports_to = 6 THEN 'Mitchell'
         WHEN reports_to IS NULL THEN 'self'
        END) AS manager
  FROM employee;

## 6. Order Matters ##

SELECT track_id,name,milliseconds,
  (CASE WHEN milliseconds > 400000 THEN 'Long'
        WHEN milliseconds >= 250000 THEN 'Mid length'
        WHEN milliseconds <= 250000 THEN 'Short'
        ELSE 'Unknown'
      END) AS length_category 
FROM track;

## 7. CASE Base Expression ##

SELECT first_name, last_name, title, reports_to,
       (CASE reports_to
         WHEN 1 THEN 'Adams'
         WHEN 2 THEN 'Edwards'
         WHEN 6 THEN 'Mitchell'
         ELSE 'Self'
        END) AS manager
  FROM employee;