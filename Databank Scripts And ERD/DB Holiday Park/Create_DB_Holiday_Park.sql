DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS promotions;
DROP TABLE IF EXISTS cottages;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS cottype_prices;
DROP TABLE IF EXISTS cottageTypes;
DROP TABLE IF EXISTS parkattractions;
DROP TABLE IF EXISTS parkattractionTypes;
DROP TABLE IF EXISTS parks;
DROP TABLE IF EXISTS travelAgencies;
DROP TABLE IF EXISTS seasons;
DROP TABLE IF EXISTS countries;

CREATE TABLE seasons(
code NUMERIC(2) CONSTRAINT pk_seasons PRIMARY KEY,
description VARCHAR(30),
start_date DATE,
end_date DATE,
CONSTRAINT integr_seas_dates CHECK (end_date >= start_date));

CREATE TABLE parkattractionTypes(
attraction_code NUMERIC(4) CONSTRAINT pk_parkattracTypes PRIMARY KEY,
description VARCHAR(100));

CREATE TABLE countries(
country_code VARCHAR(3) CONSTRAINT pk_countries PRIMARY KEY,
country_name VARCHAR(50),
tel_code VARCHAR(4));

CREATE TABLE clients (
clientNo VARCHAR(5),
last_name VARCHAR(25) CONSTRAINT lastnm_caps CHECK(last_name = UPPER(last_name)),
first_name VARCHAR(25) CONSTRAINT firstnm_caps CHECK(first_name= UPPER(first_name)),
street VARCHAR(40) CONSTRAINT clientstreet_caps CHECK(street = UPPER(street)),
houseNo VARCHAR(5),
postcode VARCHAR(6) ,
city VARCHAR(20) CONSTRAINT city_caps CHECK(city = UPPER(city)),
status VARCHAR(10),
CONSTRAINT pk_client PRIMARY KEY (clientNo));

CREATE TABLE travelAgencies(
taNo NUMERIC(2),
ta_name VARCHAR(10) CONSTRAINT ta_name_caps CHECK (ta_name = UPPER(ta_name)),
street VARCHAR(40) CONSTRAINT ta_street_caps CHECK (street = UPPER(street)),
houseNo VARCHAR(5),
postcode VARCHAR(6) ,
city VARCHAR(20) CONSTRAINT ta_city_caps CHECK (city = UPPER(city)),
CONSTRAINT pk_travelagency PRIMARY KEY (taNo));

CREATE TABLE parks(
park_name VARCHAR(15) CONSTRAINT park_name_caps CHECK (park_name = UPPER(park_name)),
sport VARCHAR(9) ,
country_code VARCHAR(3) CONSTRAINT fk_parks_country_code REFERENCES countries(country_code),
code VARCHAR(2) CONSTRAINT code_caps CHECK (code = UPPER(code)),
CONSTRAINT pk_park PRIMARY KEY (code));

CREATE TABLE parkattractions(
park_code VARCHAR(2) CONSTRAINT fk_parkatt_parks REFERENCES parks(code),
attraction_code NUMERIC(4) CONSTRAINT fk_parkatt_parkattractype  REFERENCES parkattractionTypes(attraction_code),
CONSTRAINT pk_parkattractions PRIMARY KEY(park_code,attraction_code));

CREATE TABLE cottageTypes (
park_code VARCHAR(2) CONSTRAINT park_code_caps CHECK (park_code = UPPER(park_code)),
typeNo VARCHAR(4) CONSTRAINT typeNo_caps CHECK (typeNo = UPPER(typeNo)),
no_bedrooms NUMERIC(1),
no_persons NUMERIC(2),
no_bathrooms NUMERIC(1),
cot VARCHAR(1) CONSTRAINT dom__cottype_cot CHECK (UPPER(cot) in ('Y','N')),
comments VARCHAR(30),
wifi VARCHAR(1) CONSTRAINT dom_cottype_wifi CHECK(UPPER(wifi) IN ('Y','N')),
surface NUMERIC(3),
CONSTRAINT pk_cottype PRIMARY KEY (park_code,typeNo),
CONSTRAINT fk_cottype_park FOREIGN KEY (park_code) REFERENCES parks(code));

CREATE TABLE cottype_prices(
park_code VARCHAR(2) CONSTRAINT ctp_park_code_caps CHECK (park_code = UPPER(park_code)),
typeNo VARCHAR(4) CONSTRAINT ctp_typeNo_caps CHECK (typeNo = UPPER(typeNo)),
season_code NUMERIC(2) CONSTRAINT fk_ctp_seasons REFERENCES seasons(code),
price_weekend NUMERIC(5),
price_midweek NUMERIC(5),
price_extra_day NUMERIC(5),
CONSTRAINT pk_cottype_prices PRIMARY KEY(park_code,typeNo, season_code),
CONSTRAINT fk_ctp_cottageTypes FOREIGN KEY(park_code, typeNo) REFERENCES cottageTypes(park_code,typeNo));

CREATE TABLE cottages(
park_code VARCHAR(2) CONSTRAINT cott_park_code_caps CHECK (park_code = UPPER(park_code)), 
typeNo VARCHAR(4) CONSTRAINT cott_typeNo_caps CHECK (typeNo = UPPER(typeNo)),
houseNo NUMERIC(3),
corner VARCHAR(1) CONSTRAINT dom_corner CHECK (UPPER(corner) in ('Y','N')),
central VARCHAR(1) CONSTRAINT dom_central CHECK (UPPER(central) in ('Y','N')),
pet VARCHAR(1) CONSTRAINT dom_pet CHECK (UPPER(pet) in ('Y','N')),
quiet VARCHAR(1) CONSTRAINT dom_quiet CHECK (UPPER(quiet) in ('Y','N')),
playground VARCHAR(1) CONSTRAINT dom_playground CHECK (UPPER(playground) in ('Y','N')),
beach VARCHAR(1) CONSTRAINT dom_beach CHECK (UPPER(beach) in ('Y','N')),
CONSTRAINT pk_cottage PRIMARY KEY(park_code, typeNo,houseNo),
CONSTRAINT fk_cottage_cottype FOREIGN KEY (park_code,typeNo) REFERENCES cottageTypes(park_code, typeNo) ON DELETE CASCADE);

CREATE TABLE promotions(
promo_code VARCHAR(9) CONSTRAINT pk_promotions PRIMARY KEY,
percentage NUMERIC(3,1),
start_date DATE,
end_date DATE,
park_code VARCHAR(2),
typeNo VARCHAR(4),
CONSTRAINT fk_promo_cottype FOREIGN KEY(park_code,typeNo) REFERENCES cottageTypes(park_code, typeNo));

CREATE TABLE reservations(
resNo NUMERIC(4),
taNo NUMERIC(2),
clientNo VARCHAR(5),
park_code VARCHAR(2) CONSTRAINT res_park_code_caps CHECK (park_code = UPPER(park_code)), 
typeNo VARCHAR(5) CONSTRAINT res_typeNo_caps CHECK (typeNo = UPPER(typeNo)),
houseNo NUMERIC(3),
booking_date date,
start_date date,
end_date date,
reser_code NUMERIC(1) CONSTRAINT dom_reser_code CHECK(reser_code IN (1,2)),
status VARCHAR(6) CONSTRAINT dom_res_status CHECK (status in ('OPEN','PAID','CLOSED')),
promo_code VARCHAR(9),
CONSTRAINT integr_reserv_dates CHECK (end_date >= start_date),
CONSTRAINT pk_reservations PRIMARY KEY (resNo,taNo),
CONSTRAINT fk_res_ta FOREIGN KEY (taNo) REFERENCES travelAgencies(taNo) ON DELETE CASCADE,
CONSTRAINT fk_res_client FOREIGN KEY (clientNo) REFERENCES clients(clientNo), 
CONSTRAINT fk_res_cottype FOREIGN KEY (park_code,typeNo) REFERENCES cottageTypes(park_code,typeNo) on delete set null,
CONSTRAINT fk_res_cottage FOREIGN KEY (park_code,typeNo,houseNo) REFERENCES cottages(park_code,typeNo,houseNo) ON DELETE CASCADE,
CONSTRAINT fk_res_promo FOREIGN KEY(promo_code) REFERENCES promotions(promo_code));

CREATE TABLE payments(
paymentNo NUMERIC(9),
resNo NUMERIC(3),
taNo NUMERIC(2),
payment_date Date,
amount NUMERIC(8,2),
payment_method VARCHAR(1) CONSTRAINT dom_payment_method CHECK(payment_method IN ('V','M','O','B')),
CONSTRAINT pk_payments PRIMARY KEY(paymentNo),
CONSTRAINT fk_payment_reserv FOREIGN KEY (resNo, taNo) REFERENCES reservations(resNo,taNo));









