--
SELECT d.department_id, d.department_name, p.project_id, p.project_name, p.location 
FROM departments d INNER JOIN projects p ON p.department_id=d.department_id ORDER BY d.department_id;
--
SELECT e.department_id, d.manager_id, e.last_name, e.salary, e.parking_spot 
FROM employees e INNER JOIN departments d ON e.employee_id = d.manager_id ORDER BY department_id;
--
SELECT p.project_name, p.location, e.first_name||' '||e.last_name AS full_name, e.department_id 
FROM employees e JOIN tasks t ON e.employee_id=t.employee_id JOIN projects p ON t.project_id=p.project_id ORDER BY department_id;
--
SELECT p.project_name, p.location, e.first_name||' '||e.last_name AS full_name, e.department_id 
FROM employees e JOIN tasks t ON e.employee_id=t.employee_id JOIN projects p ON t.project_id=p.project_id WHERE p.location='Eindhoven' OR p.department_id='3' ORDER BY department_id;
--
SELECT first_name, last_name, count(*) AS "number of PPROJECTS" 
FROM tasks t JOIN employees e ON e.employee_id = t.employee_id GROUP BY t.employee_id, first_name, last_name ORDER BY "number of PPROJECTS";
--
SELECT e.first_name||' '||e.last_name AS employee_name, f.name,  f.gender, f.birth_date AS "Date of Birth" 
FROM employees e JOIN family_members f ON e.employee_id=f.employee_id WHERE f.birth_date >= '01-01-1988' ORDER BY f.birth_date; 
--
SELECT e.first_name||' '||e.last_name AS employee_name, count(*) AS "number of kids" 
FROM employees e JOIN family_members f ON e.employee_id=f.employee_id WHERE f.gender = 'F' GROUP BY employee_name;
--
SELECT 'Jochems' AS "last_name Jochems", 'maastricht' AS "city Jochems", man.last_name, man.location AS "city" 
FROM employees e JOIN employees man ON  e.employee_id=man.employee_id WHERE man.gender='M' AND man.location!='Maastricht' ORDER BY last_name;
--
SELECT a.employee_id, a.last_name, b.birth_date
FROM employees a, employees b WHERE a.employee_id <> b.employee_id AND date_part('mon', a.birth_date) = date_part('mon', b.birth_date) ORDER BY date_part('mon', a.birth_date);
--
SELECT a.project_id, a.project_name, a.location, a.department_id 
FROM projects a JOIN projects b ON a.department_id=b.department_id WHERE b.project_id=3 AND a.project_id!=3;
--
SELECT uberboss.last_name AS "employees", boss.last_name AS "boss", e.last_name AS "uberboss" 
FROM employees e JOIN employees boss ON e.employee_id=boss.manager_id JOIN employees uberboss ON boss.employee_id=uberboss.manager_id;
--
SELECT DISTINCT employee_id 
FROM family_members WHERE date_part('year',(age(birth_date))) < '18';
--
SELECT employee_id, last_name, location, age(birth_date) "age" 
FROM employees WHERE lower(location)='eindhoven' OR lower(location)='maarssen' AND date_part('year',(age(birth_date))) > '30';
--
SELECT employee_id, age(birth_date) AS "age partner" 
FROM family_members WHERE date_part('year',(age(birth_date))) BETWEEN 35 AND 45;
--
SELECT first_name, last_name, birth_date, ('65 year' - age(birth_date)) + current_date AS pension 
FROM employees ORDER BY pension;
--
SELECT name, to_char(birth_date,'day DD month YYYY') AS "born on" 
FROM family_members ORDER BY to_char(birth_date,'YYYY') DESC;
--
SELECT name, to_char(birth_date,'FMday FMDD FMmonth FMYYYY') AS "born on" 
FROM family_members ORDER BY to_char(birth_date,'YYYY') DESC;
--
SET lc_time = 'fr_fr';
SELECT name, to_char(birth_date,'TMday TMDD TMmonth TMYYYY') AS "born on" 
FROM family_members ORDER BY to_char(birth_date,'YYYY') DESC;
--
SELECT t.ta_name, r.start_date, r.end_date 
FROM reservations r JOIN travelagencies t ON r.tano = t.tano WHERE date_part('year', r.start_date) = '2020' AND date_part('year', r.end_date) = '2020' ORDER BY t.ta_name;
--
SELECT DISTINCT p.park_name, p.country_code, c.no_bedrooms, c.surface 
FROM parks p JOIN cottagetypes c ON p.code = c.park_code WHERE p.country_code != '6' AND p.country_code != '1' AND (no_bedrooms >= '3' OR c.surface > '80') ORDER BY park_name;
--
SELECT DISTINCT t.tano, t.ta_name, c.first_name, c.last_name, r.status 
FROM travelagencies t JOIN reservations r ON t.tano = r.tano JOIN clients c ON r.clientno = c.clientno WHERE (r.tano = '1' OR r.tano = '2') AND r.status = 'PAID' OR r.tano = '3' ORDER BY last_name ASC, t.tano DESC;
--
SELECT DISTINCT c.first_name || ' ' || c.last_name AS name, t.ta_name 
FROM travelagencies t JOIN reservations r ON t.tano = r.tano JOIN clients c ON r.clientno = c.clientno WHERE t.ta_name = UPPER('NECKERMANN');
--
SELECT p.park_name, p.sport, p.country_code, p.code FROM parks wb JOIN parks p ON wb.country_code=p.country_code WHERE upper(wb.park_name)='WEERTERBERGEN' AND upper(p.code)!='WB';
--
SELECT p.park_name, p.sport FROM parks FX JOIN parks p ON FX.sport=p.sport WHERE upper(FX.park_name)='FENIX' AND upper(p.park_name)!='FENIX';
--
SELECT tano, houseno, clientno, to_char(start_date,'FMday DD mon YYYY') AS "start_data", end_date-start_date AS "Aantal dagen"
FROM reservations WHERE (booking_date > '2019-01-01') AND (tano=3 OR houseno IS NULL) ORDER BY date_part('MON', start_date),clientno;
--
SELECT to_char(current_date, 'DD///MM//YYYY'); 
--
SELECT park_code, typeno, '€ ' || round(price_midweek/1.21,2) FROM cottype_prices WHERE season_code=9 AND park_code='WB';
--
SELECT park_code, typeno, '€ ' || round(price_midweek/1.21,1) AS "promotion" FROM cottype_prices WHERE season_code=9 AND park_code='WB';
--