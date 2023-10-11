--Question 1
SELECT count(*)
FROM actor
WHERE last_name = 'Wahlberg';
-- count = 2

--Question 2
SELECT count(*)
FROM payment
WHERE amount  > 3.99 AND amount < 5.99;
-- count = 2

--Question 3
SELECT film_id, count(*) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC;
-- There are several movies that the store carries 8 in its invetory

--Question 4
SELECT count(last_name)
FROM customer
WHERE last_name = 'William';
-- There are 0 customers with the last name William

--Question 5
SELECT staff_id, count(*)
FROM payment
GROUP BY staff_id;
-- Staff ID = 2 sold the most with 7,304

--Question 6
SELECT count(DISTINCT district)
FROM address;
-- There are 378 distinct districts

--Question 7
SELECT film_id,count(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;
-- Film 508 Lambs Cincinatti has the most actors in it with 15 actors

--Question 8
SELECT count(*)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
-- There are 13 customers whose last name end in 'es' from store_id = 1

--Question 9
SELECT amount
FROM payment
WHERE customer_id > 380 AND customer_id < 430
GROUP BY amount HAVING count(rental_id) > 250
-- There are three payment amounts with more than 250 rentals with customers ids between 380 and 430


--Question 10
SELECT count(DISTINCT rating)
FROM film;
-- There are 5 different rating categories

SELECT count(film_id), rating
FROM film
GROUP BY rating;
-- The PG-13 rating has the most movies total with 224 movies