-- DE TABELLEN VULLEN MET GEGEVENS
DELETE FROM tasks;
DELETE FROM projects;
DELETE FROM locations;
DELETE FROM family_members;
DELETE FROM employees;
DELETE FROM departments;
-- Rijen van de tabel departments.  Het SOFI-nummer van de afdelingsmanager
-- en de datum van indiensttreding zijn null.
INSERT INTO departments(department_id,department_name,manager_id,mgr_start_date)
VALUES (7, 'Production', NULL, NULL );
INSERT INTO departments(department_id,department_name,manager_id,mgr_start_date) 
VALUES (3, 'Administration', NULL, NULL);
INSERT INTO departments(department_id,department_name,manager_id,mgr_start_date)
VALUES (1, 'Headquarters', NULL, NULL );

-- Rijen van de tabel locations.  
INSERT INTO locations (department_id,location)
VALUES (1, 'Eindhoven');
INSERT INTO locations (department_id,location)
VALUES (3, 'Maastricht');
INSERT INTO locations (department_id,location)
VALUES (7, 'Oegstgeest');
INSERT INTO locations (department_id,location)
VALUES (7, 'Groningen');
INSERT INTO locations (department_id,location)
VALUES (7, 'Eindhoven');

-- Rijen van de tabel projects.
INSERT INTO projects (project_id,project_name,location,department_id)
VALUES (1, 'Ordermanagement', 'Oegstgeest', 7);
INSERT INTO projects (project_id,project_name,location,department_id)
VALUES (2, 'Salaryadministration', 'Groningen', 7);
INSERT INTO projects (project_id,project_name,location,department_id)
VALUES (3, 'Warehouse', 'Eindhoven', 7);
INSERT INTO projects (project_id,project_name,location,department_id)
VALUES (10, 'Inventory', 'Maastricht', 3);
INSERT INTO projects (project_id,project_name,location,department_id)
VALUES (20, 'HumanResources', 'Eindhoven', 1);
INSERT INTO projects (project_id,project_name,location,department_id)
VALUES (30, 'Debtors', 'Maastricht', 3);

-- Rijen van de tabel employees.
INSERT INTO employees ( employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999666666', 'Bordoloi', 'Bijoy', NULL, 
    'Zuidelijke Rondweg 12', 'Eindhoven', 'NB', '6202 EK', 
    TO_DATE ('10-11-1977', 'DD-MM-YYYY'), 55000, 1, 'M', 1, NULL );  
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999555555', 'Jochems', 'Suzan', 
    NULL, 'Nuthseweg 17', 'maastricht', 'LI', '9394 LR',
    TO_DATE('20-06-1981', 'DD-MM-YYYY'), 43000, 3, 'F', 
    3, '999666666' ); 
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999444444', 'Zuiderweg', 'Willem',
    NULL, 'Lindberghdreef 303', 'Oegstgeest', 'ZH', '2340 RV',  
    TO_DATE('12-08-1985', 'DD-MM-YYYY'), 43000, 32, 'M', 
    7, '999666666' ); 
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999887777', 'Muiden', 'Martina',
    'van der', 'Hoofdstraat 14', 'Maarssen', 'UT', '9394 LM',  
    TO_DATE('19-07-1988', 'DD-MM-YYYY'), 25000, 402, 'F', 
    3, '999555555' ); 
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES( '999222222', 'Amelsvoort', 'Henk', 
    'van', 'Zeestraat 14', 'Maastricht', 'LI', '9394 MK',
    TO_DATE('29-03-1979', 'DD-MM-YYYY'), 25000, 422, 'M', 
    3, '999555555' ); 
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999111111', 'Bock', 'Douglas', 
    NULL, 'Monteverdidreef 2', 'Oegstgeest', 'ZH', '6312 CB',
    TO_DATE('01-09-1965', 'DD-MM-YYYY'), 30000, 542, 'M', 
    7, '999444444' ); 
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999333333', 'Joosten', 'Dennis',
    NULL, 'Eikenstraat 10', 'Groningen', 'GR', '6623 HK',
    TO_DATE('15-09-1982', 'DD-MM-YYYY'), 38000, 332, 'M', 
    7, '999444444' ); 
INSERT INTO employees (employee_id,last_name,first_name,infix,street,location,province,postal_code,birth_date,salary,parking_spot,gender,department_id,manager_id)
VALUES ( '999888888', 'Pregers', 'Shanya',
    NULL, 'Overtoomweg 44', 'Eindhoven', 'NB', '6202 MR',
    TO_DATE('31-07-1982', 'DD-MM-YYYY'), 25000, 296, 'F', 
    7, '999444444' ); 

-- Rijen van de tabel tasks.
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999111111', 1, 31.4);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999111111', 2, 8.5);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999333333', 3, 42.1);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999888888', 1, 21.0);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999888888', 2, 22.0);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999444444', 2, 12.2);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999444444', 3, 10.5);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999444444', 1, NULL);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999444444', 10, 10.1);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999444444', 20, 11.8);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999887777', 30, 30.8);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999887777', 10, 10.2);
INSERT INTO tasks (employee_id,project_id,hours)
VALUES ( '999222222', 10, 34.5);
INSERT INTO tasks (employee_id,project_id,hours) 
VALUES ( '999222222', 30, 5.1);
INSERT INTO tasks (employee_id,project_id,hours) 
VALUES ( '999555555', 30, 19.2);
INSERT INTO tasks (employee_id,project_id,hours) 
VALUES ( '999555555', 20, 14.8);
INSERT INTO tasks (employee_id,project_id,hours) 
VALUES ( '999666666', 20, NULL);

-- rijen van de tabel family_members
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999444444', 'Josefine', 'F',  
    TO_DATE ('04-05-2006', 'DD-MM-YYYY'), 'DAUGHTER');
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999444444', 'Andrew', 'M',  
    TO_DATE('25-10-2008', 'DD-MM-YYYY'), 'SON');
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999444444', 'Suzan', 'F', 
    TO_DATE('05-03-1985', 'DD-MM-YYYY'), 'PARTNER');
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999555555', 'Alex', 'M',  
    TO_DATE('28-02-1978', 'DD-MM-YYYY'), 'PARTNER');
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999111111', 'Jos', 'M',  
    TO_DATE('01-01-1988', 'DD-MM-YYYY'), 'SON');
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999111111', 'Diana', 'F',  
    TO_DATE ('31-12-1988', 'DD-MM-YYYY'), 'DAUGHTER');
INSERT INTO family_members (employee_id,name,gender,birth_date,relationship)
VALUES ( '999111111', 'Mary', 'F',  
    TO_DATE('05-05-1967', 'DD-MM-YYYY'), 'PARTNER');

-- Werk de rijen van de tabel departments bij met het SOFI-nummer
-- van de manager en diens datum indiensttreding.
UPDATE departments SET manager_id = '999444444', 
    mgr_start_date = TO_DATE ('22-05-2008', 'DD-MM-YYYY')
    WHERE department_id = '7';       
UPDATE departments SET manager_id = '999555555', 
    mgr_start_date = TO_DATE ('01-01-2011', 'DD-MM-YYYY')
    WHERE department_id = '3';       
UPDATE departments SET manager_id = '999666666', 
    mgr_start_date = TO_DATE ('19-06-2001', 'DD-MM-YYYY')
    WHERE department_id = '1';       

-- Tel de rijen van de tabel als controle of het script correct werkt.
SELECT COUNT(*) "Telling departments is 3" FROM departments;
SELECT COUNT(*) "Telling locations is 5" FROM locations;
SELECT COUNT(*) "Telling projects is 6" FROM projects;
SELECT COUNT(*) "Telling employees is 8" FROM employees;
SELECT COUNT(*) "Telling tasks is 17" FROM tasks;
SELECT COUNT(*) "Telling family_members is 7" FROM family_members;

-- Einde van het script                                          
