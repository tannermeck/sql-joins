-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT film.title 
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
INNER JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.first_name = 'Roberta'