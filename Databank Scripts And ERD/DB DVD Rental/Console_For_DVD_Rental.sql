-- -----------------------------------------------------------------------------------------------
-- ------------------------- [Start voorbereiding voor het examen. P1] ---------------------------
-- -----------------------------------------------------------------------------------------------
SELECT * FROM actor;            -- This shows the full table [actor].
SELECT * FROM film_actor;       -- This shows the full table [film_actor].
SELECT * FROM film;             -- This shows the full table [film].
SELECT * FROM film_category;    -- This shows the full table [film_category].
SELECT * FROM category;         -- This shows the full table [category].
SELECT * FROM language;         -- This shows the full table [language].
-- -----------------------------------------------------------------------------------------------
-- This gives the full names of all actors.
SELECT concat(first_name, ' ', last_name) AS "Full Name" FROM actor;
--
-- This gives the full names and the age in years of all actors.
SELECT concat(first_name, ' ', last_name, ' is ', date_part('year', age(birthdate)), ' years old.') AS "Full Name + Age"  FROM actor;
--
-- Which actors play a role in the category Sci-Fi? Provide all the actor's information First Name, Last Name, Age is Years and the title of the movie.
SELECT concat(a.first_name, ' ', a.last_name, ' is ', date_part('year', age(a.birthdate)), ' years old and plays in the movie (', f.title, ')') AS "Full Name + Age + Titel"
FROM actor a
JOIN film_actor fa ON a.actor_id=fa.actor_id
JOIN film f ON fa.film_id=f.film_id
JOIN film_category fc ON f.film_id=fc.film_id
JOIN category c ON fc.category_id=c.category_id
WHERE upper(c.name)='SCI-FI';
--
-- Give all the titles of the movies. With the corresponding language.
SELECT concat(f.title, ' [', replace(l.name, ' ', ''), ']') AS "Titel + Language" FROM film f JOIN language l ON f.language_id=l.language_id;
-- -----------------------------------------------------------------------------------------------
-- ------------------------- [Start voorbereiding voor het examen. P2] ---------------------------
-- -----------------------------------------------------------------------------------------------
SELECT * FROM actor;            -- This shows the full table [actor].
SELECT * FROM film_actor;       -- This shows the full table [film_actor].
SELECT * FROM film;             -- This shows the full table [film].
SELECT * FROM film_category;    -- This shows the full table [film_category].
SELECT * FROM category;         -- This shows the full table [category].
SELECT * FROM language;         -- This shows the full table [language].
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
JOIN film f on f.film_id = fc.film_id
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
--  Action      |     363 |
--  Animation   |     361 |
--  Children    |     0   |
--  Classics    |     307 |
--  Comedy      |     286 |
--  Documentary |     385 |
--  Drama       |     0   |
--  Family      |     347 |
--  Foreign     |     397 |
-- ------------------------
-- (9 rows)
SELECT name AS "CATEGORY", count(a.actor_id) AS "NUMBER"
FROM category c
LEFT JOIN film_category fc ON c.category_id=fc.category_id
LEFT JOIN film_actor fa ON fa.film_id=fc.film_id
LEFT JOIN actor a on a.actor_id=fa.actor_id
WHERE lower(name) BETWEEN 'a%' AND 'g%'
GROUP BY name
ORDER BY name;
-- -----------------------------------------------------------------------------------------------
