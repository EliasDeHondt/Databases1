---------------------------------------------------------------------------------------------------------------------------------
-- Toon per departement het totale salaris,                                                                                     -
-- voor alle departementen waarvan de gemiddelde leeftijd van het departement hoger is dan de gemiddelde leeftijd van de firma. -
-- OUTPUT:                                                                                                                      -
-- department_id | department_salary | average_age                                                                              -
-- --------------+-------------------+-------------                                                                             -
--             1 |          55000.00 |          45                                                                              -
--             7 |         136000.00 |        43.5                                                                              -
-- (2 rows)                                                                                                                     -
---------------------------------------------------------------------------------------------------------------------------------
SELECT department_id,
(SELECT sum(salary) FROM employees e2 WHERE e2.department_id=e1.department_id GROUP BY department_id) AS "department_salary",
avg(date_part('year',age(birth_date))) AS "average_age"
FROM employees e1
WHERE
(SELECT avg(date_part('year',age(birth_date))) FROM employees WHERE department_id=e1.department_id GROUP BY department_id) >
(SELECT avg(date_part('year',age(birth_date))) FROM employees)
GROUP BY department_id;
---------------------------------------------------------------------------------------------------------------------------------
-- Geef per department gegevens over de medewerkers die het meest betaald werd(en).                                             -
-- Toon in dit rapport ook het aantal kinderen van die medewerker.                                                              -
-- LET OP: Gebruik geen GROUP BY clause!!                                                                                       -
-- OUTPUT:                                                                                                                      -
-- department_name | first_name | last_name |  salary  | #Children                                                              -
-- ----------------+------------+-----------+----------+-----------                                                             -
-- Administration  | Suzan      | Jochems   | 43000.00 |         0                                                              -
-- Headquarters    | Bijoy      | Bordoloi  | 55000.00 |         0                                                              -
-- Production      | Willem     | Zuiderweg | 43000.00 |         2                                                              -
-- (3 rows)                                                                                                                     -
---------------------------------------------------------------------------------------------------------------------------------
SELECT department_name, first_name, last_name, salary AS "salary",
(SELECT count(relationship) FROM family_members f WHERE upper(relationship) IN ('SON', 'DAUGHTER') AND f.employee_id=e1.employee_id) AS "#Children"
FROM employees e1
JOIN departments d ON e1.employee_id=d.manager_id
WHERE salary=(SELECT max(salary) FROM employees e2 WHERE e2.employee_id=e1.employee_id);
---------------------------------------------------------------------------------------------------------------------------------
-- Verhoog de uren van de taken met 3 uur (let op voor taken met onbekende uren),                                               -
-- voor alle taken waarvan de medewerkers een parkeerplaats hebben met een nummer boven de 400,                                 -
-- en waarbij de projectlocaties niet de letter 'g' bevatten.                                                                   -
-- Gebruik een (NOT) EXISTS om te beslissen of je de update moet doorvoeren.                                                    -
-- OUTPUT:                                                                                                                      -
-- (4 rijen aangepast)                                                                                                          -
-- de niuewe uren zijn:                                                                                                         -
-- employee_id | project_id | hours                                                                                             -
-- ------------+------------+-------                                                                                            -
-- 999887777   |         30 |  33.8                                                                                             -
-- 999887777   |         10 |  13.2                                                                                             -
-- 999222222   |         10 |  37.5                                                                                             -
-- 999222222   |         30 |   8.1                                                                                             -
-- (4 rows)                                                                                                                     -
---------------------------------------------------------------------------------------------------------------------------------
-- SELECT
SELECT employee_id, project_id, hours
FROM tasks t
WHERE NOT EXISTS(SELECT 'x' FROM projects p WHERE lower(location) LIKE '%g%' AND t.project_id=p.project_id) AND
    EXISTS(SELECT 'x' FROM employees e WHERE parking_spot>400 AND t.employee_id=e.employee_id);
-- UPDATE
UPDATE tasks t SET hours=hours+3
WHERE NOT EXISTS(SELECT 'x' FROM projects p WHERE lower(location) LIKE '%g%' AND t.project_id=p.project_id) AND
          EXISTS(SELECT 'x' FROM employees e WHERE parking_spot>400 AND t.employee_id=e.employee_id);
-- VIEW
CREATE TEMP VIEW "v_tasks_projecten" AS
SELECT employee_id, project_id, hours
FROM tasks t
WHERE NOT EXISTS(SELECT 'x' FROM projects p WHERE lower(location) LIKE '%g%' AND t.project_id=p.project_id) AND
EXISTS(SELECT 'x' FROM employees e WHERE parking_spot>400 AND t.employee_id=e.employee_id);
-- SELECT VIEW
SELECT * FROM v_tasks_projecten;
-- DROP VIEW
DROP VIEW v_tasks_projecten;
---------------------------------------------------------------------------------------------------------------------------------
-- Creëer een view v_familieleden_projecten_maastricht die het volgende resultaat oplevert.                                     -
-- Geef employee_id, de naam en de leeftijd (in jaren) van de familieleden van de medewerkers                                   -
-- die aan een project werken met locatie Maastricht.                                                                           -
-- Los op met 2 subqueries en 1 join.                                                                                           -
-- Let op de gevraagde output. Je zal verschillende tekstfuncties moeten gebruiken om dit op te lossen.                         -
-- Plak exact 5 * achter de naam van het familielid.                                                                            -
-- OUTPUT:                                                                                                                      -
-- EMPLOYEE_ID | "naam familielid"               | "leeftijd familielid"                                                        -
-- ------------+---------------------------------+----------------------                                                        -
-- 999555555   |Alex** PARTNER of S. JOCHEMS     | 44 jaar oud vandaag                                                          -
-- 999444444   |Andrew SON of S. J               | 14 jaar oud vandaag                                                          -
-- 999444444   |Josefine DAUGHTER of S. JOCHEMS  | 16 jaar oud vandaag                                                          -
-- 999444444   |Suzan** PARTNER of S. JOCHEMS    | 37 jaar oud vandaag                                                          -
---------------------------------------------------------------------------------------------------------------------------------
-- SELECT
SELECT e.employee_id AS "EMPLOYEE_ID",
concat_ws(' ', concat(name, '*****'), relationship, 'of', concat(rpad(first_name, 1), '.'), upper(last_name)) AS "naam familielid",
concat(date_part('year', age(f.birth_date)), ' jaar oud vandaag') AS "leeftijd familielid"
FROM employees e
JOIN family_members f ON e.employee_id=f.employee_id
WHERE e.employee_id IN (SELECT employee_id FROM tasks t WHERE e.employee_id=t.employee_id AND
        project_id IN (SELECT project_id FROM projects p WHERE lower(p.location)='maastricht' AND t.project_id=p.project_id))
ORDER BY e.employee_id DESC;
-- VIEW
CREATE VIEW v_familieleden_projecten_maastricht AS
SELECT e.employee_id AS "EMPLOYEE_ID",
       concat_ws(' ', concat(name, '*****'), relationship, 'of', concat(rpad(first_name, 1), '.'), upper(last_name)) AS "naam familielid",
       concat(date_part('year', age(f.birth_date)), ' jaar oud vandaag') AS "leeftijd familielid"
FROM employees e
         JOIN family_members f ON e.employee_id=f.employee_id
WHERE e.employee_id IN (SELECT employee_id FROM tasks t WHERE e.employee_id=t.employee_id AND
        project_id IN (SELECT project_id FROM projects p WHERE lower(p.location)='maastricht' AND t.project_id=p.project_id))
ORDER BY e.employee_id DESC;
-- SELECT VIEW
SELECT * FROM v_familieleden_projecten_maastricht;
-- DROP VIEW
DROP VIEW v_familieleden_projecten_maastricht;