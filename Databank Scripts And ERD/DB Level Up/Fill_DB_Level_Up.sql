-- ******************************
-- INSERT Attribuut
-- ******************************
-- Function
INSERT INTO function(
                     function_name,
                     description)
VALUES ('CEO', 'Can do what he wants. And does not have any obligations.');
INSERT INTO function(
                     function_name,
                     description)
VALUES ('Manager', 'Is responsible for the entire operation of the company.');
INSERT INTO function(
                     function_name,
                     description)
VALUES ('Regular staff','Is responsible for the flex staff and the students staff.');
INSERT INTO function(
                     function_name,
                     description)
VALUES ('Flex staff','Does not have any specific assignment.');
INSERT INTO function(
                     function_name,
                     description)
VALUES ('Student staff','Does not have any specific assignment.');
-- Tasks
INSERT INTO tasks(
    function_id,
    tasks_name,
    description)
VALUES (5,'Dishwasher','x');
INSERT INTO tasks(
    function_id,
    tasks_name,
    description)
VALUES (4,'Cook','x');
INSERT INTO tasks(
    function_id,
    tasks_name,
    description)
VALUES (3,'Cleaning','x');
INSERT INTO tasks(
    function_id,
    tasks_name,
    description)
VALUES (2,'ICT','x');
INSERT INTO tasks(
    function_id,
    tasks_name,
    description)
VALUES (1,'Finance','x');
-- Location
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (1,'Kattenbroek 33','Edegem','2560');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (1,'Olieslagerijstraat 19','Boechout','2530');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (1,'Huybergsebaan 164','Essen','2910');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (2,'Kattenbroek 33','Edegem','2560');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (2,'Olieslagerijstraat 19','Boechout','2530');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (2,'Huybergsebaan 164','Essen','2910');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (3,'Kattenbroek 33','Edegem','2560');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (3,'Olieslagerijstraat 19','Boechout','2530');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (3,'Huybergsebaan 164','Essen','2910');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (4,'Kattenbroek 33','Edegem','2560');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (4,'Olieslagerijstraat 19','Boechout','2530');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (4,'Huybergsebaan 164','Essen','2910');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (5,'Kattenbroek 33','Edegem','2560');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (5,'Olieslagerijstraat 19','Boechout','2530');
INSERT INTO location(
    function_id,
    street,
    city,
    postal_code)
VALUES (5,'Huybergsebaan 164','Essen','2910');
-- Employees
INSERT INTO employees(
    last_name,
    first_name,
    function_id,
    gender,
    salary,
    street,
    city,
    postal_code,
    birth_data)
VALUES ('Roel','De Cock',1,'M',5000,'x','Boechout','2530',to_date('08-04-1994', 'DD-MM-YYYY'));
INSERT INTO employees(
    last_name,
    first_name,
    function_id,
    gender,
    salary,
    street,
    city,
    postal_code,
    birth_data)
VALUES ('Jeroen','Colman',2,'M',4800,'x','x','x',to_date('10-11-1989', 'DD-MM-YYYY'));
INSERT INTO employees(
    last_name,
    first_name,
    function_id,
    gender,
    salary,
    street,
    city,
    postal_code,
    birth_data)
VALUES ('Jeroen','Wyseure',3,'M',2500,'x','x','x',to_date('25-12-1998', 'DD-MM-YYYY'));
INSERT INTO employees(
                      last_name,
                      first_name,
                      function_id,
                      gender,
                      salary,
                      street,
                      city,
                      postal_code,
                      birth_data)
VALUES ('Elias','De Hondt',2,'M',4500,'Pieter van Den Bemdenlaan 45','Edegem','2650',to_date('10-04-2001', 'DD-MM-YYYY'));