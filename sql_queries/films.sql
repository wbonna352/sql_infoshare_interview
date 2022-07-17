SELECT
    c.name AS film_category,
    f.title AS film_title,
    l.name AS language,
    COUNT(r.rental_id) AS rentals
FROM rental AS r
JOIN inventory AS i
    ON r.inventory_id = i.inventory_id
JOIN film AS f
    ON i.film_id = f.film_id
JOIN film_category AS fc
    ON f.film_id = fc.film_id
JOIN category AS c
    ON fc.category_id = c.category_id
JOIN language AS l
    ON f.language_id = l.language_id
GROUP BY
    c.name,
    f.title,
    l.name