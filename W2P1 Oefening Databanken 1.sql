--
UPDATE EMPLOYEES
SET city='maastricht'
WHERE employee_id='999555555'; 
COMMIT;
--
SELECT *
FROM PROJECTS;
--
SELECT project_name
		,department_id
FROM PROJECTS;
--
SELECT 'project '
		,project_id
		, 'is handled by'
		, department_id
FROM PROJECTS;
--
SELECT 'project ' as " "
		,project_id
		, 'is handled by' as " "
		, department_id
FROM PROJECTS;
--
SELECT 'project '|| project_id || ' is handled by ' || department_id "projects with department"
FROM PROJECTS;
--
SELECT  current_date - birth_date
FROM FAMILY_MEMBERS;
--
SELECT last_name, salary department_id 
FROM EMPLOYEES;
--
SELECT DISTINCT location
FROM EMPLOYEES;
--
SELECT DISTINCT UPPER(location)
FROM EMPLOYEES;
--
SELECT DISTINCT INITCAP(location)
FROM EMPLOYEES;    
--
SELECT DISTINCT department_id,INITCAP(location) location
FROM EMPLOYEES ORDER BY location;
--
SELECT now();
--
SELECT 150*0.85 calculation;
--
SELECT  'SQL' || ' ' || 'Data retrieval' || ' ' || 'Chapter 3-4'  "Best course";
--
SELECT employee_id employee, name "NAME FAMILY MEMBER", relationship, gender
FROM FAMILY_MEMBERS
WHERE employee_id='999111111'
ORDER BY 2;
--
SELECT *
FROM  DEPARTMENTS
WHERE UPPER(department_name) = 'ADMINISTRATION';
--
SELECT employee_id, last_name, location
FROM EMPLOYEES
WHERE location='Maastricht';
--
SELECT employee_id, last_name, location
FROM EMPLOYEES
WHERE INITCAP(location)='Maastricht';
--
SELECT employee_id, project_id, hours
FROM TASKS
WHERE hours BETWEEN 20 AND 35
AND project_id=10;
--
SELECT project_id, hours
FROM TASKS
Where hours<10 AND employee_id='999222222';
--
SELECT employee_id, last_name, province
FROM EMPLOYEES
WHERE UPPER(province)  IN ('NB','GR');
--
SELECT employee_id, last_name, province
FROM EMPLOYEES
WHERE UPPER(province)  = 'NB' OR UPPER(province)  = 'GR';
--
SELECT department_id, first_name
FROM EMPLOYEES
WHERE UPPER(first_name) IN ('SUZAN','MARTINA','HENK','DOUGLAS')
ORDER BY department_id DESC, first_name;
--
SELECT  last_name, salary, department_id
FROM EMPLOYEES
WHERE department_id =7 AND salary<40000 OR employee_id='999666666';
--
SELECT  last_name, department_id
FROM EMPLOYEES
WHERE UPPER(location)  NOT IN ('MAARSSEN','EINDHOVEN');
--
SELECT  last_name, department_id
FROM EMPLOYEES
WHERE UPPER(location) != 'MAARSSEN' AND UPPER(location) != 'EINDHOVEN';
--
SELECT  last_name, department_id
FROM EMPLOYEES
WHERE NOT UPPER(location) = 'MAARSSEN' AND NOT UPPER(location) = 'EINDHOVEN';
--
SELECT *
FROM TASKS
ORDER BY hours ASC NULLS FIRST;
--
SELECT *
FROM TASKS
ORDER BY hours DESC NULLS LAST;
--
	SELECT  last_name,location, salary
	FROM EMPLOYEES
	WHERE (UPPER(location) like 'M%'
		OR UPPER(location) like 'O%')
			AND salary > 30000;
--
SELECT name 
FROM FAMILY_MEMBERS 
where birth_date between '1-1-1988' and '31-12-1988';
--	 
SELECT DISTINCT clientno
FROM reservations;
--	 
SELECT clientno " ", 'travelled on' " ", start_date " " , 'to park' "  ", park_code " "
FROM reservations
WHERE start_date >= '01-jan-2021'
ORDER BY start_date desc
fetch first 5 rows only;
--	
SELECT CURRENT_DATE "today it's";
--	
SELECT resno, tano, clientno, end_date+2 "extension by 2 days"
FROM reservations
WHERE park_code = 'MD';
--
SELECT tano, clientno, start_date, end_date
FROM reservations
WHERE start_date >= '01-jan-2021'
order by start_date;
--	
SELECT clientno, status
FROM reservations
WHERE UPPER(status) = 'OPEN'
order by clientno desc
LIMIT (SELECT (count(*) / 4) AS selnum FROM reservations WHERE UPPER(status) = 'OPEN' );
--
SELECT clientno, status paid
FROM reservations
WHERE UPPER(status) = 'PAID' AND (start_date >= '01-jul-2020');
--	
SELECT park_code, typeno, houseno, corner, central, pet, quiet, playground, beach
FROM cottages
WHERE houseno < 12 AND 
((UPPER(playground) = 'Y' )  OR (UPPER(corner) = 'Y') )
ORDER BY 1;
--	
SELECT park_code, typeno, price_weekend weekend,price_midweek midweek
FROM cottype_prices
WHERE price_midweek > (price_weekend * 1.2);
--
SELECT park_name parkcode, country_code
FROM parks
WHERE UPPER(country_code) IN ('1','2');
--
SELECT resno, park_code, typeno, houseno, status
FROM reservations
WHERE (typeno IS NULL OR houseno is null) AND (UPPER(status) IN ('BETAALD', 'OPEN'));
--	
SELECT clientno, last_name,first_name, street, houseno, postcode, city
FROM clients
WHERE postcode IN ('2060','2100', '2640');
--
SELECT clientno, last_name, first_name, street,houseno, postcode, city
FROM clients WHERE (houseno = '106' AND postcode = '2640') OR (city BETWEEN 'A' AND 'E');
--	
SELECT *  FROM cottype_prices WHERE price_midweek < 250 AND (price_extra_day IS NULL or price_extra_day < 30);
--
SELECT * FROM payments WHERE UPPER(payment_method) != 'O' AND payment_date < '1-feb-2020';
--
SELECT DISTINCT last_name
FROM clients
WHERE postcode = '2640'
ORDER BY clientno;
--	
SELECT *
FROM cottages
WHERE UPPER(park_code) = 'BF' AND UPPER(pet) = 'N' AND (UPPER(beach) = 'Y' OR beach IS NULL);
--	
SELECT UPPER(country_name) country
FROM countries
where UPPER(country_name) like 'N%'
order by 1;
--
SELECT last_name, first_name,  street 
FROM clients
WHERE UPPER(street) LIKE '%LAAN%';
--