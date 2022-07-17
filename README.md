# SQL - Analiza danych

## Baza danych

nazwa: dvdrental

plik: dvdrental.tar

źródło: https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/

instrukcja instalacji: https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/

## Zagadnienia

Lista zagadnień SQL:

- SELECT
- FROM
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- DISTINCT
- LIMIT
- COUNT
- SUM
- AVG
- MIN
- MAX
- CASE
- LIKE
- IN
- NOT
- NULL
- operatory logiczne
- funkcje okna
- funkcje tekstowe
- CAST/CONVERT
- CURRENT_DATE
- ROUND
- JOINY
- działania na zbiorach
- moda
- percentyle
- odchylenie standardowe, wariancja
- korelacja
- podzapytania
- CTE
- tabele tymczasowe
- widoki
- aliasy


## Przykładowe punkty z programu zajęć

### Zapytanie do jednej tabeli

```sql
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
```

