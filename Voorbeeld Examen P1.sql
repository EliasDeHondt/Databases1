-- *****************************************************************************************************************************
--Toon voor ALLE employees (behalve zij die 'Jochems' als baas hebben)
-- zowel de naam van hun manager,
-- en hun family_members en ook de relatie met die family_members
-- Sorteer je resultaat eerst volgens de familienaam van de baas, daarbinnen sorteer je op de familienaam van de employee.
-- Let er op dat de je exact de output (bv. aliasen, constanten en samenvoegingen) krijgt zoals hieronder getoond.
-- +-----------------+-------------+---------+-----------------+-------------------+
-- |Employee FullName|-->          |boss     |-->              |Family relation    |
-- +-----------------+-------------+---------+-----------------+-------------------+
-- |Jochems Suzan    |is managed by|Bordoloi |and is related to|Alex (Partner)     |
-- |Zuiderweg Willem |is managed by|Bordoloi |and is related to|Josefine (Daughter)|
-- |Zuiderweg Willem |is managed by|Bordoloi |and is related to|Andrew (Son)       |
-- |Zuiderweg Willem |is managed by|Bordoloi |and is related to|Suzan (Partner)    |
-- |Bock Douglas     |is managed by|Zuiderweg|and is related to|Jos (Son)          |
-- |Bock Douglas     |is managed by|Zuiderweg|and is related to|Diana (Daughter)   |
-- |Bock Douglas     |is managed by|Zuiderweg|and is related to|Mary (Partner)     |
-- |Joosten Dennis   |is managed by|Zuiderweg|and is related to|null               |
-- |Pregers Shanya   |is managed by|Zuiderweg|and is related to|null               |
-- |Bordoloi Bijoy   |is managed by|null     |and is related to|null               |
-- +-----------------+-------------+---------+-----------------+-------------------+
-- *****************************************************************************************************************************
SELECT concat(e.last_name, ' ', e.first_name)  AS "Employee FullName",
       concat(' is managed by ')               AS "-->",
       concat(bos.last_name)                   AS "boss",
       concat(' and is related to ')           AS "-->",
       concat('(', initcap(relationship), ')') AS "Family relation"
FROM employees e
         LEFT JOIN employees bos on bos.employee_id = e.manager_id
         LEFT JOIN family_members fm on e.employee_id = fm.employee_id
ORDER BY bos.last_name, e.last_name;
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
--Lijst de projecten op waarvoor het totaal aantal gewerkte uren meer dan 30 bedraagt, en toon
-- hoeveel medewerkers aan dit project hebben gewerkt (d.w.z. taken hebben uitgevoerd)
-- en de naam van het project
-- en de naam van de afdeling die dit project ondersteunt.
--Sorteer op projectnaam.
-- Zorg ervoor dat je precies de output krijgt zoals hieronder.
-- (bijv. 3 kolommen, aliassen, constanten en aaneenschakelingen)
-- +-----------+-------------------------------------+------------------------------------------+
-- |#employees |project                              |department                                |
-- +-----------+-------------------------------------+------------------------------------------+
-- |3 employees|perform tasks on Debtors             |which is supported by dept. Administration|
-- |3 employees|perform tasks on Inventory           |which is supported by dept. Administration|
-- |3 employees|perform tasks on Ordermanagement     |which is supported by dept. Production    |
-- |3 employees|perform tasks on Salaryadministration|which is supported by dept. Production    |
-- |2 employees|perform tasks on Warehouse           |which is supported by dept. Production    |
-- +-----------+-------------------------------------+------------------------------------------+
-- *****************************************************************************************************************************
SELECT count(t.employee_id) || ' employees'                AS "#employees",
       ' perform tasks on ' || p.project_name              AS "project",
       'which is supported by dept. ' || d.department_name AS "department"
FROM tasks t
         JOIN projects p ON t.project_id = p.project_id
         JOIN departments d ON p.department_id = d.department_id
GROUP BY t.project_id, p.project_name, d.department_name
HAVING sum(hours) > 30
ORDER BY project_name;
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- Geef voor ALLE projectlocaties, per locatie het totaal aantal gepresteerde uren.
-- Zorg voor een duidelijk zicht op de status van een project.
--  een project onder de 50 uren heefst status 'Project on time',
--  een project tussen de 50 en 80 uren heeft status 'Project takes longer than expected'
--  een project met meer dan 80 gepresteerde uren heeft status 'Project overdue'
-- LET op: tabelnaam, volgorde en verwoording in de voorbeeldtabel.
-- Gewenst resultaat:
-- location   |Totaal uren  |Project timing
-- -----------+-------------+----------------
-- Maastricht |  109.9      |Project overdue
-- Eindhoven  |  79.2       |Project takes longer than expected
-- Oegstgeest |  52.4       |Project takes longer than expected
-- Groningen  |  42.7       |Project on time
-- *****************************************************************************************************************************
SELECT p.location, SUM(t.hours) AS "Totaal uren",
CASE
    WHEN SUM(t.hours) < 50 THEN 'Project on time'
    WHEN SUM(t.hours) BETWEEN 50 AND 80 THEN 'Project takes longer than expected'
    WHEN SUM(t.hours) > 80 THEN 'Project overdue'
    END "Project timing"
FROM projects p JOIN tasks t on p.project_id = t.project_id GROUP BY p.location ORDER BY "Totaal uren" DESC;
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- Geef voor de medewerkers met een partner het leeftijdsverschil
-- weer en geef aan of de partner ouder of jonger is.
-- Gewenst resultaat:
-- First_name | last_name   | older/younger      | age difference
-- -----------+-------------+--------------------+--------------
-- Suzan      |  Jochems    | Partner is younger | -3
-- Willem     |  Zuiderweg  | Partner is older   |  0
-- Douglas    |  Bock       | Partner is older   |  1
-- *****************************************************************************************************************************
SELECT first_name, last_name,
CASE
    WHEN age(f.birth_date) < age(e.birth_date) THEN 'Partner is younger'
    WHEN  age(f.birth_date) > age(e.birth_date) THEN 'Partner is older'
    END "older/younger",
date_part('year',age(e.birth_date)-age(f.birth_date)) AS "age difference"
FROM employees e JOIN family_members f on e.employee_id = f.employee_id WHERE upper(relationship)='PARTNER' ORDER BY "age difference";
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- *****************************************************************************************************************************
-- Geef voor elk kind van een medewerker weer of zijn/haar leeftijdscategorie kind is (<18j) of volwassene (>=18j). Maak gebruik van CASE.
SELECT CASE WHEN date_part('year', age(birth_date)) < 18 THEN 'kind' ELSE 'volwassene' END
FROM FAMILY_MEMBERS;
-- *****************************************************************************************************************************
-- Geef de volledige namen van alle medewerkers. Zorg ervoor dat er niet teveel of te weinig blanco's staan. Om dit goed te kunnen zien vervang je na het samenstellen van de naam elke blanco door een schuine streep '/'.
SELECT replace(concat_ws(' ', first_name, infix, last_name), ' ', '\')
FROM employees;
-- *****************************************************************************************************************************
-- Toon voor alle medewerkers de voornaam van hun partner. Als een medewerker geen partner heeft toon je de text 'Single' in plaats van zijn/haar voornaam.
SELECT e.employee_id, CASE WHEN upper(relationship) = 'PARTNER' THEN name ELSE 'Single' END
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id AND upper(relationship) = 'PARTNER';
-- *****************************************************************************************************************************
-- Toon nu ook de geboortedatum van de partner en de voornaam van de oudste van de twee (de partner met de kleinste geboortedatum dus).
SELECT e.employee_id,
       CASE WHEN upper(relationship) = 'PARTNER' THEN name ELSE 'Single' END "partner_naam",
       CASE WHEN upper(relationship) = 'PARTNER' THEN f.birth_date END "partner_birth_date",
       CASE WHEN e.birth_date > f.birth_date THEN e.birth_date ELSE f.birth_date END "oudste"
FROM employees e
         LEFT JOIN family_members f ON e.employee_id = f.employee_id AND upper(relationship) = 'PARTNER';
-- *****************************************************************************************************************************