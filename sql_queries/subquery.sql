SELECT f.*
FROM film AS f
WHERE f.film_id IN (SELECT i.film_id
                    FROM inventory AS i 
                    JOIN rental AS r
                        ON i.inventory_id = r.inventory_id)