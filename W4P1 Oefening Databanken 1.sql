--
SELECT count(DISTINCT project_id)
FROM projects;
--
SELECT round(AVG(hours)) AS "number_of_hours"
FROM tasks WHERE project_id='30';
--
SELECT count(DISTINCT employee_id) AS "employees_with_kids"
FROM family_members WHERE relationship != upper('PARTNER');
--
SELECT MAX(hours) AS "highest amount hours"
FROM tasks WHERE project_id='20';
--
SELECT MAX(birth_date) AS "youngest_chold"
FROM family_members WHERE employee_id='999111111';
--
SELECT sum(length(last_name))/count(employee_id) AS "Average length last_name"
FROM employees;
--
SELECT project_id, count(employee_id) AS "number_of_emp"
FROM tasks GROUP BY project_id ORDER BY project_id;
--
SELECT count( employee_id)/count(DISTINCT project_id) AS "avg_number_emp/project"
FROM tasks;
--
SELECT department_id, count(employee_id) AS "number of Employees"
FROM employees WHERE province=upper('LI') GROUP BY department_id;
--
SELECT manager_id, count(employee_id)
FROM employees WHERE manager_id IS NOT NULL GROUP BY manager_id;
--
SELECT department_id, location, count(project_id) AS "number of projects"
FROM projects GROUP BY department_id, location;
--
SELECT employee_id, relationship, count(relationship)
FROM family_members WHERE relationship=upper('DAUGHTER') OR relationship=upper('SON') GROUP BY relationship, employee_id ORDER BY employee_id;
--
SELECT department_id, count(employee_id) AS "aantal"
FROM employees WHERE gender=upper('F') AND salary < 33000 AND parking_spot IS NOT NULL GROUP BY department_id;
--
SELECT e.last_name, e.first_name, t.project_id
FROM employees e LEFT JOIN tasks t ON e.employee_id = t.employee_id ORDER BY e.last_name;
--
SELECT e.last_name, e.first_name
FROM employees e LEFT JOIN tasks t ON e.employee_id = t.employee_id WHERE project_id IS NULL ORDER BY e.last_name;
--
SELECT e.last_name, e.first_name, count(t.project_id)
FROM employees e LEFT JOIN tasks t ON e.employee_id = t.employee_id GROUP BY e.last_name, e.first_nameORDER BY e.last_name;
--
SELECT e.employee_id, e.last_name, d.department_name, name AS "family_members" 
FROM employees e LEFT JOIN family_members f ON e.employee_id=f.employee_id LEFT JOIN departments d ON e.department_id=d.department_id ORDER BY e.last_name ASC;
--
SELECT e.employee_id, e.last_name, d.department_name, name AS "family_members" 
FROM employees e LEFT JOIN family_members f ON e.employee_id=f.employee_id JOIN departments d ON e.department_id=d.department_id ORDER BY e.last_name ASC;
--
SELECT e.last_name, e.first_name, p.project_name, t.hours
FROM employees e LEFT JOIN tasks t ON e.employee_id = t.employee_id LEFT JOIN projects p ON t.project_id = p.project_id ORDER BY project_name;
--
SELECT DISTINCT e.employee_id, e.last_name
FROM employees e RIGHT JOIN employees baas ON baas.employee_id=e.manager_id WHERE baas.manager_id!=e.employee_id ORDER BY 1;
--
SELECT DISTINCT e.last_name AS "Has no manger", baas.last_name AS "Does not manage employees"
FROM employees e FULL JOIN employees baas ON baas.employee_id = e.manager_id WHERE baas.employee_id IS NULL OR e.employee_id IS NULL;
--
SELECT count(DISTINCT clientno) AS "clients" FROM reservations WHERE tano=2;
--
SELECT round(avg(price_weekend),2) AS "avg WE-price summer 2022" FROM cottype_prices WHERE season_code=1;
--
SELECT park_code AS "PARK CODE", MAX(price_weekend) AS "highest WE price", MIN(price_weekend) AS "lowest WE price" FROM cottype_prices WHERE season_code=10 GROUP BY park_code ORDER BY park_code;
--
SELECT count(DISTINCT park_code) AS "cottages close to beach" FROM cottages WHERE UPPER(beach)='Y';
--
SELECT tano, count(clientno) AS "reservations" FROM reservations GROUP BY tano ORDER BY tano;
--
SELECT tano FROM reservations GROUP BY tano HAVING count(clientno) < 10 ORDER BY tano;
--
SELECT avg(end_date-start_date) AS "avg duration" FROM reservations;
--
SELECT round(avg(end_date-start_date),0) AS "avg duration" FROM reservations;
--
SELECT park_code, typeno, count(DISTINCT houseno) AS "cottages" FROM cottages WHERE upper(park_code) IN ('EP', 'MD', 'SF') GROUP BY park_code, typeno ORDER BY park_code;
--
SELECT tano, count(status) AS "UNpaid" FROM reservations WHERE upper(status)='OPEN' GROUP BY tano;
--
SELECT park_code FROM cottages  WHERE upper(quiet)='Y' AND upper(playground)='Y' AND upper(pet)='Y' GROUP BY park_code HAVING count(DISTINCT houseno) > 10;
--
SELECT count(tano) AS "summer reservations at Neckermann" FROM reservations WHERE tano=3 AND to_char(start_date, 'MM') IN ('06', '07', '08');
--
SELECT park_code, count(park_code) AS "attraction type" FROM parkattractions GROUP BY park_code ORDER BY park_code;
--
SELECT typeno, count(DISTINCT park_code) AS "types" FROM cottages GROUP BY typeno HAVING count(DISTINCT park_code)=2 ORDER BY typeno;
--
SELECT park_code, count(houseno) AS "# houses" FROM cottages WHERE upper(pet) = 'N' GROUP BY park_code ORDER BY "# houses";
--
SELECT clientno, count(clientno) AS "clients" FROM reservations GROUP BY clientno HAVING count(clientno) IN (4, 5);
--
SELECT park_code, round(avg(no_bedrooms),0) AS "avg bedrooms" FROM cottagetypes WHERE upper(park_code)='MD' GROUP BY park_code;
--
SELECT p.park_name, p.sport, p.country_code, p.code FROM parks wb JOIN parks p ON wb.country_code = p.country_code WHERE upper(wb.park_name) = 'WEERTERBERGEN' AND upper(p.code) != 'WB';
--
SELECT p.park_name, p.sport FROM parks FX JOIN parks p ON FX.sport = p.sport WHERE upper(FX.park_name) = 'FENIX' AND upper(p.park_name) != 'FENIX';
--