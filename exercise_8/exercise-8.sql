-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
SELECT film.title
FROM film
inner join inventory on film.film_id = inventory.film_id
inner join rental on rental.inventory_id = inventory.inventory_id
inner join customer on rental.customer_id = customer.customer_id
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id
inner join country on city.country_id = country.country_id
WHERE country.country = 'Peru'
