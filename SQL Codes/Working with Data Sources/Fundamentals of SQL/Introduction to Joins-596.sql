## 3. The Syntax ##

SELECT *
  FROM invoice_line
  JOIN track 
  on invoice_line.track_id = track.track_id;

## 4. How Joins Work ##

SELECT *
  FROM track
  JOIN invoice_line
    ON invoice_line.track_id = track.track_id;

## 5. Selecting Columns ##

SELECT customer.customer_id, first_name,last_name, email,invoice_id, invoice_date, total
  FROM invoice
  JOIN customer
    ON customer.customer_id = invoice.customer_id;

## 6. Selecting All Columns from One Table ##

SELECT album.album_id, album.title, album.artist_id, artist.artist_id, artist.name
  FROM album
  JOIN artist
    ON album.artist_id = artist.artist_id;

## 7. Aliasing in Joins ##

SELECT t.track_id , t.name AS track_name , t.composer ,
       g.name AS genre
  FROM track AS t
  JOIN genre AS g
    ON t.genre_id = g.genre_id;
  