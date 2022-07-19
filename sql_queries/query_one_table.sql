SELECT
    EXTRACT(YEAR FROM rental_date) AS year,
    EXTRACT(MONTH FROM rental_date) AS month,
    COUNT(*) AS rentals
FROM rental
WHERE DATE_PART('day', return_date - rental_date) >= 3
GROUP BY 
    EXTRACT(YEAR FROM rental_date),
    EXTRACT(MONTH FROM rental_date)
HAVING COUNT(*) > 1000
ORDER BY year, month 