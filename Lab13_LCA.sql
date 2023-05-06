USE sakila;

SELECT COUNT(distinct(last_name)) FROM sakila.actor;

SELECT COUNT(distinct(language_id)) FROM sakila.film;

SELECT COUNT(rating) FROM sakila.film
WHERE rating = "PG-13";

SELECT * FROM sakila.film
WHERE release_year = 2006
ORDER BY length DESC
LIMIT 10;

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date))
FROM sakila.rental;

SELECT *, monthname(rental_date) AS mes, dayname(rental_date) AS dsem
FROM sakila.rental
LIMIT 20;

SELECT *, monthname(rental_date) AS mes, dayname(rental_date) AS dsem,
CASE
WHEN (dayname(rental_date) = 'Saturday' OR dayname(rental_date) = 'Sunday') THEN 'weekend' 
ELSE 'workday'
END AS day_typee
FROM sakila.rental
LIMIT 20;

SELECT MONTH(MAX(rental_date)) FROM sakila.rental;
SELECT COUNT(rental_id) FROM sakila.rental
WHERE MONTH(rental_date) = 2;

