## 1. The Order of Execution ##

SELECT * 
  FROM invoice_line
  JOIN track
    ON invoice_line.track_id=track.track_id
    LIMIT 3;

## 3. Joining and WHERE ##

SELECT *
  FROM invoice_line
  JOIN track
    ON invoice_line.track_id = track.track_id
 WHERE invoice_id = 19;

## 4. Joining and GROUP BY ##

SELECT  genre.name AS genre  , COUNT (*) AS num_of_tracks
  FROM track
  JOIN genre
    ON track.genre_id=genre.genre_id
    GROUP BY genre;

## 6. Joining and JOIN ##

SELECT invoice.* , employee.first_name
  FROM invoice 
  JOIN customer
    ON invoice.customer_id = customer.customer_id
  JOIN employee
    ON customer.support_rep_id = employee.employee_id;

## 7. The Order of Execution (Revisited) ##

SELECT 1;