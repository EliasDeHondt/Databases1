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
ALTER ROLE DBmaker PASSWORD '123'
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