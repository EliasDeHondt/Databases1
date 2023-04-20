SELECT project_id
FROM tasks
GROUP BY project_id
HAVING count(*) > 2;
--
SELECT project_id, project_name
FROM projects
WHERE project_id IN (SELECT project_id FROM tasks GROUP BY project_id HAVING count(*) > 2)
ORDER BY 1;
--
SELECT employee_id, last_name
FROM employees
WHERE employee_id IN (SELECT employee_id
                      FROM tasks
                      WHERE project_id IN (SELECT project_id FROM projects WHERE upper(location) = 'EINDHOVEN'));
--
SELECT first_name, last_name
FROM employees
WHERE employee_id IN
      (SELECT employee_id
       FROM tasks
       WHERE hours > 10
         AND project_id IN
             (SELECT project_id FROM projects WHERE upper(project_name) = 'ORDERMANAGEMENT'));
--
SELECT first_name, last_name
FROM employees
WHERE employee_id IN (SELECT employee_id
                      FROM tasks
                               JOIN projects USING (project_id)
                      WHERE hours > 10
                        AND upper(project_name) = 'ORDERMANAGEMENT');
--
SELECT employee_id, last_name
FROM employees
WHERE employee_id IN (SELECT employee_id
                      FROM family_members
                      WHERE upper(relationship) IN ('DAUGHTER', 'SUN')
                      GROUP BY employee_id
                      HAVING count(*) >= 2)
ORDER BY employee_id DESC;
--
SELECT department_id, department_name FROM departments WHERE department_id=
(SELECT department_id
FROM employees
GROUP BY department_id
ORDER BY sum(salary) DESC FETCH FIRST 1 ROW ONLY);
--
SELECT * FROM EMPLOYEES WHERE employee_id NOT IN (SELECT manager_id FROM EMPLOYEES); -- Niet goed :-)
--
SELECT *
FROM EMPLOYEES
WHERE employee_id NOT IN (SELECT e1.manager_id FROM EMPLOYEES e1 LEFT JOIN employees e2 on e1.employee_id = e2.manager_id WHERE e2.manager_id IS NULL );
--
SELECT first_name, last_name FROM employees
WHERE employee_id IN (SELECT t.employee_id from tasks t
       WHERE hours > 10 and project_id = 1);
--
SELECT first_name, last_name FROM employees
WHERE employee_id IN (SELECT t.employee_id from tasks t JOIN projects p ON p.project_id = t.project_id WHERE hours > 10 and lower(project_name)='ordermanagement') ORDER BY 1;
--
SELECT f.employee_id, last_name, count() as "aantal" FROM family_members f JOIN employees e ON e.employee_id = f.employee_id
WHERE upper(relationship) in ('DAUGHTER','SON') AND lower(last_name) != 'bock' GROUP BY f.employee_id,last_name
HAVING count() = (SELECT count(*) FROM family_members f JOIN employees e ON e.employee_id = f.employee_id
WHERE upper(relationship) in ('DAUGHTER','SON') AND lower(last_name) != 'bock');
--
-- *********************************************************** VIEWS ***********************************************************
CREATE VIEW v_emp_sal_dep AS SELECT department_id, sum(salary) FROM employees GROUP BY department_id ORDER BY department_id;
--
SELECT * FROM v_emp_sal_dep;
--
CREATE VIEW v_emp_child AS SELECT e.employee_id, concat(first_name, ' ', last_name), e.birth_date, fm.name FROM employees e JOIN family_members fm ON e.employee_id = fm.employee_id WHERE upper(relationship) IN ('DAUGHTER', 'SON');
--
SELECT * FROM v_emp_child;
--
CREATE VIEW v_emp_salary AS SELECT employee_id, first_name, last_name, salary FROM employees;
--
SELECT * FROM v_emp_salary;
--
CREATE OR REPLACE VIEW v_emp_salary AS SELECT employee_id, first_name, last_name, salary, department_id FROM employees;
--
SELECT * FROM v_emp_salary;
--
DROP VIEW v_emp_salary;
--
CREATE VIEW v_emp_salary AS SELECT employee_id, first_name, last_name, salary FROM employees;
--
SELECT * FROM v_emp_salary;
--
CREATE VIEW v_department  AS SELECT * FROM departments;
--
ALTER TABLE departments ADD dept_telnr NUMERIC(9);
--
SELECT * FROM v_department;
--
SELECT view_definition FROM INFORMATION_SCHEMA.views WHERE table_name='v_department';
--
ALTER TABLE departments DROP COLUMN dept_telnr CASCADE;
--
ALTER TABLE departments DROP COLUMN dept_telnr CASCADE;
--
CREATE VIEW v_department  AS SELECT * FROM departments;
--
CREATE OR REPLACE VIEW v_emp_salary AS SELECT employee_id, first_name, last_name, salary FROM employees WHERE department_id=7;
--
SELECT * FROM v_emp_salary;
--
-- Welke DML-instructies zijn er via de view v_emp_salary mogelijk
-- DML
-- INSERT
-- DELETE
-- UPDATE
--
INSERT INTO v_emp_salary VALUES('999999999','Jan','Janssens',35000,3);
--
DELETE FROM v_emp_salary WHERE employee_id='999999999';
--
CREATE OR REPLACE VIEW v_emp_salary AS SELECT employee_id, first_name, last_name, salary FROM employees WHERE department_id=7 WITH CHECK OPTION; -- Kan alleen data INSERT in department_id=7
--
-- Welke DML-instructies zijn er via de view v_emp_child mogelijk
-- DML
-- INSERT
-- DELETE
-- UPDATE
--
SELECT e.employee_id, t.project_id, round(t.hours/(SELECT sum(hours) FROM tasks WHERE t.project_id=tasks.project_id)*100)||'%' AS "PROC" FROM employees e JOIN tasks t on e.employee_id = t.employee_id
GROUP BY e.employee_id, t.hours, t.project_id
ORDER BY t.project_id;
--
CREATE VIEW v_percentage_proportion AS
    SELECT e.employee_id, t.project_id, round(t.hours/(SELECT sum(hours) FROM tasks WHERE t.project_id=tasks.project_id)*100)||'%'
        AS "PROC" FROM employees e JOIN tasks t on e.employee_id = t.employee_id GROUP BY e.employee_id, t.hours, t.project_id ORDER BY t.project_id;
--
SELECT * FROM v_percentage_proportion;
--
SELECT typeno, price_weekend FROM cottype_prices WHERE upper(park_code)='SF'
AND season_code = 1
AND price_weekend > (SELECT avg(price_weekend) FROM cottype_prices);
--
SELECT typeno, max(price_weekend) FROM cottype_prices WHERE upper(park_code)='WB' AND price_weekend = (SELECT max(price_weekend) FROM cottype_prices) GROUP BY typeno;
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
SELECT park_name FROM parks WHERE country_code IN (SELECT country_code FROM countries WHERE lower(country_name)='netherlands') AND code IN (SELECT park_code FROM cottagetypes GROUP BY park_code HAVING count(park_code) >= 7) ORDER BY park_name DESC;
--
CREATE VIEW v_reservations AS SELECT resno, tano, clientno, park_code, typeno, houseno, start_date, end_date FROM reservations;
--
UPDATE v_reservations SET status = 'PAID' WHERE resno=4 AND tano=2;
-- De query dat hierboven is opgegeven werkt niet omdat in de view geen "status" tabel is
--
DELETE FROM v_reservations WHERE UPPER(park_code) ='VB';
-- Je kan FK's niet zomaar verwijderen.
--
CREATE OR REPLACE VIEW v_overview_reservations AS SELECT r.*,c.last_name FROM reservations r JOIN clients c ON r.clientno = c.clientno AND start_date >'15-01-2020';
--
SELECT * FROM v_overview_reservations;
--
ALTER TABLE reservations DROP booking_date;
--
ALTER TABLE reservations DROP booking_date CASCADE;
--
CREATE OR REPLACE VIEW v_overview_clients AS SELECT * FROM clients;
--
ALTER TABLE clients ADD birth_date DATE;
--
SELECT * FROM v_overview_clients;
--
-- Het nieuwe attribuut "birth_date" is niet zichtbaar In de view "v_overview_clients", maar wel In de brand tabel "clients".
--
CREATE OR REPLACE VIEW v_overview_clients AS SELECT * FROM clients; -- <-Hoe kan je dit oplossen
--
CREATE VIEW v_vakantiehuizen_ep AS SELECT ct.park_code, ct.typeno, c.houseno, ct.no_bedrooms, ct.no_persons, ct.wifi, c.pet, c.quiet, c.beach FROM cottagetypes ct
    LEFT JOIN cottages c on ct.park_code = c.park_code and ct.typeno = c.typeno WHERE ct.park_code='EP' AND ct.no_bedrooms > 2;
--
SELECT * FROM v_vakantiehuizen_ep;
--
INSERT INTO V_VAKANTIEHUIZEN_EP VALUES ('EP', 81, 53, 3, 8, 'J', 89, 'J', 'J');
--
-- Je kan wel een INSERT doen op een bron tabel of een view waar geen join opstaat.
--
-- To enable inserting into the view, provide an INSTEAD OF INSERT trigger or an unconditional ON INSERT DO INSTEAD rule.
--
CREATE VIEW V_OVERZICHT_RESERVATIES AS SELECT tano, count(clientno) AS "Aantal Reservations"  FROM reservations GROUP BY tano ORDER BY tano;
--
UPDATE V_OVERZICHT_RESERVATIES SET "Aantal Reservations" = 7 WHERE tano=1;
--
-- In de view staat er een Group by.Deze worden niet automatisch geupdate, dus dit geeft een error. [55000] ERROR.
--
CREATE OR REPLACE VIEW v_reservaties AS SELECT resno, clientno, park_code, typeno, houseno, start_date, end_date FROM reservations;
--
SELECT * FROM v_reservaties;
--
-- ERROR: null value in column "tano" of relation "reservations" violates not-null constraint.
-- Dus met andere woorden, de view heeft geen toegang tot alle variabelen en kan dus niet alle variabelen invullen. En dit is een violation of the nul constrain.
--

