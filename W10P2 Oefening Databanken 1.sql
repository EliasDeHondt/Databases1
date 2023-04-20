--
-- Voordelen: is sneller met grootte tabellen.
-- Nadelen: is niet sneller met en kleinen tabellen.
--
-- Als dat sneller is op dat moment.
--
SELECT *
FROM pg_index;
--
SELECT *
FROM pg_indexes
WHERE tablename = 'employees';
--
EXPLAIN ANALYZE
SELECT *
FROM employees
WHERE department_id = 3;
--
-- Met Seq Scan.
--
-- Dat gaat sneller.
--
CREATE INDEX ind_dep ON employees (department_id);
--
SELECT *
FROM employees
WHERE department_id = 3;
--
EXPLAIN ANALYZE
SELECT *
FROM employees
WHERE department_id = 3;
--
-- Met Seq Scan.
--
SET enable_seqscan TO off;
--
EXPLAIN ANALYZE
SELECT *
FROM tasks
WHERE project_id = 2;
--
SELECT *
FROM pg_indexes
WHERE tablename = 'tasks';
--
-- Bitmap Read Scan
-- Bitmap Read Scan = Skip scan
--
EXPLAIN
SELECT DISTINCT e.first_name, e.last_name
FROM employees e
         JOIN tasks t ON (e.employee_id = t.employee_id)
         JOIN projects p ON (t.project_id = p.project_id)
WHERE lower(p.location) LIKE '%e%'
  AND parking_spot IS NOT NULL;
--
INSERT INTO departments
VALUES (2, 'Sales', '999555555', CURRENT_DATE);
--
SELECT project_id, employee_id, hours
FROM tasks
ORDER BY 1;
--
SELECT project_id, employee_id, hours
FROM tasks t
WHERE hours < (SELECT AVG(hours) FROM tasks WHERE t.project_id = project_id);
--
SELECT manager_id, employee_id, salary
FROM employees e
WHERE salary = (SELECT MAX(salary) FROM employees WHERE manager_id = e.manager_id)
ORDER BY manager_id;
--
SELECT employee_id, first_name, last_name
FROM employees e
WHERE EXISTS(SELECT 'x' FROM employees WHERE e.employee_id = manager_id)
ORDER BY employee_id;
--
SELECT department_id, department_name FROM departments d WHERE NOT EXISTS(SELECT department_id FROM projects WHERE d.department_id=department_id);
--
UPDATE employees SET parking_spot=NULL WHERE employee_id='999666666';
--
SELECT department_id from employees e WHERE NOT EXISTS(SELECT 'x' FROM employees WHERE parking_spot = e.parking_spot);
--
INSERT INTO employees(employee_id, last_name, first_name) VALUES('999999999','Janssens','Jan');
--
INSERT INTO departments(department_id,department_name, manager_id) VALUES(8,'Human Resources', (SELECT department_id FROM employees WHERE lower(last_name)='janssens'));
--
UPDATE employees SET department_id=8 WHERE employee_id=(SELECT employee_id WHERE lower(last_name)='janssens');
--
INSERT INTO locations VALUES(8,'Antwerp');
--
INSERT INTO projects VALUES(40,'Opleidingen','Antwerpen',(SELECT department_id FROM departments WHERE lower(department_name)='human resources'));
--
UPDATE employees SET
                     department_id=(SELECT department_id FROM departments WHERE lower(department_name)='human resources'),
                     manager_id=(SELECT employee_id FROM employees WHERE lower(last_name)='janssens') WHERE
                     employee_id =(SELECT employee_id FROM employees WHERE lower(last_name)='joosten');
--
UPDATE employees SET department_id=(SELECT department_id FROM departments WHERE lower(department_name)='human resources'),
                     manager_id=(SELECT employee_id FROM employees WHERE lower(last_name)='joosten') WHERE
                     employee_id =(SELECT employee_id FROM employees WHERE lower(last_name)='bock');
--
INSERT INTO tasks VALUES((SELECT employee_id FROM employees WHERE lower(last_name)='joosten'),(SELECT project_id FROM projects WHERE lower(project_name)='opleidingen'),20);
--
INSERT INTO tasks VALUES((SELECT employee_id FROM employees WHERE lower(last_name)='bock'),(SELECT project_id FROM projects WHERE lower(project_name)='opleidingen'),10);
--
COMMIT;
--
UPDATE employees e SET salary=(salary*1.05) WHERE department_id=(SELECT department_id FROM tasks WHERE hours>10 AND project_id=20 AND e.employee_id=employee_id);
--
UPDATE employees e SET salary=(salary*(600*(SELECT count(relationship) FROM family_members WHERE relationship IN ('SON','DAUGHTER') AND e.employee_id=employee_id)));
--
INSERT INTO projects (project_id, project_name, location, department_id)
VALUES ((SELECT max(project_id)+1 from projects),
        'Saneringen','Maastricht',
        (SELECT department_id FROM projects
         GROUP BY department_id
         HAVING count() = (SELECT max(cnt.aantal)
                           FROM (SELECT count() aantal
                                 FROM projects GROUP BY department_id) cnt)
        ));
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
-- /
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
-- Toon per departement het totale salaris,
-- voor alle departementen waarvan de gemiddelde leeftijd van het departement hoger is dan de gemiddelde leeftijd van de firma.
-- OUTPUT:
--  department_id | department_salary | average_age
-- ---------------+-------------------+-------------
--              1 |          55000.00 |          45
--              7 |         136000.00 |        43.5
-- (2 rows)
SELECT department_id, sum(salary) AS department_salary, avg(date_part('year', age(birth_date))) AS average_age
FROM employees e
GROUP BY department_id
HAVING avg(date_part('year', age(birth_date))) > (SELECT avg(date_part('year', age(birth_date))) FROM employees);
--
-- Geef per department gegevens over de medewerkers die het meest betaald werd(en).
-- Toon in dit rapport ook het aantal kinderen van die medewerker.
-- LET OP: Gebruik geen GROUP BY clause.
-- OUTPUT:
--  department_name | first_name | last_name |  salary  | #Children
-- -----------------+------------+-----------+----------+-----------
--  Administration  | Suzan      | Jochems   | 43000.00 |         1
--  Headquarters    | Bijoy      | Bordoloi  | 55000.00 |         0
--  Production      | Willem     | Zuiderweg | 43000.00 |         3
-- (3 rows)
SELECT department_name, first_name, last_name, salary, (SELECT count(relationship) FROM family_members WHERE relationship IN ('SON','DAUGHTER') AND e.employee_id=employee_id) AS "#Children"
FROM employees e JOIN departments d ON e.employee_id = d.manager_id
WHERE salary=(SELECT max(salary) FROM employees WHERE e.employee_id=employee_id)
ORDER BY department_name;
--
-- Verhoog de uren van de taken met 3 uur (let op voor taken met onbekende uren),
-- voor alle taken waarvan de medewerkers een parkeerplaats hebben met een nummer boven de 400,
-- en waarbij de projectlocaties niet de letter 'g' bevatten.
-- Gebruik een (NOT) EXISTS om te beslissen of je de update moet doorvoeren.
-- Resultaat:
-- (4 rijen aangepast)
-- de niuewe uren zijn:
-- employee_id | project_id | hours
-- -------------+------------+-------
-- 999887777   |         30 |  33.8
-- 999887777   |         10 |  13.2
-- 999222222   |         10 |  37.5
-- 999222222   |         30 |   8.1
-- (4 rows)
UPDATE tasks t SET hours= coalesce(hours,0)+3 WHERE
NOT EXISTS(SELECT 'x' FROM projects p WHERE upper(location) LIKE '%G%' AND t.project_id=p.project_id) AND
    EXISTS(SELECT employee_id FROM employees e WHERE parking_spot>400 AND t.employee_id=e.employee_id);
--