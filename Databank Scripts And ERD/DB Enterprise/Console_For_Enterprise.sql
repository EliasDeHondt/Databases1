--
-- **************************************************************P1*************************************************************
--
-- Attributen = employee_id, last_name, first_name, department_id
SELECT employee_id, last_name, first_name, department_id
FROM employees
WHERE department_id = 7
ORDER BY employee_id;
--
SELECT employee_id, last_name, first_name, department_id
FROM employees;
--
SELECT *
FROM employees;
--
SELECT *
FROM tasks;
--
SELECT *
FROM TasKS;
--
SELECT *
FROM tasks,
     projects;
--
SELECT *
FROM tasks;
--
SELECT *
FROM projects;
--
SELECT 2 + 2;
--
SELECT 2 + 2 AS totaal;
--
SELECT CURRENT_DATE;
--
SELECT CURRENT_DATE AS vandaag;
--
SELECT CURRENT_DATE AS vandaag, 2 + 2 AS totaal;
--
SELECT employee_id, last_name || ' ' || first_name AS full_name
FROM employees;
--
SELECT employee_id, last_name || ' ' || first_name AS "Full Name"
FROM employees;
--
SELECT employee_id, last_name, salary, salary * 1.1 AS raise
FROM employees;
--
SELECT SUM(salary) AS total_labor_cost
FROM employees;
--
SELECT department_id
FROM employees;
--
SELECT DISTINCT department_id
FROM employees;
--
SELECT department_id AS dept, salary
FROM employees;
--
SELECT DISTINCT department_id AS dept, salary
FROM employees
WHERE salary >= 55000;
--
SELECT employee_id, last_name, first_name, birth_date
FROM employees
WHERE birth_date = '20-06-1981';
--
SELECT employee_id, last_name, first_name, salary
FROM employees
WHERE salary BETWEEN 25000 AND 43000;
--
SELECT employee_id, last_name, first_name, salary
FROM employees
WHERE salary >= 25000 <= 43000;
--
SELECT employee_id, last_name, first_name, birth_date
FROM employees
WHERE birth_date BETWEEN '1_JAN_1980' AND '31-DEC-1980';
--
SELECT employee_id, last_name, first_name
FROM employees
WHERE last_name BETWEEN 'A' AND 'k';
--
SELECT employee_id, first_name
FROM employees
WHERE first_name = 'WILLEM';
--
SELECT employee_id, first_name
FROM employees
WHERE first_name = 'Willem';
--
SELECT employee_id, first_name
FROM employees
WHERE UPPER(first_name) = 'WILLEM';
-- =
SELECT employee_id, first_name
FROM employees
WHERE LOWER(first_name) = 'willem';
-- =
SELECT employee_id, INITCAP(first_name)
FROM employees
WHERE INITCAP(first_name) = 'Willem';
--
SELECT employee_id, last_name
FROM employees
WHERE LOWER(last_name) LIKE '%m%';
-- =
SELECT employee_id, last_name
FROM employees
WHERE UPPER(last_name) LIKE '_M%';
--
SELECT employee_id, department_id, salary
FROM employees
WHERE department_id = 3
  AND salary > 30000;
--
SELECT employee_id, department_id, salary
FROM employees
WHERE NOT department_id = 3
  AND salary > 30000;
--
SELECT employee_id, department_id, salary
FROM employees
WHERE NOT (department_id = 3 AND salary > 30000);
--
SELECT employee_id, department_id, salary
FROM employees
WHERE department_id = 3
   OR salary > 30000;
--
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE salary > 30000 AND department_id = 1
   OR department_id = 3;
--
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE salary > 30000
  AND (department_id = 1 OR department_id = 3);
--
SELECT employee_id, first_name, salary
FROM employees
WHERE salary = 25000
   OR salary = 30000
   OR salary = 43000;
-- =
SELECT employee_id, first_name, salary
FROM employees
WHERE salary IN (25000, 30000, 43000);
--
SELECT employee_id, first_name, salary
FROM employees
WHERE first_name IN ('Suzan', 'Martina');
--
SELECT employee_id, first_name, salary
FROM employees
WHERE LOWER(first_name) IN ('suzan', 'martina');
--
SELECT employee_id, first_name, birth_date
FROM employees
WHERE birth_date IN ('10-NOV-1977', '1-SEP-1965');
--
SELECT employee_id, last_name, manager_id
FROM employees
WHERE manager_id IS NULL;
--
SELECT employee_id, manager_id, UPPER(last_name) || ' ' || first_name as name
FROM employees
WHERE manager_id IS NOT NULL;
--
SELECT *
FROM tasks
WHERE hours IS NULL;
-- Niet =     888888 ((hours IS NULL) is niet = (hours=0))
SELECT *
FROM tasks
WHERE hours = 0;
--
SELECT *
FROM tasks
WHERE hours IS NOT NULL;
-- =
SELECT *
FROM tasks
WHERE NOT hours IS NULL;
--
SELECT employee_id, last_name, salary, birth_date, manager_id AS "Manager"
FROM "employees"
WHERE salary < 30000
  AND last_name = 'Muiden'
  AND birth_date < '31-JAN-2000';
--
SELECT *
FROM departments
ORDER BY department_id ASC;
--
SELECT *
FROM departments
ORDER BY department_id DESC;
--
SELECT employee_id, last_name, first_name, department_id
FROM employees
ORDER BY department_id, last_name;
--
SELECT employee_id, last_name AS "a very very long column name", first_name AS fname, department_id AS department
FROM employees
ORDER BY department DESC, "a very very long column name" ASC;
--
SELECT employee_id, last_name AS "a very long column name", first_name AS fname, department_id AS department
FROM employees
ORDER BY department DESC, "a very long column name" ASC;
--
SELECT employee_id, last_name AS "a very long column name", first_name AS fname, department_id AS department
FROM employees
ORDER BY 4 DESC, 2 ASC;
--
SELECT *
FROM tasks
ORDER BY hours;
--
SELECT *
FROM tasks
ORDER BY hours NULLS FIRST;
-- =
SELECT *
FROM tasks
ORDER BY hours;
--
SELECT last_name
FROM employees
ORDER BY last_name;
--
-- De eerste 3 rijen vallen weg
SELECT last_name
FROM employees
ORDER BY last_name FETCH NEXT 3 ROWS ONLY;
--
-- De eerste 3 worden niet weergegeven dan de volgende 4 wel en de rest niet
SELECT last_name
FROM employees
ORDER BY last_name
OFFSET 3 ROWS FETCH NEXT 4 ROWS ONLY;
--
-- De eerste 0 worden niet weergegeven dan de volgende 2 wel en de rest niet
SELECT last_name
FROM employees
ORDER BY last_name
OFFSET 0 ROWS FETCH NEXT 2 ROWS ONLY;
--
-- De eerste 2 worden niet weergegeven dan de volgende 2 wel en de rest niet
SELECT last_name
FROM employees
ORDER BY last_name
OFFSET 2 ROWS FETCH NEXT 2 ROWS ONLY;
--
SELECT last_name
FROM employees
ORDER BY last_name FETCH NEXT 1 ROWS ONLY;
-- =
SELECT last_name
FROM employees
ORDER BY last_name FETCH FIRST 1 ROW ONLY;
--
SELECT project_name, department_id
FROM projects;
--
SELECT 'project ' || project_id || 'is handled by ' || department_id AS "Projects with department"
FROM PROJECTS;
--
SELECT current_date - birth_date
FROM FAMILY_MEMBERS;
--
SELECT *
FROM tasks;
--
SELECT department_id, manager_id, mgr_start_date
FROM departments;
--
SELECT last_name, salary, department_id
FROM EMPLOYEES;
--
SELECT DISTINCT initcap(location)
FROM employees;
--
SELECT DISTINCT department_id, initcap(location)
FROM employees
ORDER BY initcap(location);
--
SELECT 150 * 0.85 calculation;
--
SELECT 'SQL' || ' ' || 'Data retrieval' || ' ' || 'Chapter 3-4' "Best course";
--
SELECT employee_id AS employee, name AS "NAME FALILY MEMBER", relationship, gender
FROM family_members
WHERE employee_id = '999111111'
ORDER BY name ASC;
--
SELECT *
FROM departments
WHERE department_id = 3;
--
SELECT employee_id, last_name, location
FROM EMPLOYEES
WHERE initcap(location) = 'Maastricht';
--
SELECT employee_id, project_id, hours
FROM tasks
WHERE hours BETWEEN 20 AND 35
  AND project_id = 10;
--
SELECT project_id, hours
FROM tasks
WHERE hours <= 10
  AND employee_id = '999222222';
--
SELECT employee_id, last_name, province
FROM employees
WHERE upper(province) = 'GR'
   OR upper(province) = 'NB';
--
SELECT employee_id, last_name, province
FROM employees
WHERE upper(province) IN ('NB', 'GR');
--
SELECT department_id, first_name
FROM employees
WHERE first_name
          IN ('Suzan', 'Martina', 'Henk', 'Douglas')
ORDER BY 1 DESC, 2 ASC;
--
SELECT last_name, salary, department_id
FROM employees
WHERE department_id = 7 AND salary < 40000
   OR employee_id = '999666666';
--
SELECT last_name, department_id
FROM employees
WHERE initcap(location) != 'Maarssen'
  AND initcap(location) != 'Eindhoven';
--
SELECT employee_id, project_id, hours
FROM tasks
ORDER BY hours NULLS FIRST;
--
SELECT employee_id, project_id, hours
FROM tasks
ORDER BY hours DESC NULLS LAST;
--
SELECT last_name, location, salary
FROM employees
WHERE salary > 30000
  AND (LOWER(location) LIKE 'm%' OR LOWER(location) LIKE 'o%');
--
SELECT name
FROM family_members
WHERE birth_date BETWEEN '01-01-1988' AND '31-12-1988';
--
SELECT employee_id, last_name, first_name, department_id, department_name
FROM employees
         JOIN departments USING (department_id);
--
SELECT employee_id, last_name, first_name, department_id, department_name
FROM employees
         JOIN departments ON employees.department_id = departments.department_id
WHERE upper(gender) = 'F';
--
SELECT employee_id, last_name, first_name, department_id, department_name
FROM employees
         NATURAL JOIN departments;
--
SELECT mgr.last_name
FROM employees e
         JOIN employees mgr ON (e.manager_id = mgr.employee_id)
WHERE e.employee_id = '999444444';
--
SELECT current_date;
--
SELECT '***' ||| current_date || '***';
--
SHOW datestyle;
-- DMY Date Month Year
--
SET datestyle TO SQL, YMD;
SET datestyle TO German, DMY;
SET datestyle TO ISO, YMD;
SET datestyle TO ISO, DMY;
--
SET lc_time = 'nl_NL';
-- TAAL SET
--
SELECT 'In ' || to_char(birth_date, 'Month') || ' geboren.' AS "month of birth"
FROM family_members;
--
SELECT 'In ' || to_char(birth_date, 'FMMonth') || ' geboren.' AS "month of birth"
FROM family_members;
--
SELECT 'In ' || to_char(birth_date, 'TMMonth') || ' geboren.' AS "month of birth"
FROM family_members;
--
SELECT *
FROM employees
WHERE cast(employee_id AS INT) = 999666666;
--
SELECT *
FROM employees
WHERE employee_id = to_char(999666666, '999999999');
-- to_char = van number naar test
--
SELECT *
FROM employees
WHERE employee_id = trim(to_char(999666666, '999999999'));
-- trim = min der ersten spasie
--
SELECT count(*), department_id
FROM employees
GROUP BY department_id;
--
SELECT a.department_id, department_name, project_id, project_name, location
FROM DEPARTMENTS a,
     PROJECTS;
--
SELECT d.department_id, d.department_name, p.project_id, p.project_name, p.location
FROM departments d
         INNER JOIN projects p ON p.department_id = d.department_id
ORDER BY d.department_id;
--
SELECT e.department_id, d.manager_id, e.last_name, e.salary, e.parking_spot
FROM employees e
         INNER JOIN departments d ON e.employee_id = d.manager_id
ORDER BY department_id;
--
SELECT p.project_name, p.location, e.first_name || ' ' || e.last_name AS full_name, e.department_id
FROM employees e
         JOIN tasks t ON e.employee_id = t.employee_id
         JOIN projects p ON t.project_id = p.project_id
ORDER BY department_id;
--
SELECT p.project_name, p.location, e.first_name || ' ' || e.last_name AS full_name, e.department_id
FROM employees e
         JOIN tasks t ON e.employee_id = t.employee_id
         JOIN projects p ON t.project_id = p.project_id
WHERE p.location = 'Eindhoven'
   OR p.department_id = '3'
ORDER BY department_id;
--
SELECT first_name, last_name, count(*) AS "number of PPROJECTS"
FROM tasks t
         JOIN employees e ON e.employee_id = t.employee_id
GROUP BY t.employee_id, first_name, last_name
ORDER BY "number of PPROJECTS";
--
SELECT e.first_name || ' ' || e.last_name AS employee_name, f.name, f.gender, f.birth_date AS "Date of Birth"
FROM employees e
         JOIN family_members f ON e.employee_id = f.employee_id
WHERE f.birth_date >= '01-01-1988'
ORDER BY f.birth_date;
--
SELECT e.first_name || ' ' || e.last_name AS employee_name, count(*) AS "number of kids"
FROM employees e
         JOIN family_members f ON e.employee_id = f.employee_id
WHERE f.gender = 'F'
GROUP BY employee_name;
--
SELECT 'Jochems' AS "last_name Jochems", 'maastricht' AS "city Jochems", man.last_name, man.location AS "city"
FROM employees e
         JOIN employees man ON e.employee_id = man.employee_id
WHERE man.gender = 'M'
  AND man.location != 'Maastricht'
ORDER BY last_name;
--
SELECT a.employee_id, a.last_name, b.birth_date
FROM employees a,
     employees b
WHERE a.employee_id <> b.employee_id
  AND date_part('mon', a.birth_date) = date_part('mon', b.birth_date)
ORDER BY date_part('mon', a.birth_date);
--
SELECT a.project_id, a.project_name, a.location, a.department_id
FROM projects a
         JOIN projects b ON a.department_id = b.department_id
WHERE b.project_id = 3
  AND a.project_id != 3;
--
SELECT uberboss.last_name AS "employees", boss.last_name AS "boss", e.last_name AS "uberboss"
FROM employees e
         JOIN employees boss ON e.employee_id = boss.manager_id
         JOIN employees uberboss ON boss.employee_id = uberboss.manager_id;
--
SELECT DISTINCT employee_id
FROM family_members
WHERE date_part('year', (age(birth_date))) < '18';
--
SELECT employee_id, last_name, location, age(birth_date) "age"
FROM employees
WHERE lower(location) = 'eindhoven'
   OR lower(location) = 'maarssen' AND date_part('year', (age(birth_date))) > '30';
--
SELECT employee_id, age(birth_date) AS "age partner"
FROM family_members
WHERE date_part('year', (age(birth_date))) BETWEEN 35 AND 45;
--
SELECT first_name, last_name, birth_date, ('65 year' - age(birth_date)) + current_date AS pension
FROM employees
ORDER BY pension;
--
SELECT name, to_char(birth_date, 'day DD month YYYY') AS "born on"
FROM family_members
ORDER BY to_char(birth_date, 'YYYY') DESC;
--
SELECT name, to_char(birth_date, 'FMday FMDD FMmonth FMYYYY') AS "born on"
FROM family_members
ORDER BY to_char(birth_date, 'YYYY') DESC;
--
SET lc_time = 'fr_fr';
SELECT name, to_char(birth_date, 'TMday TMDD TMmonth TMYYYY') AS "born on"
FROM family_members
ORDER BY to_char(birth_date, 'YYYY') DESC;
--
SELECT round(avg(salary), 1)
FROM employees
WHERE department_id = 3;
--
SELECT sum(salary)
FROM employees
WHERE department_id = 7;
--
SELECT department_id, COUNT(*) AS count
FROM employees
GROUP BY department_id;
--
SELECT department_id, COUNT(*) AS count
FROM employees
WHERE lower(gender) = 'm'
GROUP BY department_id;
--
SELECT department_id, sum(salary)
FROM employees
WHERE lower(gender) = 'f'
GROUP BY department_id;
--
SELECT department_id, round(avg(salary)) AS "average salary"
FROM employees
GROUP BY department_id;
--
SELECT department_id, sum(salary) AS count
FROM employees
WHERE lower(gender) = 'm'
GROUP BY department_id;
--
SELECT round(AVG(max_sal.max)) AS avg_max_sal
FROM (SELECT MAX(salary) AS max FROM employees GROUP BY department_id) AS max_sal;
--?
--
SELECT avg(salary), department_id
FROM employees
GROUP BY department_id
HAVING count(*) > 2;
--
SELECT e.employee_id, e.first_name, e.last_name, f.employee_id, f.name
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id
ORDER BY e.employee_id;
--
SELECT DISTINCT e.employee_id, e.first_name, e.last_name, f.employee_id, f.name
FROM employees e
         FULL JOIN family_members f ON e.employee_id = f.employee_id
WHERE f.name IS NULL
ORDER BY e.employee_id;
--
SELECT first_name, last_name, d.department_id, d.department_name
FROM departments d
         LEFT JOIN employees e ON d.department_id = e.department_id
WHERE e.first_name IS NULL;
--
SELECT p.project_name,
       e.employee_id                        AS "EMP",
       e.first_name,
       e.last_name,
       hours,
       e.birth_date,
       date_part('year', (age(birth_date))) AS age_employee
FROM employees e
         JOIN tasks t ON e.employee_id = t.employee_id
         JOIN projects p ON t.project_id = p.project_id
WHERE hours > 6
  AND (e.employee_id = '999111111' OR e.employee_id = '999222222' OR e.employee_id = '999555555')
ORDER BY hours
    FETCH NEXT 3 ROWS ONLY;
--
SELECT ee.first_name || ' ' || ee.last_name AS "%name%",
       f.name,
       upper(relationship),
       f.gender,
       e.employee_id,
       upper(e.first_name)                  AS first_name_capitals,
       upper(e.last_name)                   AS upper,
       e.birth_date
FROM employees e
         JOIN family_members f ON e.employee_id = f.employee_id
         INNER JOIN employees ee ON e.employee_id = ee.manager_id
WHERE e.birth_date > '01-01-1985'
  AND f.gender = 'F'
ORDER BY e.last_name;
--
SELECT e.last_name, e.first_name, t.project_id
FROM employees e
         LEFT JOIN tasks t ON e.employee_id = t.employee_id
ORDER BY e.last_name;
--
SELECT e.last_name, e.first_name
FROM employees e
         LEFT JOIN tasks t ON e.employee_id = t.employee_id
WHERE project_id IS NULL
ORDER BY e.last_name;
--
SELECT e.last_name, e.first_name, count(t.project_id)
FROM employees e
         LEFT JOIN tasks t ON e.employee_id = t.employee_id
GROUP BY e.last_name, e.first_name
ORDER BY e.last_name;
--
SELECT count(DISTINCT project_id)
FROM projects;
--
SELECT round(AVG(hours)) AS "number_of_hours"
FROM tasks
WHERE project_id = '30';
--
SELECT count(DISTINCT employee_id) AS "employees_with_kids"
FROM family_members;
--
SELECT MAX(hours) AS "highest amount hours"
FROM tasks
WHERE project_id = '20';
--
SELECT MAX(birth_date) AS "youngest_chold"
FROM family_members
WHERE employee_id = '999111111';
--
SELECT sum(length(last_name)) / count(employee_id) AS "Average length last_name"
FROM employees;
--
SELECT project_id, count(employee_id) AS "number_of_emp"
FROM tasks
GROUP BY project_id
ORDER BY project_id;
--
SELECT count(employee_id) / count(DISTINCT project_id) AS "avg_number_emp/project"
FROM tasks;
--
SELECT department_id, count(employee_id) AS "number of Employees"
FROM employees
WHERE province = upper('LI')
GROUP BY department_id;
--
SELECT manager_id, count(employee_id)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;
--
SELECT department_id, location, count(project_id) AS "number of projects"
FROM projects
GROUP BY department_id, location;
--
SELECT employee_id, relationship, count(relationship)
FROM family_members
WHERE relationship = upper('DAUGHTER')
   OR relationship = upper('SON')
GROUP BY relationship, employee_id
ORDER BY employee_id;
--
SELECT department_id, count(employee_id) AS "aantal"
FROM employees
WHERE gender = upper('F')
  AND salary < 33000
  AND parking_spot IS NOT NULL
GROUP BY department_id;
--
SELECT department_name, project_name, location
FROM projects p
         RIGHT JOIN departments d ON d.department_id = p.department_id;
--
SELECT e.employee_id, e.last_name, d.department_name, name AS "family_members"
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id
         LEFT JOIN departments d ON e.department_id = d.department_id
ORDER BY e.last_name;
--
SELECT e.employee_id, e.last_name, d.department_name, name AS "family_members"
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id
         JOIN departments d ON e.department_id = d.department_id
ORDER BY e.last_name;
--
SELECT e.last_name, e.first_name, p.project_name, t.hours
FROM employees e
         LEFT JOIN tasks t ON e.employee_id = t.employee_id
         LEFT JOIN projects p ON t.project_id = p.project_id
ORDER BY project_name;
--
SELECT DISTINCT e.employee_id, e.last_name
FROM employees e
         RIGHT JOIN employees baas ON baas.employee_id = e.manager_id
WHERE baas.manager_id != e.employee_id
ORDER BY 1;
--
SELECT DISTINCT e.last_name AS "Has no manger", baas.last_name AS "Does not manage employees"
FROM employees e
         FULL JOIN employees baas ON baas.employee_id = e.manager_id
WHERE baas.employee_id IS NULL
   OR e.employee_id IS NULL;
--
SELECT location
FROM employees
UNION
SELECT location
FROM locations;
--
SELECT location
FROM employees
UNION ALL
SELECT location
FROM locations;
--
SELECT location
FROM employees
INTERSECT
SELECT location
FROM locations;
--
SELECT location
FROM employees
EXCEPT
SELECT location
FROM locations;
--
SELECT initcap(location)
FROM employees
UNION
SELECT initcap(location)
FROM locations;
--
SELECT first_name || ' ' || last_name AS naam, length(first_name || ' ' || last_name)
FROM employees;
--
SELECT length('Elias De Hondt') AS naam_length;
--
SELECT substring(last_name, 1, 4), last_name
FROM employees;
-- Van 1 tot 4 (Niet van 0 te starten)
--
SELECT substring(last_name, 5), last_name
FROM employees;
-- Van 5 tot x (Niet van 0 te starten)
--
SELECT position('o' in last_name), last_name
FROM employees;
--
SELECT concat(2 * 3, ' is het product van 2 en 3');
--
SELECT concat_ws(',', 'abcd', 2, NULL, 22);
--
SELECT lpad('hi', 5);
--
SELECT lpad('hi', 5, '*');
--
SELECT rpad('hi', 5, '*');
--
SELECT lpad(to_char(1000 + 200.55, 'FM9999999D99'), 14, '*');
--
SELECT lpad(to_char(current_date, 'DD/MM/YYYY'), 10, '$#');
--
SELECT TRIM(LEADING 'a' FROM 'aaaaaVanderveeken');
--
SELECT replace('ab*cd*', '*', '.');
-- Van * naar .
--
SELECT employee_id, manager_id, GREATEST(employee_id, manager_id)
FROM employees;
--
SELECT employee_id, manager_id, GREATEST(employee_id, manager_id)
FROM employees;
--
SELECT COALESCE(NULL, NULL, 'AAA', NULL);
--
SELECT COALESCE(NULL, 'CCC', 'AAA', 'BBB');
--
SELECT employee_id, project_id, COALESCE(hours, 0) AS hours
FROM tasks;
--
SELECT nullif(1234, 1230 + 4);
-- = NULL
--
SELECT nullif(1234, 1230);
-- = 1234
--
SELECT lpad(to_char(birth_date, 'YYYY/MM/DD'), 10, '*')
FROM family_members
ORDER BY birth_date;
--
SELECT lpad(to_char(birth_date, 'YYYY-MM-DD'), 10, '*')
FROM family_members
ORDER BY birth_date;
--
SELECT employee_id
FROM employees
EXCEPT
SELECT employee_id
FROM family_members;
--
SELECT employee_id
FROM employees
EXCEPT
SELECT manager_id
FROM employees;
--
SELECT first_name || ' ' || last_name
FROM employees
ORDER BY last_name;
--
SELECT concat(first_name, ' ', last_name)
FROM employees
ORDER BY last_name;
--
SELECT concat(rpad(first_name, length(first_name) + 1), last_name)
FROM employees
ORDER BY last_name;
--
SELECT lower(street) AS new_address
FROM employees;
--
SELECT replace(lower(street), 'z', '') AS new_address
FROM employees;
--
SELECT rpad(replace(lower(street), 'z', ''), 30, '*') AS new_address
FROM employees;
--
SELECT first_name, last_name
FROM employees
WHERE position('o' in first_name) != 0
  AND position('o' in last_name) != 0;
--
SELECT last_name
FROM employees
WHERE position('OO' in upper(last_name)) > 0
  AND position('O' in upper(last_name)) = position('OO' in upper(last_name))
  AND position('O' in upper(reverse(last_name))) = position('OO' in upper(reverse(last_name)));
--
SELECT substr(street, 1, position('e' in lower(street))) ||
       replace(substr(street, position('e' in lower(street)) + 1), 'e', 'o')
FROM employees;
--
SELECT lower(concat(substring(e.first_name, 1, 3), '.', substring(e.first_name, 3, 6), '@', department_name, '.be'))
FROM employees e
         JOIN departments d ON e.department_id = d.department_id
ORDER BY first_name;
--
SELECT employee_id,
       name,
       relationship,
       CASE
           WHEN date_part('year', (age(birth_date))) < 18 THEN 'Child'
           ELSE 'Adult'
           END AS "age_categorie"
FROM family_members
WHERE relationship != upper('PARTNER');
--
SELECT concat_ws(' ', first_name, infix, last_name) AS "full_name"
FROM employees;
--
SELECT e.employee_id, first_name, e.birth_date, coalesce(name, 'Single')
FROM employees e
         LEFT JOIN family_members fm on e.employee_id = fm.employee_id
WHERE lower(relationship) = 'partner'
   OR relationship IS NULL;
--
SELECT e.employee_id,
       first_name,
       e.birth_date,
       coalesce(name, 'Single')                                                partner,
       f.birth_date                                                            "birth_date partner",
       case when e.birth_date > f.birth_date then f.name else e.first_name end first_name
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id
WHERE UPPER(relationship) IN ('PARTNER')
   OR relationship IS NULL
order by 2;
--
SELECT 'De dag is ' || to_char(current_timestamp, 'SSSSS') AS "Klok";
--
SELECT '**' || to_char(485, 'L999') || '**';
-- L = Local currency
--
-- MAX
-- GRATEST
--least
-- SELECT position('elias' , 'l')
--
SELECT first_name, last_name, to_char(birth_date, 'DAY') "dag van de week"
FROM employees;
--
SELECT first_name, last_name, to_char(birth_date, 'DD mon YYYY') as birth_date
FROM employees;
--
SELECT CASE WHEN date_part('year', age(birth_date)) < 18 THEN 'kind' ELSE 'volwassene' END
FROM FAMILY_MEMBERS;
--
SELECT replace(concat_ws(' ', first_name, infix, last_name), ' ', '\')
FROM employees;
--
SELECT e.employee_id, CASE WHEN upper(relationship) = 'PARTNER' THEN name ELSE 'Single' END
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id AND upper(relationship) = 'PARTNER';
--
SELECT e.employee_id,
       CASE WHEN upper(relationship) = 'PARTNER' THEN name ELSE 'Single' END         "partner_naam",
       CASE WHEN upper(relationship) = 'PARTNER' THEN f.birth_date END               "partner_birth_date",
       CASE WHEN e.birth_date > f.birth_date THEN e.birth_date ELSE f.birth_date END "oudste"
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id AND upper(relationship) = 'PARTNER';
--
-- **************************************************************P2*************************************************************
--
CREATE TABLE dt_timestamp
(
    ts1   TIMESTAMP,
    date1 DATE,
    time1 TIME
);
INSERT INTO dt_timestamp
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
SELECT TO_CHAR(ts1, 'DD-MON-YYYY HH24:MI:SS') AS ts,
       TO_CHAR(date1, 'DD-MON-YYYY')          AS dt,
       TO_CHAR(time1, 'HH24:MI:SS FF6')       AS tm
FROM dt_timestamp;
--
SELECT concat(first_name, ' ', last_name) AS name, salary
FROM employees
WHERE salary = (SELECT min(salary) FROM employees);
--
SELECT concat(first_name, ' ', last_name) AS name
FROM employees
WHERE employee_id != '999555555'
  AND salary = (SELECT salary FROM employees WHERE employee_id = '999555555');
--
SELECT employee_id, concat(first_name, ' ', last_name) AS name, salary
FROM employees
WHERE salary > (SELECT avg(salary) FROM employees WHERE department_id = 3);
--
SELECT concat(first_name, ' ', last_name) AS name
FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = upper('Production'));
--
SELECT concat(first_name, ' ', last_name) AS name, salary
FROM employees
WHERE salary > ALL (SELECT salary FROM employees WHERE department_id = 7);
-- ALL
--
SELECT concat(first_name, ' ', last_name) AS name, salary
FROM employees
WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 7);
-- ANY
--
SELECT e.employee_id, last_name, sq.aantal
FROM employees e,
     (SELECT employee_id, count(relationship) aantal FROM family_members GROUP BY employee_id) AS sq
WHERE sq.employee_id = e.employee_id;
--
CREATE VIEW v_emp_par_spot AS
SELECT parking_spot, employee_id, first_name, last_name
FROM employees
ORDER BY 1;
--
CREATE TEMP VIEW v_emp_par_spot AS
SELECT parking_spot, employee_id, first_name, last_name
FROM employees
ORDER BY 1;
-- TEMP is temp :-)
--
SELECT *
FROM v_emp_par_spot;
--
CREATE OR REPLACE VIEW V_emp_salary AS
SELECT employee_id AS emp_nr, last_name AS familyname, round(salary / 12) AS mon
FROM employees;
--
SELECT *
FROM V_emp_salary;
--
CREATE OR REPLACE VIEW v_dept_view AS
SELECT department_id, department_name
FROM departments
ORDER BY department_id;
--
SELECT *
FROM v_dept_view;
--
INSERT INTO v_dept_view(department_id, department_name)
VALUES (18, 'new dept 18 test');
--
UPDATE v_dept_view
SET department_name=upper(department_name)
WHERE department_id = 18;
--
CREATE VIEW v_emp_dept_7 AS
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE department_id = 7
        WITH CHECK OPTION;
-- WITH CHECK OPTION (in u VIEW)
--
SELECT *
FROM v_emp_dept_7;
--
UPDATE v_emp_dept_7
SET department_id=1
WHERE employee_id = '999888888';
--
SELECT *
FROM information_schema.views
WHERE table_name LIKE 'v_%';
-- Wat zijn mijn Views
--
--
--
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
SELECT department_id, department_name
FROM departments
WHERE department_id =
      (SELECT department_id
       FROM employees
       GROUP BY department_id
       ORDER BY sum(salary) DESC FETCH FIRST 1 ROW ONLY);
--
SELECT *
FROM EMPLOYEES
WHERE employee_id NOT IN (SELECT manager_id FROM EMPLOYEES);
-- Niet goed :-)
--
SELECT *
FROM EMPLOYEES
WHERE employee_id NOT IN (SELECT e1.manager_id
                          FROM EMPLOYEES e1
                                   LEFT JOIN employees e2 on e1.employee_id = e2.manager_id
                          WHERE e2.manager_id IS NULL);
--
SELECT first_name, last_name
FROM employees
WHERE employee_id IN (SELECT t.employee_id
                      from tasks t
                      WHERE hours > 10
                        and project_id = 1);
--
SELECT first_name, last_name
FROM employees
WHERE employee_id IN (SELECT t.employee_id
                      from tasks t
                               JOIN projects p ON p.project_id = t.project_id
                      WHERE hours > 10
                        and lower(project_name) = 'ordermanagement')
ORDER BY 1;
--
SELECT f.employee_id, last_name, count(*) as "aantal"
FROM family_members f
         JOIN employees e ON e.employee_id = f.employee_id
WHERE upper(relationship) in ('DAUGHTER', 'SON')
  AND lower(last_name) != 'bock'
GROUP BY f.employee_id, last_name
HAVING count(*) = (SELECT count(*)
                   FROM family_members f
                            JOIN employees e ON e.employee_id = f.employee_id
                   WHERE upper(relationship) in ('DAUGHTER', 'SON')
                     AND lower(last_name) != 'bock');
--
-- *********************************************************** VIEWS ***********************************************************
CREATE VIEW v_emp_sal_dep AS
SELECT department_id, sum(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id;
--
SELECT *
FROM v_emp_sal_dep;
--
CREATE VIEW v_emp_child AS
SELECT e.employee_id, concat(first_name, ' ', last_name), e.birth_date, fm.name
FROM employees e
         JOIN family_members fm ON e.employee_id = fm.employee_id
WHERE upper(relationship) IN ('DAUGHTER', 'SON');
--
SELECT *
FROM v_emp_child;
--
CREATE VIEW v_emp_salary AS
SELECT employee_id, first_name, last_name, salary
FROM employees;
--
SELECT *
FROM v_emp_salary;
--
CREATE OR REPLACE VIEW v_emp_salary AS
SELECT employee_id, first_name, last_name, salary, department_id
FROM employees;
--
SELECT *
FROM v_emp_salary;
--
DROP VIEW v_emp_salary;
--
CREATE VIEW v_emp_salary AS
SELECT employee_id, first_name, last_name, salary
FROM employees;
--
SELECT *
FROM v_emp_salary;
--
CREATE VIEW v_department AS
SELECT *
FROM departments;
--
ALTER TABLE departments
    ADD dept_telnr NUMERIC(9);
--
SELECT *
FROM v_department;
--
SELECT view_definition
FROM INFORMATION_SCHEMA.views
WHERE table_name = 'v_department';
--
ALTER TABLE departments
    DROP COLUMN dept_telnr CASCADE;
--
ALTER TABLE departments
    DROP COLUMN dept_telnr CASCADE;
--
CREATE VIEW v_department AS
SELECT *
FROM departments;
--
CREATE OR REPLACE VIEW v_emp_salary AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE department_id = 7;
--
SELECT *
FROM v_emp_salary;
--
-- Welke DML-instructies zijn er via de view v_emp_salary mogelijk
-- DML
-- INSERT
-- DELETE
-- UPDATE
--
INSERT INTO v_emp_salary
VALUES ('999999999', 'Jan', 'Janssens', 35000, 3);
--
DELETE
FROM v_emp_salary
WHERE employee_id = '999999999';
--
CREATE OR REPLACE VIEW v_emp_salary AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE department_id = 7
        WITH CHECK OPTION;
-- Kan alleen data INSERT in department_id=7
--
-- Welke DML-instructies zijn er via de view v_emp_child mogelijk
-- DML
-- INSERT
-- DELETE
-- UPDATE
--
SELECT e.employee_id,
       t.project_id,
       round(t.hours / (SELECT sum(hours) FROM tasks WHERE t.project_id = tasks.project_id) * 100) || '%' AS "PROC"
FROM employees e
         JOIN tasks t on e.employee_id = t.employee_id
GROUP BY e.employee_id, t.hours, t.project_id
ORDER BY t.project_id;
--
CREATE VIEW v_percentage_proportion AS
SELECT e.employee_id,
       t.project_id,
       round(t.hours / (SELECT sum(hours) FROM tasks WHERE t.project_id = tasks.project_id) * 100) || '%'
           AS "PROC"
FROM employees e
         JOIN tasks t on e.employee_id = t.employee_id
GROUP BY e.employee_id, t.hours, t.project_id
ORDER BY t.project_id;
--
SELECT *
FROM v_percentage_proportion;
--
-- *********************************************************** INDEX ***********************************************************
-- Gewone index
CREATE INDEX ind_salary ON employees (salary);
--
-- Unieke index
CREATE UNIQUE INDEX ind_dep_name ON departments (department_name);
--
-- Samengestelde gewone index
CREATE INDEX ind_emp_sal_dep ON employees (salary, department_id);
--
DROP INDEX ind_salary;
--
EXPLAIN ANALYSE
SELECT *
FROM employees;
--
SET enable_seqscan TO OFF;
SET enable_seqscan TO ON;
--
-- ********************************************************** Subquery *********************************************************
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id;
--
SELECT department_id, employee_id, last_name, salary
FROM employees
WHERE (department_id, salary) IN
      (SELECT department_id, MAX(salary) FROM employees GROUP BY department_id ORDER BY department_id) -- Subquery
ORDER BY department_id;
--
-- **************************************************** Correlated Subquery ****************************************************
SELECT department_id, employee_id, salary
FROM employees e
WHERE salary = (SELECT MAX(salary) FROM employees WHERE department_id = e.department_id);
--
SELECT department_id, employee_id, salary
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id);
--
SELECT employee_id, last_name
FROM employees e
WHERE EXISTS(SELECT 'x' FROM family_members WHERE employee_id = e.employee_id);
-- EXISTS = True/False | 'x' kan alles zijn.
-- EXISTS is altijd bij en Correlated Subquery.
--
SELECT employee_id, last_name
FROM employees e
WHERE NOT EXISTS(SELECT 'x' FROM family_members WHERE employee_id = e.employee_id);
-- NOT EXISTS = True/False | 'x' kan alles zijn.
-- NOT EXISTS is altijd bij en Correlated Subquery.
--
--
INSERT INTO archive
SELECT *
FROM departments;
--
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
UPDATE employees e SET salary=(salary+(600*(SELECT count(relationship) FROM family_members WHERE relationship IN ('SON','DAUGHTER') AND e.employee_id=employee_id)));
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
SELECT * FROM projects;
--
--
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
SELECT department_name, first_name, last_name, salary,
(SELECT count(relationship) FROM family_members WHERE relationship IN ('SON','DAUGHTER') AND e.employee_id=employee_id) AS "#Children"
FROM employees e
JOIN departments d ON e.employee_id = d.manager_id
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
--
--
BEGIN;
START TRANSACTION;
-- DML
-- DML
-- ....
SAVEPOINT save_temp;
-- DML
-- DML
-- ....
ROLLBACK TO SAVEPOINT save_temp; -- Neemt data van [SAVEPOINT save_temp; ]
END TRANSACTION;

COMMIT; -- Alles word ge update
--
CREATE USER Elias WITH SUPERUSER; -- Maakt user aan met sudo
--
CREATE USER Elias WITH NOSUPERUSER; -- Maakt user aan met no sudo
--
CREATE USER Elias WITH CREATEDB; -- Deze user kan databanken maken
--
CREATE USER Elias IN ROLE rolNaam;
--
CREATE USER Elias PASSWORD 'x';
--
CREATE ROLE rolNaam CREATEDB;
--
SELECT FOR UPDATE;
SELECT * FROM employees FOR UPDATE NOWAIT;
--
SELECT * FROM pg_user; -- Laat data van users zien
--
SELECT * FROM pg_roles; -- Laat data van roles zien
--
SELECT * FROM pg_group; -- Laat data van groups zien
--
ALTER USER Elias RENAME TO "Elias De Hondt"; -- Varanderen van naam
--
ALTER USER "Elias De Hondt" NOSUPERUSER; -- Varanderen van sudo naar not sudo
--
ALTER USER "Elias De Hondt" SUPERUSER; -- Varanderen van not sudo naar sudo
--
DROP ROLE x;
--
DROP USER "Elias De Hondt"; -- Dropt user Elias De Hondt
--
CREATE USER Tom LOGIN; --Kan inloggen
--
CREATE USER Tom NOLOGIN; --Kan niet inloggen
--
GRANT SELECT, UPDATE, INSERT ON TABLE departments TO Tom; -- Geef SELECT, UPDATE, INSERT regten op tabel departments
--
GRANT ALL ON employees TO Tom; -- Geeft alle regten op tabel employees
--
GRANT SELECT, UPDATE ON ALL TABLES IN SCHEMA;
--
-- Voor Rollen is het niet GRANT maar
--
--
--
SELECT * FROM pg_user; -- Laat data van users zien
--
SELECT * FROM pg_roles; -- Laat data van roles zien
--
SELECT * FROM pg_group; -- Laat data van groups zien
--
CREATE USER dba1 SUPERUSER CREATEDB CREATEROLE PASSWORD 'dba1';
--
CREATE USER dba2 SUPERUSER CREATEDB CREATEROLE PASSWORD 'dba2';
--
DROP USER dba2;
--
CREATE USER dba2 SUPERUSER CREATEDB CREATEROLE PASSWORD 'dba2';
--
-- DBA1
Begin;
UPDATE employees
SET location=UPPER(location)
WHERE department_id=7;
--
-- DBA2
SELECT employee_id, location FROM employees;
--
COMMIT;
--
SELECT employee_id, location FROM employees;
--
-- DBA1
Begin;
UPDATE employees
SET salary=salary*1.05
WHERE employees.department_id=3;
--
-- DBA2
Begin;
UPDATE employees
SET salary=salary*1.05
WHERE employees.department_id=7;
--
-- DBA1 & DBA2
Begin;
UPDATE employees
SET salary=salary*1.05
WHERE employees.department_id=7;
--
ROLLBACK;
--
-- DBA2
Begin;
UPDATE employees
SET salary=salary*1.05
WHERE employees.department_id=7;
--
-- DBA1
BEGIN;
UPDATE employees
SET infix=LOWER(infix)
WHERE UPPER(province)='LI';
--
ROLLBACK;
--
-- DBA2
BEGIN;
SELECT *
FROM employees
WHERE department_id=3
    FOR UPDATE NOWAIT; -- is [NOWAIT]
--
-- DBA1
Begin;
SELECT *
FROM employees
WHERE department_id=3
    FOR UPDATE NOWAIT; -- is [NOWAIT]
--
-- DBA1
Begin;
SELECT *
FROM employees
WHERE salary>=25000
    FOR UPDATE NOWAIT; -- is [NOWAIT]
--
BEGIN;
INSERT INTO departments VALUES(11,'Vietnam');
SELECT * FROM departments WHERE department_id=11;
SAVEPOINT savepoint_1;
UPDATE employees SET department_id=11 WHERE employee_id='999666666';
UPDATE employees SET department_id=11 WHERE manager_id='999666666';
SELECT employee_id, last_name, manager_id FROM employees WHERE department_id=11;
ROLLBACK TO savepoint_1;
SELECT * FROM departments WHERE department_id=11;
SELECT employee_id, last_name, manager_id FROM employees WHERE department_id=11;
ROLLBACK;
--
CREATE USER narda_dba SUPERUSER;
--
-- Dat kan niet want je helpt geen wachtwoord voor narda_dba.
--
ALTER USER narda_dba PASSWORD 'Narda';
--
CREATE ROLE dba CREATEDB;
--
GRANT dba TO narda_dba;
--
CREATE ROLE HRAdmin CREATEROLE;
-- (CREATEROLE) = Rollen aanmaken en verwijderen, alsook toegang geven en wegnemen van gebruikers.
--
GRANT ALL ON TABLE employees TO HRAdmin WITH GRANT OPTION;
-- (WITH GRANT OPTION) = doorgeven aan andere gebruikers.
--
GRANT UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA public TO HRAdmin;
-- UPDATE, INSERT, DELETE uitvoeren op alle tabellen in schema public van de databank.
-- (ALL TABLES IN SCHEMA public) = Alle tabellen
--
SELECT * FROM information_schema.role_table_grants WHERE grantee='hradmin';
--
SELECT * FROM information_schema.tables WHERE table_schema='public';
--
CREATE ROLE TotaleZichtbaarheid;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO TotaleZichtbaarheid;
--
SELECT * FROM information_schema.role_table_grants WHERE grantee='totalezichtbaarheid';
--
CREATE ROLE WerknemerBeheer;
GRANT INSERT, UPDATE, DELETE ON TABLE employees TO WerknemerBeheer;
--
CREATE GROUP Managers;
GRANT TotaleZichtbaarheid,WerknemerBeheer TO Managers;
--
CREATE USER admin_anette SUPERUSER;
GRANT HRAdmin,managers TO admin_anette;
-- Creëer een ‘admin’ user account voor Anette en geef haar toegang
-- tot de rol HRAdmin en de group manager.
--
CREATE USER anette;
--
CREATE TEMP VIEW Collega AS SELECT first_name, last_name, department_name FROM employees e
    JOIN departments d ON e.department_id=d.department_id;
--
CREATE TEMP VIEW baas AS SELECT department_name, first_name, last_name  FROM departments d
    JOIN employees e ON e.department_id=d.department_id;
--
SELECT * FROM Collega;
SELECT * FROM baas;
--
CREATE ROLE Werknemer;
GRANT ALL ON TABLE Collega, baas TO Werknemer;
--
SELECT * FROM information_schema.role_table_grants WHERE upper(grantee) = 'WERKNEMER';
--
GRANT Werknemer TO anette;
--
REVOKE ALL ON TABLE baas FROM anette;
--
SELECT * FROM information_schema.role_table_grants WHERE upper(grantee) = 'WERKNEMER';
--
DROP USER anette, anette_admin, narda_dba;
DROP GROUP managers;
DROP VIEW baas, collega;
--
CREATE ROLE DBmaker CREATEDB CREATEROLE LOGIN NOINHERIT;
--
SELECT * FROM pg_roles WHERE rolname = 'dbmaker';
--
ALTER ROLE DBmaker PASSWORD '123';
--
SELECT concat(e.first_name, ' ', e.last_name) AS "Naam van employees", f.name AS "Naam van family members", f.relationship AS "Relationship"
FROM employees e JOIN family_members f on e.employee_id = f.employee_id WHERE f.relationship IN ('SON', 'DAUGHTER');
--
-- Creëer een view v_familieleden_projecten_maastricht die het volgende resultaat oplevert.
-- Geef employee_id, de naam en de leeftijd (in jaren) van de familieleden van de medewerkers die aan een project werken met locatie Maastricht.
-- Los op met 2 subqueries en 1 join.
-- Let op de gevraagde output. Je zal verschillende tekstfuncties moeten gebruiken om dit op te lossen.
-- Plak exact 5 * achter de naam van het familielid.
--
--  EMPLOYEE_ID | "naam familielid"               | "leeftijd familielid"
--  999555555   |Alex** PARTNER of S. JOCHEMS     | 44 jaar oud vandaag
--  999444444   |Andrew PARTNER of S. J           | 14 jaar oud vandaag
--  999444444   |Josefine PARTNER of S. JOCHEMS   | 16 jaar oud vandaag
--  999444444   |Suzan** PARTNER of S. JOCHEMS    | 37 jaar oud vandaag
--
CREATE view v_familieleden_projecten_maastricht AS SELECT f.employee_id, concat(f.name, '***** ', f.relationship, ' of ', left(e.first_name,1),'. ', e.last_name) AS "Naam famililielid",
                      concat(date_part('year',age(f.birth_date)), ' jaar oud vandaag') AS "Leeftijd famililielid"
FROM family_members f
    JOIN employees e ON e.employee_id = f.employee_id
    JOIN tasks t on e.employee_id=t.employee_id

WHERE e.employee_id IN (SELECT employee_id FROM tasks WHERE project_id IN (SELECT project_id FROM projects p WHERE lower(p.location)='maastricht' AND t.project_id=p.project_id));
--
-- Werken tabel tasks alle taken van Willen wil ik blokkeren.
BEGIN;
SELECT * FROM tasks WHERE employee_id=(SELECT employee_id FROM employees WHERE lower(first_name)='willen') FOR UPDATE NOWAIT;
UPDATE tasks SET hours=coalesce(hours,0)+5 WHERE employee_id=(SELECT employee_id FROM employees WHERE lower(first_name)='willen');
SELECT * FROM tasks WHERE employee_id=(SELECT employee_id FROM employees WHERE lower(first_name)='willen');
ROLLBACK;
COMMIT;
--
CREATE TABLE testTable1(
    name VARCHAR(20) CONSTRAINT "name_Unique" UNIQUE DEFAULT 'No Name',
    id NUMERIC(8,0) CONSTRAINT pk_testTable_id PRIMARY KEY,
    salary NUMERIC(5,2) CONSTRAINT "salary_Chack" CHECK (salary > 1500.00 AND salary <= 5000.00), -- CHECK (salary BETWEEN 1500.00 AND 5000.00)
    straatnr INT CONSTRAINT NOT NULL,
    employee_id INT CONSTRAINT FK_employees_employee_id REFERENCES employees(employee_id),
    CONSTRAINT "table_CONSTRAINT_testTable1" );
--
CREATE TABLE departments (
     dept_id NUMERIC(2),
     afd_naam VARCHAR(20) CONSTRAINT nn_afd_naam NOT NULL,
     employee_id CHAR(9),
     start_datum DATE,
     -- table constraint
     CONSTRAINT pk_afdeling PRIMARY KEY(dept_id)
);
--
INSERT INTO employees(employee_id,first_name, last_name) VALUES(88888888,'Elias', 'De Hondt'),
                                                               (66666666,'Tom', 'De koon');
--
UPDATE departments SET mgr_start_date=now() WHERE department_id=7;
--
SELECT * FROM departments;
--
UPDATE departments SET mgr_start_date=to_date('2008-05-22','YYYY-MM-DD') WHERE department_id=7;
--
DELETE FROM departments WHERE department_id=7;
--
TRUNCATE TABLE departments;
--
TRUNCATE TABLE departments CASCADE;
--
TRUNCATE TABLE departments RESTART IDENTITY;
-- als je de sequences van de kolommen terug wilt herstarten.
--
TRUNCATE TABLE departments CONTINUE IDENTITY;
-- Als je de waarden niet wijzigt (default)
--
DROP TABLE departments;
-- verwijdert tabel "departments"
--
DROP TABLE departments CASCADE;
--
ALTER TABLE employees DROP street;
-- Verwijdert column "street"
--
ALTER TABLE employees DROP CONSTRAINT pk_employees;
-- Verwijdert CONSTRAINT "pk_employees"
--
ALTER TABLE employees ADD BaasNaam VARCHAR(20) DEFAULT 'No Baas';
--
ALTER TABLE employees ALTER employee_id SET DATA TYPE INT;
--
ALTER TABLE employees ALTER employee_id SET DEFAULT 123456789+date_part('year', now());
--
ALTER TABLE employees ALTER salary SET DEFAULT 0;
--
ALTER TABLE employees ALTER salary DROP DEFAULT;
--
ALTER TABLE employees ALTER salary SET NOT NULL;
--
ALTER TABLE employees ADD CONSTRAINT ch_lname CHECK (last_name=upper(last_name)) NOT VALID;
-- NOT VALID = Niet meteen implementeren
--
ALTER TABLE employees VALIDATE CONSTRAINT ch_lname;
--
ALTER TABLE employees RENAME TO employees2;
-- Hernoeming van employees (TABLE)
--
ALTER TABLE employees RENAME employee_id TO employee_id2;
-- Hernoeming van employee_id (COLUMN)
--
ALTER TABLE departments RENAME CONSTRAINT pk TO pk2;
-- Hernoeming van pk (CONSTRAINT)
--
ALTER TABLE employees2
    DROP CONSTRAINT ch_emp2_lastname,
    ADD CONSTRAINT ch_emp2_lastname
        CHECK(last_name=INITCAP(last_name));
-- Eerst de constraint droppen, dan direct terug aanmaken in hetzelfde statement.


-- --------------------------------------- --
-- ----- SEQUENCE & Identity Columns ----- --
-- --------------------------------------- --
-- ----------------------------------------------------------------------------
-- Oplossing 1 geen SEQUENCE of Identity Columns
INSERT INTO projects(project_id, project_name, location, department_id)
VALUES ((SELECT max(project_id) FROM projects)+1,
        'Test',
        'Test', (SELECT max(department_id) FROM departments));
-- ----------------------------------------------------------------------------
-- Oplossing 2 wel SEQUENCE
-- CREATE SEQUENCE
CREATE SEQUENCE "test1_SEQUENCE" INCREMENT 2 MINVALUE 8; -- start 8 want "MINVALUE 8" INCREMENT (8 10 12 14 16 18 ...)
CREATE SEQUENCE "test2_SEQUENCE" INCREMENT 3 MAXVALUE 20; -- start 0 en "MAXVALUE 20" dus tot 20 INCREMENT (0 3 6 9 12 15 18)
CREATE SEQUENCE "test3_SEQUENCE" START 3; -- start om 3 (INCREMENT = default = 1 | en geen MINVALUE/MAXVALUE dus max/min van datatype)
CREATE SEQUENCE "test4_SEQUENCE" CYCLE; -- Met de cycle optie ga je na de maxvalue terug naar de minvalue van de sequence.

-- Default is nocycle. Dit geeft een error als de maxvalue bereikt is.
-- MINVALUE/ MAXVALUE: de default waarden zijn de maximumwaarden van het datatype. De NO optie zet het
-- INCREMENT default 1 (INCREMENT = De optelling of de aftrekking het getal geeft de kwantiteit daarvan aan)

-- ALTER SEQUENCE
ALTER SEQUENCE "test1_SEQUENCE" INCREMENT 3; -- INCREMENT stond op 2 nu om 3
ALTER SEQUENCE "test1_SEQUENCE" MINVALUE 30; -- MINVALUE stond op 8 nu om 30
ALTER SEQUENCE "test2_SEQUENCE" MAXVALUE 10; -- MAXVALUE stond op 20 nu om 10
ALTER SEQUENCE "test3_SEQUENCE" START 10; -- -- START stond op 3 nu om 10

-- DROP SEQUENCE
DROP SEQUENCE "test1_SEQUENCE";
DROP SEQUENCE "test2_SEQUENCE";
DROP SEQUENCE "test3_SEQUENCE";
DROP SEQUENCE "test4_SEQUENCE";

-- functies SEQUENCE
SELECT nextval("test1_SEQUENCE"); -- Nextval verhoogt de sequence met het increment en geeft deze waarde terug.
SELECT currval("test1_SEQUENCE"); -- Currval haalt de huidige waarde van de sequence op.
--
SELECT setval("test1_SEQUENCE", 42); -- Next nextval will return 43
SELECT setval("test1_SEQUENCE", 42, true); -- Same as above
SELECT setval("test1_SEQUENCE", 42, false); -- Next nextval will return 42

-- VB SEQUENCE
CREATE SEQUENCE "employee_id_SEQUENCE";

INSERT INTO employees(employee_id, last_name, first_name)
VALUES (nextval("employee_id_SEQUENCE"), 'Elias','De Hondt');
-- ----------------------------------------------------------------------------
-- Oplossing 3 wel Identity Columns
-- CREATE Identity Columns
CREATE TABLE test1_met_Identity_Columns (new_employee_id INT GENERATED ALWAYS AS IDENTITY, "name" VARCHAR(10)); -- ken meer zijn...
-- Dus dit maakt een nieuwe tabel aan met zijn unieke kolom genaamd "new_employee_id" dit zal altijd een uniek identificatienummer geven.
-- En er wordt ook een extra kolom gemaakt voor de lol (name).

CREATE TABLE test2_met_Identity_Columns (new_employee_id INT GENERATED BY DEFAULT AS IDENTITY , "name" VARCHAR(10));
-- "BY DEFAULT" / "ALWAYS" | + "AS IDENTITY"
-- Indien ALWAYS is geselecteerd, wordt elke INSERT/UPDATE van de kolom met een meegegeven waarde geweigerd.
-- Indien BY DEFAULT is geselecteerd, dan heeft de door de gebruiker opgegeven waarde voorrang en kan de kolom normaal worden bijgewerkt.

-- ALTER Identity Columns
ALTER TABLE test1_met_Identity_Columns ALTER new_employee_id ADD GENERATED BY DEFAULT AS IDENTITY; -- Gaat van "ALWAYS" naar "BY DEFAULT"
ALTER TABLE test2_met_Identity_Columns ALTER new_employee_id ADD GENERATED ALWAYS AS IDENTITY; -- Gaat van "BY DEFAULT" naar "ALWAYS"

-- Sequence options in een Identity Columns
CREATE TABLE test3_met_Identity_Columns (new_employee_id INT GENERATED ALWAYS AS IDENTITY (START 2)); -- Start met 2
CREATE TABLE test4_met_Identity_Columns (new_employee_id INT GENERATED ALWAYS AS IDENTITY (INCREMENT 8)); -- Start met 8 en dan 16 24 ... (log 2) :-)
-- Alle sequence options kan je gebruiken

-- ALTER Identity Columns + Sequence options
ALTER TABLE test3_met_Identity_Columns ALTER new_employee_id SET GENERATED ALWAYS SET START 4; -- Start nu op 4
ALTER TABLE test4_met_Identity_Columns ALTER new_employee_id SET GENERATED ALWAYS SET INCREMENT 2; -- Start nu op 2 en dan 4, 6, 8 ... (log 2) :-)

-- DROP Identity Columns
ALTER TABLE test1_met_Identity_Columns ALTER new_employee_id DROP IDENTITY;
ALTER TABLE test2_met_Identity_Columns ALTER new_employee_id DROP IDENTITY;
ALTER TABLE test3_met_Identity_Columns ALTER new_employee_id DROP IDENTITY;
ALTER TABLE test4_met_Identity_Columns ALTER new_employee_id DROP IDENTITY;
-- ----------------------------------------------------------------------------
-- -------------------- --
-- ----- Subquery ----- --
-- -------------------- --
-- ----------------------------------------------------------------------------
-- Subqueries in WHERE
SELECT employee_id,last_name,salary
FROM EMPLOYEES
WHERE salary > ALL ( -- Geef alle medewerkers die meer verdienen dan alle medewerkers in de department 7
    SELECT salary
    FROM EMPLOYEES
    WHERE department_id=7
);

-- Subqueries in FROM
SELECT employees.employee_id, last_name, sq.aantal
FROM employees,
     (SELECT employee_id, COUNT(relationship) aantal
      FROM family_members
      GROUP BY employee_id
     ) AS sq
WHERE sq.employee_id = employees.employee_id;

-- Subqueries in SELECT
SELECT employee_id,
       last_name,
       salary,
       (SELECT AVG(salary)
        FROM employees) AS AverageSalary
FROM employees;
-- ----------------------------------------------------------------------------
-- ---------------- --
-- ----- VIEW ----- --
-- ---------------- --
-- CREATE VIEW
CREATE OR REPLACE VIEW test1_v AS SELECT * FROM employees;
-- REPLACE = Indien deze view al bestaat dus met andere woorden de opgegeven naam is niet uniek wordt dit overschreden.
CREATE TEMP VIEW test1_v AS SELECT employee_id, last_name FROM employees;
-- TEMP = Deze view zal automatisch verwijderd worden wanneer de sessie is afgelopen.

-- INSERT VIEW
INSERT INTO test1_v (employee_id, last_name) VALUES(9999999, 'test Name');

-- UPDATE VIEW
UPDATE test1_v SET last_name=UPPER(last_name) WHERE employee_id=99999999;

-- DELETE VIEW
DELETE FROM test1_v WHERE employee_id=99999999;

-- WITH CHECK OPTION
CREATE VIEW v_emp_dept_7 AS SELECT employee_id,last_name, salary, department_id FROM EMPLOYEES WHERE department_id=7;
-- Zonder "WITH CHECK OPTION" dus gewoon (VIEW)

CREATE VIEW v_emp_dept_7 AS SELECT employee_id,last_name, salary, department_id FROM EMPLOYEES WHERE department_id=7 WITH CHECK OPTION;
-- Met "WITH CHECK OPTION" (We kunnen nu Alleen informatie wijzigen (UPDATE) die visueel zichtbaar (SELECT) is met onze view)

-- DROP VIEW
DROP VIEW v_emp_dept_7;
DROP VIEW test1_v;
-- ----------------------------------------------------------------------------
-- ----------------- --
-- ----- INDEX ----- --
-- ----------------- --
-- ----------------------------------------------------------------------------
-- Voordeel/Nadelen van INDEX
-- • Voordeel van indexen
--      • Queries sneller indien je minder dan +-5% van je tabel opvraagt!
--      • Queries veel sneller als je enkel kolommen opvraagt die in je index zitten.
--      • Eens gecreëerd zal het systeem een update doorvoeren aan de index wanneer de tabel gewijzigd wordt (deze overhead kan dus ook een nadeel zijn!)

-- • Nadelen van indexen
--      • Queries kunnen trager je meer dan +-5% van je tabel opvraagt.
--      • Vraagt meer geheugen, dus niet onnodig aanmaken
--      • INSERT/UPDATE/DELETE vragen aanpassing van index tabel

-- CREATE INDEX Gewone
CREATE INDEX index_salary ON employees(salary);

-- CREATE INDEX Unieke
CREATE UNIQUE INDEX ind_dep_name ON departments(department_name);

-- CREATE Samengestelde gewone index
CREATE INDEX ind_emp_sal_dep ON employees(salary,department_id);

-- Samengestelde unieke index
-- ...

-- DROP INDEX
DROP INDEX ind_emp_sal_dep;
DROP INDEX index_salary;
DROP INDEX ind_dep_name;

-- Gebruik ‘explain analyze’ om de performantie van een query op te vragen VB:
EXPLAIN ANALYZE SELECT * FROM employees WHERE salary=43000 AND department_id=3;
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- INSERT met subquery VB:
--
-- INSERT INTO archive(department_id, department_name)
-- SELECT department_id, department_name
-- FROM departments
-- WHERE department_id < 4;
--