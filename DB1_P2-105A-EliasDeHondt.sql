-- Hernoem dit script naar DB1_P2-<class group>-<family name><first name>.sql
---------
-- KdG email :          elias.dehondt@student.kdg.be
-- OS in use :          Windows
-- Date  :              20/01/2023
-- Period :             Periode 2 examen
-- ---------------------------------------------------------------------------------------------------------------------
-- Voer volgend commando uit om te checken of je database goed geladen is.
SELECT last_name FROM actor WHERE first_name = 'Penelope';
-- last_name
-- -------
-- Guiness
-- Pinkett
-- Cronyn
-- Monroe
-- (4 rows)
-- ---------------------------------------------------------------------------------------------------------------------
-- VRAAG1
-- Maak een tabel aan, de tabel 'nationalities' met daarin volgende attributen:
--          - nat_id, een getal dat de primary key is. 
--            Dit attribuut nummert automatisch en kan je zelf niet invullen bij het aanmaken van een nieuw record.
--            Het moet starten met tellen op 100. (Maak geen gebruik van sequences)
--          - nationality, een tekst van maximaal 30 characters.
-- Voeg de nationaliteit "Italian" toe aan de tabel nationalities.
-- Oplossing hier:
CREATE TABLE nationalities (nat_id INT CONSTRAINT pk_nationalities PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START 100),  nationality VARCHAR(30));
INSERT INTO nationalities(nationality) VALUES('Italian');
-- nat_id   |   nationality
--  100     |    Italian
SELECT * FROM nationalities;
--
-- Voeg een extra veld nat_id toe aan de tabel actor.
--          - Zorg voor de koppeling tussen de tabel nationalities en actor.

-- Zorg dat alle acteurs die meespelen in de film "Chamber Italian" de Italiaanse nationaliteit krijgen. 
--          - Let op! Je mag de gegevens niet zelf opzoeken, dit moet aan de hand van je queries gebeuren.
-- Oplossing hier:
ALTER TABLE actor ADD COLUMN nat_id INT CONSTRAINT fk_nationalities REFERENCES nationalities(nat_id);

UPDATE actor au
SET nat_id=100
WHERE actor_id IN
(SELECT a.actor_id FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f on fa.film_id = f.film_id
WHERE lower(title)='chamber italian');

--geeft:
-- actor_id  |   first_name  |  last_name     |   nat_id
--   107     |   Gina        |  Degeneres     |     100
--   132     |   Adam        |  Hopper        |     100
--   133     |   Richard     |  Penn          |     100
--   148     |   Emily       |  Dee           |     100
--   29      |   Alec        |  Wayne         |     100
--   60      |   Henry       |  Berry         |     100
--   68      |   Rip         |  Winslet       |     100
SELECT actor_id, first_name,last_name,nat_id FROM actor ORDER BY nat_id;
-- ---------------------------------------------------------------------------------------------------------------------
-- VRAAG2
-- Deel 1:
-- Maak een view 'v_vraag2' van de filmen die meer dan 180 minuten duren.
-- Sorteer de films van langste naar kortste.
-- Via de view kan je geen rijen toevoegen of aanpassen van films die minder dan 180 minuten duren. 
--      - Maw DML wordt tegengehouden en past niets aan in de tabel.
-- Let op de hoofding van de view
--oplossing hier:
CREATE VIEW v_vraag2 AS
SELECT film_id, title, rental_rate AS "price", length, language_id AS "l_code", rental_duration AS "r_time"
FROM film
WHERE length > 180
ORDER BY length DESC
WITH CHECK OPTION;
--Output van:
SELECT * FROM v_vraag2;
--geeft
-- film_id      title                 price        length       l_code       r_time
-- 690          Pond Seattle           2.99          185          1          7
-- 141          Chicago North          4.99          185          1          6
-- 182          Control Anthem         4.99          185          1          7
-- 212          Darn Forrester         4.99          185          1          7
-- 991          Worst Banger           2.99          185          1          4
-- 349          Gangs Pride            2.99          185          1          4
-- 426          Home Pity              4.99          185          1          7
-- 872          Sweet Brotherhood      2.99          185          1          3
-- 817          Soldiers Evolution     4.99          185          1          7
-- 609          Muscle Bright          2.99          185          1          7
-- 597          Moonwalker Fool        4.99          184          1          5
-- 820          Sons Interview         2.99          184          1          3
-- 886          Theory Mermaid         0.99          184          1          5
-- 180          Conspiracy Spirit      2.99          184          1          4
-- 499          King Evolution         4.99          184          1          3
-- 198          Crystal Breaking       2.99          184          1          6
-- 813          Smoochy Control        0.99          184          1          7
-- 821          Sorority Queen         0.99          184          1          6
-- 996          Young Language         0.99          183          1          6
-- 128          Catch Amistad          0.99          183          1          7
-- 340          Frontier Cabin         4.99          183          1          6
-- 767          Scalawag Duck          4.99          183          1          6
-- 973          Wife Turn              4.99          183          1          3
-- 721          Reds Pocus             4.99          182          1          7
-- 765          Saturn Name            4.99          182          1          7
-- 50           Baked Cleopatra        2.99          182          1          3
-- 774          Searchers Wait         2.99          182          1          3
-- 591          Monsoon Cause          4.99          182          1          6
-- 719          Records Zorro          4.99          182          1          7
-- 510          Lawless Vision         4.99          181          1          6
-- 473          Jacket Frisco          2.99          181          1          5
-- 467          Intrigue Worst         0.99          181          1          6
-- 841          Star Operation         2.99          181          1          5
-- 435          Hotel Happiness        4.99          181          1          6
-- 751          Runaway Tenenbaums     0.99          181          1          6
-- 406          Haunting Pianist       0.99          181          1          5
-- 24           Analyze Hoosiers       2.99          181          1          6
-- 974          Wild Apollo            0.99          181          1          4
-- 535          Love Suicides          0.99          181          1          6
-- ---------------------------------------------------------------------------------------------------------------------
-- Deel 2:
-- Toon aan met een DML instructie dat je view correct werkt
--        - Creer één werkende query en één niet werkende query.
--        - maw je kan via de view enkel DML-instructies uitvoeren op tabel film voor rijen in de view.
--        - maw ja kan rijen in de tabel film, maar buiten de view niet aanpassen.
-- Oplossing hier:
-- "werkende"
UPDATE v_vraag2 SET price=2.00 WHERE length > 180;
--
SELECT * FROM v_vraag2;
-- "niet werkende"
UPDATE v_vraag2 SET price=0 WHERE length < 180;

SELECT * FROM v_vraag2;
-- ---------------------------------------------------------------------------------------------------------------------
-- Deel 3:
-- Creeer een nieuwe view 'v_vraag3b' op de gegevens van de view v_vraag2 met daarin:
--     - de films per prijs en hun huurtijd en de verhouding van deze.
--     - Let op je wenst enkel de films waarvan de huurtijd hoger is dan de gemiddelde huurtijd per prijs groep
--     - let op de sortering en titels
--     - Maak verplicht gebruik van een correlated subquery  --?
-- oplossing hier:
CREATE VIEW v_vraag3b AS
SELECT price, r_time, round(price/r_time*100,2) AS "relation percentage"
FROM v_vraag2
WHERE r_time > price/r_time
GROUP BY price, r_time
ORDER BY price DESC;
-- output van
SELECT * FROM v_vraag3b;
-- geeft
--     price     r_time     relation percentage
--      4.99        7              71.29
--      2.99        5              59.80
--      2.99        6              49.83
--      2.99        7              42.71
--      0.99        6              16.50
--      0.99        7              14.14
-- ---------------------------------------------------------------------------------------------------------------------
-- VRAAG 3
-- De geboortedatums van Jon en Ed Chase zijn foutief in de actor tabel. 
--     - Ze zijn een jaar later geboren dan de datum in de tabel.
--     - Bij elke aanpassing moet ook de last_update aangepast worden naar het moment dat je het aanpast.
--     - Zorg ervoor dat als je aan deze gegevens werkt er niemand anders aan kan werken.                               -- FOR UPDATE
--     - Als er op dit moment mensen aan deze gegevens werken willen we niet wachten tot zij klaar zijn                 -- FOR UPDATE NOWAIT;
-- Wijzig de birthdates en de last_updated in 1 commando (!= 1 query)
-- Voer de wijzigingen effectief door.
-- Voer eerst volgende lijn uit:
\SET AUTOCOMMIT = OFF;
\SET AUTOCOMMIT = ON;
--oplossing hier:
BEGIN;
UPDATE actor SET birthdate=birthdate+365 WHERE lower(last_name)='chase';
SAVEPOINT S_temp1; -- Niet gevraagt maar...
UPDATE actor SET last_update=current_timestamp WHERE lower(last_name)='chase';
COMMIT;
--output van:
SELECT * FROM actor ORDER BY last_update DESC;
-- geeft:
--   nat_id     first_name  last_name              last_update                         birthdate          nat_id
--      3          Ed          Chase          2023-01-20 09:45:30.292927          2002-12-26          <null>
--    176          Jon         Chase          2023-01-20 09:45:30.292927          2000-10-29          <null>
-- ---------------------------------------------------------------------------------------------------------------------