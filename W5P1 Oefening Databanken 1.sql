--
SELECT lpad(to_char(birth_date, 'YYYY/MM/DD'), 10, '*') FROM family_members ORDER BY birth_date;
--
SELECT lpad(to_char(birth_date, 'YYYY-MM-DD'), 10, '*') FROM family_members ORDER BY birth_date;
--
SELECT employee_id FROM employees EXCEPT SELECT employee_id FROM family_members;
--
SELECT employee_id FROM employees EXCEPT SELECT manager_id FROM employees;
--
SELECT first_name || ' ' || last_name FROM employees ORDER BY last_name;
--
SELECT concat(first_name, ' ', last_name) FROM employees ORDER BY last_name;
--
SELECT concat(rpad(first_name, length(first_name)+1) , last_name) FROM employees ORDER BY last_name;
--
SELECT lower(street) AS new_address FROM employees;
--
SELECT replace(lower(street), 'z', '') AS new_address FROM employees;
--
SELECT rpad(replace(lower(street), 'z', ''), 30, '*') AS new_address FROM employees;
--
SELECT first_name, last_name FROM employees WHERE position('o' in first_name) != 0 AND position('o' in last_name) != 0;
--
SELECT last_name FROM employees 
WHERE position('OO' in upper(last_name)) > 0 AND position('O' in upper(last_name)) = position('OO' in upper(last_name)) AND position('O' in upper(reverse(last_name))) = position('OO' in upper(reverse(last_name)));
--
SELECT substr(street, 1, position('e' in lower(street))) || replace(substr(street, position('e' in lower(street))+1), 'e', 'o')  FROM employees;
--
SELECT lower(concat(substring(e.first_name, 1, 3), '.', substring(e.first_name, 3, 6), '@', department_name, '.be')) FROM employees eJOIN departments d ON e.department_id = d.department_id ORDER BY first_name;
--
SELECT employee_id, name, relationship, CASE WHEN date_part('year', (age(birth_date))) < 18 THEN 'Child' ELSE 'Adult' END AS "age_categorie" FROM family_members WHERE relationship != upper('PARTNER');
--
SELECT concat(first_name, ' ', COALESCE(infix || ' ', NULL), last_name) AS "full_name" FROM employees;
--
SELECT e.employee_id, first_name, e.birth_date, coalesce(name, 'Single') FROM employees e LEFT JOIN family_members fm on e.employee_id = fm.employee_id WHERE lower(relationship)='partner' OR relationship IS NULL;
--
SELECT e.employee_id, first_name, e.birth_date,coalesce(name, 'Single') partner, f.birth_date "birth_date partner", case when e.birth_date > f.birth_date then f.name else e.first_name end first_name FROM employees e LEFT JOIN family_members f ON e.employee_id = f.employee_id WHERE UPPER(relationship) IN ('PARTNER') OR relationship IS NULL order by 2; 
--
SELECT 'De dag is ' || to_char(current_timestamp, 'SSSSS') AS "Klok";
--
SELECT park_code, typeno FROM cottagetypes EXCEPT SELECT park_code, typeno FROM cottages ORDER BY park_code DESC;
--
SELECT code FROM parks EXCEPT SELECT park_code FROM cottagetypes;
--
SELECT clientno AS "klantennummer" FROM clients EXCEPT SELECT clientno FROM reservations ORDER BY "klantennummer";
--
SELECT city, postcode FROM clients INTERSECT SELECT city, postcode FROM travelagencies;
--
SELECT city, postcode FROM clients UNION SELECT city, postcode FROM travelagencies;
--
SELECT park_code, typeno, houseno FROM cottages WHERE upper(park_code)='EP' EXCEPT SELECT park_code, typeno, houseno FROM reservations ORDER BY typeno;
--
SELECT attraction_code FROM parkattractiontypes EXCEPT SELECT attraction_code FROM parkattractions;
--
SELECT park_name, sport, country_code, code FROM parks WHERE  upper(country_code)='2' AND position('V' IN sport)=6;
--
SELECT park_name, sport, country_code, code FROM parks WHERE position('S' IN sport)=4;
--
SELECT park_name, sport, country_code, code FROM parks WHERE position('F' IN sport)=2 AND position('S' IN sport)=4 AND position('H' IN sport)=8;
--
SELECT * FROM cottages WHERE upper(corner)='Y' AND upper(playground)='Y' AND upper(beach)='N';
--
SELECT clientno, first_name, last_name, postcode, city FROM clients WHERE position('Y' IN first_name || last_name) > 0 AND postcode='9100' OR substr(UPPER(city), 1) BETWEEN 'A' AND 'E';
--
SELECT park_code, typeno, season_code, price_weekend, price_midweek, price_extra_day FROM cottype_prices WHERE season_code=1 AND price_midweek < 250 AND length(typeno)=3;
--
SELECT DISTINCT last_name, length(last_name) FROM clients WHERE substr(upper(last_name), 2) BETWEEN 'O' AND 'P' ORDER BY length(last_name);
--
SELECT first_name, street FROM clients WHERE substr(upper(first_name), length(first_name))='Y' AND substr(upper(street), 1) BETWEEN 'A' AND 'N';
--
SELECT code, length(replace(sport, ' ', '')) AS "sporten" FROM parks;
--
SELECT first_name, last_name, street FROM clients WHERE position('STRAAT' in upper(street)) = 0;
--
SELECT first_name, last_name, initcap(street) FROM clients WHERE position('STRAAT' in upper(street)) = 0;
--
SELECT concat(rpad(concat_ws(' ', first_name, last_name), 25, '.'), lpad(concat(street, houseno), 25, '.'))  AS "Naam en Straat" FROM clients ORDER BY first_name;
--
SELECT typeno, houseno, NULLIF(corner, 'N') AS "hoek", NULLIF(central, 'N') AS "centrum", NULLIF(quiet, 'N') AS "rustig" FROM cottages WHERE upper(park_code)='BF';
--
SELECT houseno, CONCAT_WS(' ', CASE WHEN upper(corner) = 'Y' THEN 'Ligt op een hoek.' END, CASE WHEN upper(central) = 'Y' THEN 'Centraal gelegen.' END, CASE WHEN upper(quiet) = 'Y' THEN 'Rustige omgeving.' END) AS "ligging" FROM cottages WHERE park_code = 'BF' ORDER BY houseno;
--
SELECT houseno, CASE WHEN upper(corner) = 'Y' THEN 'Ligt op een hoek.' WHEN upper(central) = 'Y' THEN 'Centraal gelegen.' WHEN upper(quiet) = 'Y' THEN 'Rustige omgeving.' END "ligging" FROM cottages WHERE park_code = 'BF'ORDER BY houseno;
--
SELECT park_code, typeno, CASE WHEN price_extra_day BETWEEN 51 AND 70 THEN 'Goedkoop' WHEN price_extra_day BETWEEN 46 AND 50 THEN 'Zeer Goedkoop' WHEN price_extra_day < 45 THEN 'Prijskraker' END AS "price_extra_day"
FROM cottype_prices WHERE season_code = 1 AND price_extra_day < 70;
--
SELECT typeno, round(price_extra_day/1.10,0) AS "dag", round(price_weekend/3,0) AS "weekend", round(price_midweek/2,0) AS "midweek", least(round(price_extra_day/1.10,0), round(price_weekend/3,0), round(price_midweek/2,0)) AS "Beste promotie" FROM cottype_prices WHERE upper(park_code)='WB' AND season_code=1;
--