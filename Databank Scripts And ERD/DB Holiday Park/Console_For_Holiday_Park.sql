--
-- **************************************************************P1*************************************************************
--
SELECT t.ta_name, r.start_date, r.end_date
FROM reservations r
         JOIN travelagencies t ON r.tano = t.tano
WHERE date_part('year', r.start_date) = '2020'
  AND date_part('year', r.end_date) = '2020'
ORDER BY t.ta_name;
--
SELECT DISTINCT p.park_name, p.country_code, c.no_bedrooms, c.surface
FROM parks p
         JOIN cottagetypes c ON p.code = c.park_code
WHERE p.country_code != '6'
  AND p.country_code != '1'
  AND (no_bedrooms >= '3' OR c.surface > '80')
ORDER BY park_name;
--
SELECT DISTINCT t.tano, t.ta_name, c.first_name, c.last_name, r.status
FROM travelagencies t
         JOIN reservations r ON t.tano = r.tano
         JOIN clients c ON r.clientno = c.clientno
WHERE (r.tano = '1' OR r.tano = '2') AND r.status = 'PAID'
   OR r.tano = '3'
ORDER BY t.tano DESC;
--
SELECT DISTINCT c.first_name || ' ' || c.last_name AS name, t.ta_name
FROM travelagencies t
         JOIN reservations r ON t.tano = r.tano
         JOIN clients c ON r.clientno = c.clientno
WHERE t.ta_name = UPPER('NECKERMANN');
--
SELECT DISTINCT clientno
FROM reservations;
--
SELECT clientno AS " ", 'travelled on' AS " ", start_date AS " ", 'to park' AS " ", park_code AS " "
FROM reservations
WHERE start_date >= '01-01-2021'
ORDER BY start_date DESC FETCH NEXT 5 ROWS ONLY;
--
SELECT CURRENT_DATE AS "today is's";
--
SELECT resno, tano, clientno, end_date + 2 AS "extension by 2 days"
FROM reservations
WHERE park_code = 'MD';
--
SELECT tano, clientno, start_date, end_date
FROM reservations
WHERE tano = 3
ORDER BY start_date;
--
SELECT clientno, status
FROM reservations
WHERE UPPER(status) = 'OPEN'
order by clientno desc
LIMIT (SELECT (count(*) / 4) AS selnum FROM reservations WHERE UPPER(status) = 'OPEN');
--
SELECT clientno, status AS "paid"
FROM reservations
WHERE status = 'PAID'
  AND start_date >= '01-06-2020';
--
SELECT *
FROM cottages
WHERE houseno < 12
  AND (UPPER(corner) = 'Y' OR UPPER(playground) = 'Y')
ORDER BY park_code;
--
SELECT park_code, typeno, price_weekend AS "weekend", price_midweek AS "midweek"
FROM cottype_prices
WHERE price_midweek > (price_weekend * 1.2);
--
SELECT park_name AS "parkcode", country_code
FROM parks
WHERE country_code = '1'
   OR country_code = '2';
--
SELECT resno, park_code, typeno, houseno, status
FROM reservations
WHERE (typeno IS NULL OR houseno is null)
  AND (UPPER(status) IN ('BETAALD', 'OPEN'));
--
SELECT clientno, last_name, first_name, street, houseno, postcode, city
FROM clients
WHERE postcode IN ('2060', '2100', '2640');
--
SELECT clientno, last_name, first_name, street, houseno, postcode, city
FROM clients
WHERE (houseno = '106' AND postcode = '2640')
   OR (city BETWEEN 'A' AND 'E');
--
SELECT *
FROM cottype_prices
WHERE price_midweek < 250
  AND (price_extra_day IS NULL or price_extra_day < 30);
--
SELECT *
FROM payments
WHERE UPPER(payment_method) != 'O'
  AND payment_date < '1-feb-2020';
--
SELECT DISTINCT last_name
FROM clients
WHERE postcode = '2640'
ORDER BY clientno;
--
SELECT postcode
FROM clients;
--
SELECT *
FROM cottages
WHERE UPPER(park_code) = 'BF'
  AND UPPER(pet) = 'N'
  AND (UPPER(beach) = 'Y' OR beach IS NULL);
--
SELECT UPPER(country_name) country
FROM countries
WHERE UPPER(country_name) LIKE 'N%'
ORDER BY 1;
--
SELECT last_name, first_name, street
FROM clients
WHERE UPPER(street) LIKE '%LAAN%';
--
SELECT park_code, count(houseno) AS "# houses"
FROM cottages
WHERE upper(pet) = 'N'
GROUP BY park_code
ORDER BY "# houses";
--
SELECT park_code,
       typeno,
       CASE
           WHEN price_extra_day BETWEEN 51 AND 70 THEN 'Goedkoop'
           WHEN price_extra_day BETWEEN 46 AND 50 THEN 'Zeer Goedkoop'
           WHEN price_extra_day < 45 THEN 'Prijskraker'
           END AS "price_extra_day"
FROM cottype_prices
WHERE season_code = 1
  AND price_extra_day < 70;
--
SELECT p.park_name, p.sport, p.country_code, p.code
FROM parks wb
         JOIN parks p ON wb.country_code = p.country_code
WHERE upper(wb.park_name) = 'WEERTERBERGEN'
  AND upper(p.code) != 'WB';
--
SELECT p.park_name, p.sport
FROM parks FX
         JOIN parks p ON FX.sport = p.sport
WHERE upper(FX.park_name) = 'FENIX'
  AND upper(p.park_name) != 'FENIX';
--
SELECT tano,
       houseno,
       clientno,
       to_char(start_date, 'FMday DD mon YYYY') AS "start_data",
       end_date - start_date                    AS "Aantal dagen"
FROM reservations
WHERE (booking_date > '2019-01-01')
  AND (tano = 3 OR houseno IS NULL)
ORDER BY date_part('MON', start_date), clientno;
--
SELECT to_char(current_date, 'DD///MM//YYYY');
--
SELECT to_char(current_date, 'DDD');
SELECT to_char(current_date, 'day');
--
SELECT park_code, typeno, '€ ' || round(price_midweek / 1.21, 2) AS "promotion"
FROM cottype_prices
WHERE season_code = 9
  AND park_code = 'WB';
--
SELECT park_code, typeno, '€ ' || round(price_midweek / 1.21, 1) AS "promotion"
FROM cottype_prices
WHERE season_code = 9
  AND park_code = 'WB';
--
SELECT count(DISTINCT clientno) AS "clients"
FROM reservations
WHERE tano = 2;
--
SELECT round(avg(price_weekend), 2) AS "avg WE-price summer 2022"
FROM cottype_prices
WHERE season_code = 1;
--
SELECT park_code AS "PARK CODE", MAX(price_weekend) AS "highest WE price", MIN(price_weekend) AS "lowest WE price"
FROM cottype_prices
WHERE season_code = 10
GROUP BY park_code
ORDER BY park_code;
--
SELECT count(DISTINCT park_code) AS "cottages close to beach"
FROM cottages
WHERE UPPER(beach) = 'Y';
--
SELECT tano, count(clientno) AS "reservations"
FROM reservations
GROUP BY tano
ORDER BY tano;
--
SELECT tano
FROM reservations
GROUP BY tano
HAVING count(clientno) < 10
ORDER BY tano;
--
SELECT avg(end_date - start_date) AS "avg duration"
FROM reservations;
--
SELECT round(avg(end_date - start_date), 0) AS "avg duration"
FROM reservations;
--
SELECT park_code, typeno, count(DISTINCT houseno) AS "cottages"
FROM cottages
WHERE upper(park_code) IN ('EP', 'MD', 'SF')
GROUP BY park_code, typeno
ORDER BY park_code;
--
SELECT tano, count(status) AS "UNpaid"
FROM reservations
WHERE upper(status) = 'OPEN'
GROUP BY tano;
--
SELECT park_code
FROM cottages
WHERE upper(quiet) = 'Y'
  AND upper(playground) = 'Y'
  AND upper(pet) = 'Y'
GROUP BY park_code
HAVING count(DISTINCT houseno) > 10;
--
SELECT count(tano) AS "summer reservations at Neckermann"
FROM reservations
WHERE tano = 3
  AND to_char(start_date, 'MM') IN ('06', '07', '08');
--
SELECT park_code, count(park_code) AS "attraction type"
FROM parkattractions
GROUP BY park_code
ORDER BY park_code;
--
SELECT typeno, count(DISTINCT park_code) AS "types"
FROM cottages
GROUP BY typeno
HAVING count(DISTINCT park_code) = 2
ORDER BY typeno;
--
SELECT clientno, count(clientno) AS "clients"
FROM reservations
GROUP BY clientno
HAVING count(clientno) IN (4, 5);
--
SELECT park_code, round(avg(no_bedrooms), 0) AS "avg bedrooms"
FROM cottagetypes
WHERE upper(park_code) = 'MD'
GROUP BY park_code;
--
SELECT p.park_name, p.sport, p.country_code, p.code
FROM parks wb
         JOIN parks p ON wb.country_code = p.country_code
WHERE upper(wb.park_name) = 'WEERTERBERGEN'
  AND upper(p.code) != 'WB';
--
SELECT p.park_name, p.sport
FROM parks FX
         JOIN parks p ON FX.sport = p.sport
WHERE upper(FX.park_name) = 'FENIX'
  AND upper(p.park_name) != 'FENIX';
--
SELECT park_code, typeno
FROM cottagetypes
EXCEPT
SELECT park_code, typeno
FROM cottages
ORDER BY park_code DESC;
--
SELECT code
FROM parks
EXCEPT
SELECT park_code
FROM cottagetypes;
--
SELECT clientno AS "klantennummer"
FROM clients
EXCEPT
SELECT clientno
FROM reservations
ORDER BY "klantennummer";
--
SELECT city, postcode
FROM clients
INTERSECT
SELECT city, postcode
FROM travelagencies;
--
SELECT city, postcode
FROM clients
UNION
SELECT city, postcode
FROM travelagencies;
--
SELECT park_code, typeno, houseno
FROM cottages
WHERE upper(park_code) = 'EP'
EXCEPT
SELECT park_code, typeno, houseno
FROM reservations
ORDER BY typeno;
--
SELECT attraction_code
FROM parkattractiontypes
EXCEPT
SELECT attraction_code
FROM parkattractions;
--
SELECT park_name, sport, country_code, code
FROM parks
WHERE position('F' IN sport) = 2
  AND position('S' IN sport) = 4
  AND position('H' IN sport) = 8;
--
SELECT *
FROM cottages
WHERE upper(corner) = 'Y'
  AND upper(playground) = 'Y'
  AND upper(beach) = 'N';
--
SELECT clientno, first_name, last_name, postcode, city
FROM clients
WHERE position('Y' IN first_name || last_name) > 0 AND postcode = '9100'
   OR substr(upper(city), 1) BETWEEN 'A' AND 'E';
--
SELECT park_code, typeno, season_code, price_weekend, price_midweek, price_extra_day
FROM cottype_prices
WHERE season_code = 1
  AND price_midweek < 250
  AND length(typeno) = 3;
--
SELECT DISTINCT last_name, length(last_name)
FROM clients
WHERE substr(upper(last_name), 2) BETWEEN 'O' AND 'P'
ORDER BY length(last_name);
--
SELECT first_name, street
FROM clients
WHERE substr(upper(first_name), length(first_name)) = 'Y'
  AND substr(upper(street), 1) BETWEEN 'A' AND 'N';
--
SELECT code, length(replace(sport, ' ', '')) AS "sporten"
FROM parks;
--
SELECT first_name, last_name, street
FROM clients
WHERE position('STRAAT' in upper(street)) = 0;
--
SELECT first_name, last_name, initcap(street)
FROM clients
WHERE position('STRAAT' in upper(street)) = 0;
--
SELECT concat(rpad(concat_ws(' ', first_name, last_name), 25, '.'),
              lpad(concat(street, houseno), 25, '.')) AS "Naam en Straat"
FROM clients
ORDER BY first_name;
--
SELECT typeno,
       houseno,
       NULLIF(corner, 'N')  AS "hoek",
       NULLIF(central, 'N') AS "centrum",
       NULLIF(quiet, 'N')   AS "rustig"
FROM cottages
WHERE upper(park_code) = 'BF';
--
SELECT houseno,
       CONCAT_WS(' ', CASE WHEN upper(corner) = 'Y' THEN 'Ligt op een hoek.' END,
                 CASE WHEN upper(central) = 'Y' THEN 'Centraal gelegen.' END,
                 CASE WHEN upper(quiet) = 'Y' THEN 'Rustige omgeving.' END) AS "ligging"
FROM cottages
WHERE park_code = 'BF'
ORDER BY houseno;
--
SELECT houseno,
       CASE
           WHEN upper(corner) = 'Y' THEN 'Ligt op een hoek.'
           WHEN upper(central) = 'Y' THEN 'Centraal gelegen.'
           WHEN upper(quiet) = 'Y' THEN 'Rustige omgeving.' END "ligging"
FROM cottages
WHERE park_code = 'BF'
ORDER BY houseno;
--
SELECT typeno,
       round(price_extra_day / 1.10, 0)   AS "dag",
       round(price_weekend / 3, 0)        AS "weekend",
       round(price_midweek / 2, 0)        AS "midweek",
       least(round(price_extra_day / 1.10, 0), round(price_weekend / 3, 0),
             round(price_midweek / 2, 0)) AS "Beste promotie"
FROM cottype_prices
WHERE upper(park_code) = 'WB'
  AND season_code = 1;
--
-- **************************************************************P2*************************************************************
--
SELECT typeno, price_weekend
FROM cottype_prices
WHERE upper(park_code) = 'SF'
  AND season_code = 1
  AND price_weekend > (SELECT avg(price_weekend) FROM cottype_prices);
--
SELECT typeno, max(price_weekend)
FROM cottype_prices
WHERE park_code = (SELECT code FROM parks WHERE lower(park_name) = 'weerterbergen')
  AND price_weekend = (SELECT max(price_weekend) FROM cottype_prices)
GROUP BY typeno;
--
select park_name, cp.typeno, description, price_midweek
from cottype_prices cp
         join parks p on park_code = code
         join seasons s on cp.season_code = s.code
where price_midweek = (select max(price_midweek)
                       from cottype_prices
                       where season_code in (select code
                                             from seasons
                                             where upper(description) like 'OFF%')
                         and typeno in (select typeno
                                        from cottagetypes
                                        where no_bedrooms = 3))
  and season_code in (select code
                      from seasons
                      where upper(description) like 'OFF%');
--
-- /
--
-- /
--
-- /
--
-- /
--
SELECT clientno, last_name
FROM clients;
--
SELECT park_name
FROM parks
WHERE country_code IN (SELECT country_code FROM countries WHERE lower(country_name) = 'netherlands')
  AND code IN (SELECT park_code FROM cottagetypes GROUP BY park_code HAVING count(park_code) >= 7)
ORDER BY park_name DESC;
--
CREATE VIEW v_reservations AS
SELECT resno,
       tano,
       clientno,
       park_code,
       typeno,
       houseno,
       start_date,
       end_date
FROM reservations;
--
UPDATE v_reservations
SET status = 'PAID'
WHERE resno = 4
  AND tano = 2;
-- De query dat hierboven is opgegeven werkt niet omdat in de view geen “status” tabel is
--
DELETE
FROM v_reservations
WHERE UPPER(park_code) = 'VB';
-- Je kan FK's niet zomaar verwijderen.
--
CREATE OR REPLACE VIEW v_overview_reservations AS
SELECT r.*, c.last_name
FROM reservations r
         JOIN clients c ON r.clientno = c.clientno AND start_date > '15-01-2020';
--
SELECT *
FROM v_overview_reservations;
--
ALTER TABLE reservations
    DROP booking_date;
--
ALTER TABLE reservations
    DROP booking_date CASCADE;
--
CREATE OR REPLACE VIEW v_overview_clients AS
SELECT *
FROM clients;
--
ALTER TABLE clients
    ADD birth_date DATE;
--
SELECT *
FROM v_overview_clients;
--
-- Het nieuwe attribuut "birth_date" is niet zichtbaar In de view "v_overview_clients", maar wel In de brand tabel "clients".
--
CREATE OR REPLACE VIEW v_overview_clients AS
SELECT *
FROM clients;
-- <-Hoe kan je dit oplossen
--
CREATE VIEW v_vakantiehuizen_ep AS
SELECT ct.park_code,
       ct.typeno,
       c.houseno,
       ct.no_bedrooms,
       ct.no_persons,
       ct.wifi,
       c.pet,
       c.quiet,
       c.beach
FROM cottagetypes ct
         LEFT JOIN cottages c on ct.park_code = c.park_code and ct.typeno = c.typeno
WHERE ct.park_code = 'EP'
  AND ct.no_bedrooms > 2;
--
SELECT *
FROM v_vakantiehuizen_ep;
--
INSERT INTO V_VAKANTIEHUIZEN_EP
VALUES ('EP', 81, 53, 3, 8, 'J', 89, 'J', 'J');
--
-- Je kan wel een INSERT doen op een bron tabel of een view waar geen join opstaat.
--
-- To enable inserting into the view, provide an INSTEAD OF INSERT trigger or an unconditional ON INSERT DO INSTEAD rule.
--
CREATE VIEW V_OVERZICHT_RESERVATIES AS
SELECT tano, count(clientno) AS "Aantal Reservations"
FROM reservations
GROUP BY tano
ORDER BY tano;
--
UPDATE V_OVERZICHT_RESERVATIES
SET "Aantal Reservations" = 7
WHERE tano = 1;
--
-- In de view staat er een Group by.Deze worden niet automatisch geupdate, dus dit geeft een error. [55000] ERROR.
--
CREATE OR REPLACE VIEW v_reservaties AS
SELECT resno, clientno, park_code, typeno, houseno, start_date, end_date
FROM reservations;
--
SELECT *
FROM v_reservaties;
--
-- ERROR: null value in column "tano" of relation "reservations" violates not-null constraint.
-- Dus met andere woorden, de view heeft geen toegang tot alle variabelen en kan dus niet alle variabelen invullen. En dit is een violation of the nul constrain.
--
--
CREATE INDEX ind_res_cli_pac ON reservations(clientno,park_code);
--
CREATE INDEX ind_client_last_name ON clients(last_name);
--
SET enable_seqscan TO OFF;
--
EXPLAIN ANALYZE SELECT * FROM clients WHERE last_name='CORNELIS';
--
EXPLAIN ANALYZE SELECT * FROM clients WHERE UPPER(last_name)='CORNELIS';
--
-- Je kan een function based index creëren om bovenstaand probleem op te lossen met het volgende statement:
CREATE INDEX ind_client_func_last_name ON clients(UPPER(last_name));
--
EXPLAIN ANALYZE SELECT * FROM clients WHERE UPPER(last_name)='CORNELIS';
--
DROP INDEX ind_client_last_name;
--
DROP INDEX ind_client_func_last_name;
--
DROP INDEX ind_client_last_name CASCADE;
--
DROP INDEX ind_client_func_last_name CASCADE;
--
SELECT typeno, houseno FROM cottages c WHERE park_code=(SELECT code FROM parks WHERE lower(park_name)='sherwood forest') AND NOT EXISTS (SELECT 'x' FROM reservations WHERE houseno=c.houseno);
--
SELECT park_name, resno, tano, clientno, park_code, typeno, houseno, booking_date, status FROM reservations r
                                                                                                   JOIN parks p ON p.code=r.park_code
WHERE booking_date = (SELECT max(booking_date) FROM reservations WHERE r.park_code=park_code)
ORDER BY park_code;
--
DELETE FROM travelagencies
WHERE tano=(
    SELECT tano FROM (
                         SELECT count(tano) AS A1, tano FROM reservations GROUP BY tano) AS tempTabel WHERE A1=(
        SELECT min(A1) FROM (
                                SELECT count(tano) AS A1, tano FROM reservations GROUP BY tano) AS tempTabel));
--
UPDATE clients
SET status='INACTIVE'
WHERE clientno IN (SELECT clientno FROM clients c WHERE NOT EXISTS(SELECT 'x' FROM reservations WHERE clientno=c.clientno));
--
---------------------------------------------------------------------------------------------------
-- PostgreSQL allows copying an existing table including the table structure and data by using    -
-- various forms of PostgreSQL copy table statement. To copy a table completely, including both   -
-- table structure and data sue the below statement.                                              -
---------------------------------------------------------------------------------------------------
-- Syntax:                                                                                        -
-- CREATE TABLE new_table AS                                                                      -
--     TABLE existing_table;                                                                      -
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- To copy a table structure without data, users need to add the WITH NO DATA clause to the       -
-- CREATE TABLE statement as follows:                                                             -
---------------------------------------------------------------------------------------------------
-- Syntax:                                                                                        -
-- CREATE TABLE new_table AS                                                                      -
--     TABLE existing_table                                                                       -
--     WITH NO DATA;                                                                              -
---------------------------------------------------------------------------------------------------
CREATE TABLE nonpopular_cottages AS TABLE cottages WITH NO DATA;
--
INSERT INTO nonpopular_cottages
SELECT * FROM cottages c
WHERE NOT EXISTS(SELECT 'x' FROM reservations WHERE c.houseno=houseno AND c.typeno=typeno AND c.park_code=park_code);
--
DROP TABLE nonpopular_cottages;
--
--
--
CREATE ROLE tabeheerder;
GRANT ALL ON TABLE travelagencies TO tabeheerder;
--
CREATE USER Juliette SUPERUSER PASSWORD '123';
--
BEGIN;
UPDATE travelagencies SET ta_name='THOMASCOOK' WHERE ta_name='SUNSNACK';
COMMIT;
--
SELECT ta_name FROM travelagencies;
-- Er is nog geen COMMIT geboert dus de SELECT is het zelfden gebleven.
--
SELECT ta_name FROM travelagencies;
-- Er is nog geen COMMIT maar Postgres user heeft de
-- UPDATE gedaan dus kan ook al de verandering zien zonder een COMMIT te doen.
--
-- Dit kan niet en de terminal blijft vastlopen bij user 2;
--
COMMIT;
-- Nu kan Juliette user wel de SELECT goed zien;
--
ROLLBACK;
-- User twee kan ineens verder werken.
--
BEGIN;
UPDATE travelagencies SET ta_name='CLUB MED' WHERE tano=5;
COMMIT;
--
UPDATE travelagencies SET ta_name='CLUBMED SA' WHERE tano=5;
-- Dit kan gewoon.
--
UPDATE travelagencies SET street='AVENUE LOUISE', houseno=59, postcode=1050, city='Brussel'WHERE tano=5;
-- Dit kan niet er is geen COMMIT gedaan.
--
UPDATE travelagencies SET street='TRAMSTRAAT', houseno='67C', postcode=9052, city='ZWIJNAARDE'WHERE ta_name='123NNB';
--
CREATE ROLE cbeheeder;
GRANT ALL ON clients TO cbeheeder;
GRANT cbeheeder TO juliette;
--
BEGIN;
UPDATE clients SET city='BRUSSEL' WHERE postcode BETWEEN '1000' AND '2000';
COMMIT;
--
BEGIN;
INSERT INTO payments VALUES (20161709,2,1,to_date('17-02-2022', 'DD-MM-YYYY'),200,'bankcontact');
SAVEPOINT save_1;
DELETE FROM payments;
ROLLBACK TO save_1;
SELECT * FROM payments;
TRUNCATE TABLE payments;
SELECT * FROM payments;
ROLLBACK TO save_1;
COMMIT;
--