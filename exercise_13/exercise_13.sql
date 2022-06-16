-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(payment.amount) as avg
FROM payment
INNER JOIN rental ON rental.rental_id = payment.rental_id
INNER JOIN customer ON customer.customer_id = rental.customer_id
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON city.city_id = address.city_id
INNER JOIN country ON country.country_id = city.country_id
GROUP BY country.country
ORDER BY avg desc
LIMIT 10