-- KdG email :          elias.dehondt@student.kdg.be
-- OS in use :          Windows
-- Date  :              08/11/2022
-- Period :             Periode 1 examen

-- -----------------------------------------------------------------------------------------------
-- Toon per film categorie, het aantal films met een category waarin de letters 'a' en 'o' zitten, waarbij de 'a' voor de 'o' komt (bv Action)
-- Toon enkel de categorien die meer dan 5 films bevatten.
-- OUTPUT
-- --------------------------
-- category   | movie count |
-- -----------+-------------+
-- Action     |          64 |
-- Animation  |          66 |
-- -------------------------
-- (2 rows)
SELECT name AS "category", count(title) AS "movie count"
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON f.film_id = fc.film_id
WHERE lower(name) LIKE '%a%o%'
GROUP BY name
HAVING count(title) > 5;
-- -----------------------------------------------------------------------------------------------
-- Geef een lijst van alle films met de volgende criteria:
-- ze hebben dezelfde huurprijs als films met een filmlengte van 166 minuten die "behind the scenes" special features hebben
-- Maak alleen een lijst van films waarin de acteur Johnny Cage voorkomt
-- de opgesomde films hebben een duur van minder dan 1 uur.
-- OUTPUT
-- ------------------
-- title            |
-- -----------------+
-- Simon North      |
-- Suspects Quills  |
-- ------------------
-- (2 rows)
SELECT f.title 
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE length < 166 AND lower(special_features)='{behind the scenes}' AND concat(first_name, ' ', last_name)='Johnny Cage';
-- -----------------------------------------------------------------------------------------------
-- Geef voor alle film categorien die beginnen met de letters A tot F, het aantal acteurs in die categorie
-- Gebruik geen tabellen die je niet nodig hebt!
-- OUTPUT
-- ------------------------
-- CATEGORY     | NUMBER  |
-- -------------+---------+
--  Action      |     361 |
--  Animation   |     0   |
--  Children    |     307 |
--  Classics    |     286 |
--  Comedy      |     385 |
--  Documentary |     0   |
--  Drama       |     347 |
--  Family      |     397 |
--  Foreign     |     0   |
-- ------------------------
-- (9 rows)
SELECT name AS "CATEGORY", count(a.actor_id) AS "NUMBER"
FROM category c
LEFT JOIN film_category fc ON c.category_id=fc.category_id
LEFT JOIN film_actor fa ON fa.film_id=fc.film_id
LEFT JOIN actor a ON a.actor_id=fa.actor_id
WHERE lower(name) BETWEEN 'a%' AND 'g%'
GROUP BY name
ORDER BY name;
-- -----------------------------------------------------------------------------------------------