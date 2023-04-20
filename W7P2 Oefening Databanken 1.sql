--
CREATE table DEPARTMENTS(
    department_id CHAR(2) CONSTRAINT PK_DEPARTMENTS PRIMARY KEY,
    department_name VARCHAR(20) CONSTRAINT NOT NULL,
    manager_id CHAR(9),
    mgr_start_date DATE
);
--
CREATE table EMPLOYEES(
    employee_id CHAR(5) CONSTRAINT PK_EMPLOYEES PRIMARY KEY,
    last_name VARCHAR(25) CONSTRAINT NOT NULL,
    first_name VARCHAR(25) CONSTRAINT NOT NULL,
    infix VARCHAR(25),
    street VARCHAR(50),
    city VARCHAR(25),
    province CHAR(2),
    postalcode VARCHAR(7),
    birth_date DATE,
    salary NUMERIC(7,2) CONSTRAINT CHECK_salary CHECK(salary <= 85000.00),
    parking NUMERIC(4,0), -- kan maar aan 1 persoon toegekend worden(?).
    gender VARCHAR(50) CONSTRAINT NOT NULL,
    department_id CHAR(2) CONSTRAINT FK_DEPARTMENTS REFERENCES DEPARTMENTS(department_id),
    manager_id CHAR(5) CONSTRAINT FK_EMPLOYEES REFERENCES EMPLOYEES(employee_id) -- Verwijst naar employee_id in dezelfde tabel(?).
);
--
CREATE table PROJECTS(
    project_id CHAR(2) CONSTRAINT PK_project_id PRIMARY KEY,
    proj_name VARCHAR(25) CONSTRAINT NOT NULL,
    location VARCHAR(25),
    department_id CHAR(2) CONSTRAINT FK_DEPARTMENTS REFERENCES DEPARTMENTS(department_id)
);
--
CREATE table LOCATIONS(
    department_id CHAR(2) CONSTRAINT FK_DEPARTMENTS REFERENCES DEPARTMENTS(department_id),
    "location" VARCHAR(20) NOT NULL,
    CONSTRAINT PK_LOCATIONS PRIMARY KEY(department_id,"location")
);
--
CREATE table TASKS(
    employee_id CHAR(9) CONSTRAINT FK_EMPLOYEES REFERENCES EMPLOYEES(employee_id),
    project_id NUMERIC(2) CONSTRAINT FK_PROJECTS REFERENCES PROJECTS(project_id),
    "hours" NUMERIC(5,1),
    CONSTRAINT PK_TASKS PRIMARY KEY(employee_id,project_id)
);
--
CREATE table FAMILYMEMBERS(
    employee_id CHAR(5) CONSTRAINT FK_EMPLOYEES REFERENCES EMPLOYEES(employee_id) CONSTRAINT NOT NULL,
    "name" VARCHAR(50) CONSTRAINT NOT NULL,
    gender VARCHAR(50) CONSTRAINT NOT NULL,
    birth_date DATE CONSTRAINT CHACK_birth_date CHECK(birth_date BETWEEN '20-3-1950' AND '1-1-2018'),
    relationship VARCHAR(10) CONSTRAINT NOT NULL,
    CONSTRAINT PK_FAMILYMEMBERS PRIMARY KEY(employee_id,name)
);
--
CREATE table Travelagencies(
    tano NUMERIC(2) CONSTRAINT PK_Travelagencies PRIMARY KEY,
    ta_name VARCHAR(10) CONSTRAINT CHECK_ta_name CHECK (upper(ta_name)),
    street VARCHAR(40) CONSTRAINT CHECK_street1 CHECK (upper(street)),
    houseno VARCHAR(5),
    postcode VARCHAR(6),
    city VARCHAR(20) CONSTRAINT CHECK_city1 CHECK (upper(street))
);
--
CREATE table Clients(
    clientno VARCHAR(5) CONSTRAINT PK_Clients PRIMARY KEY,
    last_name VARCHAR(25) CONSTRAINT CHECK_last_name CHECK(upper(last_name)),
    first_name VARCHAR(25) CONSTRAINT CHECK_first_name CHECK(upper(first_name)),
    street VARCHAR(40) CONSTRAINT CHECK_street2 CHECK(upper(street)),
    houseno VARCHAR(5),
    postcode VARCHAR(6),
    city VARCHAR(20) CONSTRAINT CHECK_city2 CHECK(upper(city)),
    status VARCHAR(10)
);
--
CREATE table Parks(
    park_name VARCHAR(15),
    sport VARCHAR(9),
    country_code VARCHAR(3) CONSTRAINT FK_Countries REFERENCES Countries(country_code),
    code VARCHAR(2) CONSTRAINT PK_code1 PRIMARY KEY
);
--
CREATE table Seasons(
    code VARCHAR(2) CONSTRAINT PK_code1 PRIMARY KEY,
    description VARCHAR(30),
    start_date DATE,
    end_date DATE
);
--
CREATE table Parkattractiontypes(
    attraction_code NUMERIC(4) CONSTRAINT PK_Parkattractiontypes PRIMARY KEY,
    description VARCHAR(100)
);
--
CREATE table Countries(
    country_code VARCHAR(3) CONSTRAINT PK_Countries PRIMARY KEY,
    country_name VARCHAR(50),
    tel_code VARCHAR(4)
);
--
CREATE table Parkattractions(
    park_code VARCHAR(2) CONSTRAINT UNIQUE_park_code UNIQUE CONSTRAINT CHECK_park_code CHECK(upper(park_code)),
    attraction_code  VARCHAR(4) CONSTRAINT UNIQUE_attraction_code UNIQUE, --FK?
    CONSTRAINT PK_Parkattractions PRIMARY KEY(park_code,attraction_code)
);
--
CREATE table Cottagetypes(
    park_code VARCHAR(2) CONSTRAINT FK_Parkattractions1 REFERENCES Parkattractions(park_code),
    typeno VARCHAR(4) CONSTRAINT CHECK_typeeno CHECK(upper(typeno)) CONSTRAINT UNIQUE_typeeno UNIQUE, -- Dit nummer is enkel uniek binnen een park(?).
    no_bedrooms NUMERIC(1),
    no_persons NUMERIC(2),
    no_bathrooms NUMERIC(1),
    cot VARCHAR(1) CONSTRAINT CHECK_cot CHECK(cot ='Y' || cot = 'N'),
    wifi VARCHAR(1) CONSTRAINT CHECK_wifi CHECK(cot ='Y' || cot = 'N'),
    surface NUMERIC(3),
    CONSTRAINT PK_Cottagetypes PRIMARY KEY(park_code,typeno)
);
--
CREATE table Cottages(
    park_code VARCHAR(2) CONSTRAINT FK_Parkattractions2 REFERENCES Parkattractions(park_code),
    typeno VARCHAR(4) CONSTRAINT FK_Cottagetypes1 REFERENCES Cottagetypes(typeno), -- Dit nummer is enkel uniek binnen een park(?).
    houseno NUMERIC(3), -- Dit huisnummer is slechts uniek binnen dat park(?).
    corner VARCHAR(1) CONSTRAINT CHECK_corner CHECK(corner ='Y' || corner = 'N'),
    central VARCHAR(1) CONSTRAINT CHECK_central CHECK(central ='Y' || central = 'N'),
    pet VARCHAR(1) CONSTRAINT CHECK_pet CHECK(pet ='Y' || pet = 'N'),
    quitet VARCHAR(1) CONSTRAINT CHECK_quitet CHECK(quitet ='Y' || quitet = 'N'),
    playground VARCHAR(1) CONSTRAINT CHECK_playground CHECK(playground ='Y' || playground = 'N'),
    beach VARCHAR(1) CONSTRAINT CHECK_beach CHECK(beach ='Y' || beach = 'N'),
    CONSTRAINT PK_Cottages PRIMARY KEY(park_code,typeno,houseno)
);
--
CREATE table Reservations(
    resno NUMERIC(4),
    tano NUMERIC(2) CONSTRAINT FK_Travelagencies1 REFERENCES Travelagencies(tano) ON DELETE SET NULL,
    clientno VARCHAR(5) CONSTRAINT FK_Clients REFERENCES Clients(clientno),
    park_code VARCHAR(2) CONSTRAINT FK_Parkattractions3 REFERENCES Parkattractions(park_code),
    typeno VARCHAR(4) CONSTRAINT FK_Cottagetypes2 REFERENCES Cottagetypes(typeno) ON DELETE SET NULL, -- Dit nummer is enkel uniek binnen een park(?).
    houseno NUMERIC(3) CONSTRAINT FK_Cottages REFERENCES Cottages(park_code,typeno,houseno) ON DELETE CASCADE, -- Dit huisnummer is slechts uniek binnen dat park(?).
    booking_date DATE,
    start_date DATE,
    end_date DATE CONSTRAINT CHECK_end_date1 CHECK(end_date > start_date),
    reser_code NUMERIC(1) CONSTRAINT CHECK_reser_code CHECK(CASE WHEN reser_code != 1 || 2 THEN reser_code IS NULL END),
    status VARCHAR(6) CONSTRAINT CHECK_status CHECK(status IN ('OPEN','BETAALD','GESLOTEN’')),
    promo_code VARCHAR(9) CONSTRAINT FK_Promotions REFERENCES Promotions(promo_code),
    CONSTRAINT PK_Reservations PRIMARY KEY(resno,tano)
);
--
CREATE table Cottype_prices(
    park_code VARCHAR(2) CONSTRAINT FK_Parkattractions4 REFERENCES Parkattractions(park_code),
    typeno VARCHAR(5) CONSTRAINT FK_Cottagetypes3 REFERENCES Cottagetypes(typeno),
    season_code NUMERIC(2) CONSTRAINT FK_Seasons REFERENCES Seasons(code),
    price_weekend NUMERIC(5),
    price_midweek NUMERIC(5),
    price_extra_day NUMERIC(5)
);
--
CREATE table Promotions(
    promo_code VARCHAR(9) CONSTRAINT PK_Promotions PRIMARY KEY,
    percentage NUMERIC(3,1),
    start_date DATE,
    end_date DATE CONSTRAINT CHECK_end_date2 CHECK(end_date > start_date),
    park_code VARCHAR(2) CONSTRAINT FK_Parkattractions5 REFERENCES Parkattractions(park_code),
    typeno VARCHAR(4) CONSTRAINT FK_Cottagetypes4 REFERENCES Cottagetypes(typeno)
);
--
CREATE table Payments(
    paymentno NUMERIC(9) CONSTRAINT PK_Payments PRIMARY KEY,
    resno NUMERIC(3) CONSTRAINT FK_Reservations REFERENCES Reservations(resno),
    tano NUMERIC(2) CONSTRAINT FK_Travelagencies2 REFERENCES Travelagencies(tano),
    payment_date DATE,
    amount NUMERIC(8,2),
    payment_method VARCHAR(1) CONSTRAINT CHECK_payment_method CHECK (payment_method IN ('V','M','O','B'))
);
--
--  1. Creeer een tabel "students" met volgende attributen:
-- student_id:		10 karakters
-- name: 		    een variabel aantal karakters (maximum 50)
-- street: 		    een variabel aantal karakters (maximum 100)
-- nr: 			    een getal van maximum 4 cijfers
-- postalcode: 		een getal van 4 cijfers
-- city: 			een variabel aantal karakters (maximum 30)
-- birth_date: 		een datum
--
CREATE TABLE students (
    student_id CHAR(10),
    "name" VARCHAR(50),
    street VARCHAR(100),
    nr VARCHAR(4),
    postalcode CHAR(4),
    city VARCHAR(30),
    birth_date DATE);
--
SELECT * FROM students; -- Verifieer dat dit gelukt is.
--
DROP TABLE IF EXISTS students; -- Query om te tabel te verwijderen.
--
-- 2. Pas nu je code aan zodat volgende beperkingen van toepassing zijn:
-- Alle velden moeten ingevuld worden.
-- student_id: 		is de primaire sleutel
-- nr: 			    moet groter zijn dan 0
-- postalcode: 		moet tussen 1000 en 9999 liggen
-- birth_date: 		moet vóór vandaag liggen
--
CREATE TABLE students (
    student_id CHAR(10) CONSTRAINT PK_students PRIMARY KEY, name VARCHAR(50),
    street VARCHAR(100),
    nr VARCHAR(4) CONSTRAINT nr_CHECK CHECK(nr > 0),
    postalcode CHAR(4) CONSTRAINT postalcode_CHECK CHECK(postalcode BETWEEN 1000 AND 9999), city VARCHAR(30),
    birth_date DATE CONSTRAINT birth_date_CHECK CHECK(birth_date <= current_date));
--
SELECT * FROM students; -- Verifieer dat dit gelukt is.
--
DROP TABLE IF EXISTS students; -- Query om te tabel te verwijderen.
--
-- 3. Creëer een tabel "classes" met volgende attributen:
-- class_id: 		getal van hoogstens 4 cijfers
-- building: 		2 letters
-- floor: 			1 fixed character
-- roomnumber: 	    2 cijfers
--
CREATE TABLE classes (
    class_id VARCHAR(4),
    building CHAR(2),
    floor CHAR(1),
    roomnumber CHAR(2));
--
SELECT * FROM classes; -- Verifieer dat dit gelukt is.
--
DROP TABLE IF EXISTS classes; -- Query om te tabel te verwijderen.
--
-- 4. Pas nu je code aan zodat volgende beperkingen van toepassing zijn:
-- Alle velden moeten ingevuld worden.
-- class_id: 		is de primaire sleutel
-- building: 		moet 1 van deze waarden zijn: "GR", "PH" of "SW"
-- floor: 			moet positief zijn en mag niet groter zijn dan 5
-- roomnumber: 	    moet positief zijn
--
CREATE TABLE classes (
    class_id VARCHAR(4) CONSTRAINT PK_classes PRIMARY KEY,
    building CHAR(2) CONSTRAINT building_CHECK CHECK(building IN ('GR','PH','SW')),
    floor CHAR(1) CONSTRAINT floor_CHECK CHECK(floor >= 0 AND floor <= 5),
    roomnumber CHAR(2) CONSTRAINT roomnumber_CHAR CHECK(roomnumber >= 0));
--
SELECT * FROM classes; -- Verifieer dat dit gelukt is.
--
DROP TABLE IF EXISTS classes; -- Query om te tabel te verwijderen.
--
-- 5. Creëer een tabel "students_classes" met volgende attributen:
-- studentnumber: 	10 karakters
-- classnumber: 	getal van hoogstens 4 cijfers
--
CREATE TABLE students_classes(
    studentnumber CHAR(10),
    classnumber VARCHAR(4));
--
SELECT * FROM students_classes; -- Verifieer dat dit gelukt is.
--
DROP TABLE IF EXISTS students_classes; -- Query om te tabel te verwijderen.
--
-- 6. Pas nu je code aan zodat volgende beperkingen van toepassing zijn:
-- studentnumber: 	is een vreemde sleutel die verwijst naar student_id in students
-- classnumber: 	is een vreemde sleutel die verwijst naar class_id in classes
-- studentnumber en classnumber vormen samen een primaire sleutel
-- als een student verwijderd wordt, dan moeten de bijbehorende rijen in deze tabel ook verwijderd worden
-- als een klas verwijderd wordt, dan mag dat alleen als er geen rijen zijn in deze tabel die ernaar verwijzen
--
CREATE TABLE students_classes(
    studentnumber CHAR(10) CONSTRAINT FK_students REFERENCES students(student_id) ON DELETE CASCADE,
    classnumber VARCHAR(4) CONSTRAINT FK_classes REFERENCES classes(class_id), CONSTRAINT PK_students_classes PRIMARY KEY(studentnumber, classnumber));
--
SELECT * FROM students_classes; -- Verifieer dat dit gelukt is.
--
DROP TABLE IF EXISTS students_classes; -- Query om te tabel te verwijderen.
--