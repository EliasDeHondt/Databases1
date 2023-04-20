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