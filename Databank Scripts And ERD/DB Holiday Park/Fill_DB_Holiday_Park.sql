DELETE FROM payments;
DELETE FROM reservations;
DELETE FROM promotions;
DELETE FROM cottages;
DELETE FROM cottype_prices;
DELETE FROM cottageTypes;
DELETE FROM parkattractions;
DELETE FROM parks;
DELETE FROM seasons;
DELETE FROM travelAgencies;
DELETE FROM clients;
DELETE FROM parkattractionTypes;
DELETE FROM countries;

INSERT INTO countries(country_code, country_name, tel_code)
VALUES (1,'Belgium','32');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (2,'Netherlands','31');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (3,'France','33');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (4,'Germany','37');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (5,'Luxembourg','352');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (6,'United Kingdom','44');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (7,'Italy','39');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (8,'Cayman Islands','1345');
INSERT INTO countries(country_code, country_name, tel_code)
VALUES (9,'Norway','47');
COMMIT;

INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (1, 'Fishpond');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (2, 'Recreational lake');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (3, 'Subtropical swimming paradise');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (4, 'Bike rental');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (5, 'By the sea');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (6, 'Middle of forest');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (7, 'Cycling routes');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (8, 'Large groups');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (9, 'Peacefully');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (10, 'Golf course');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (11, 'Spa / beauty center');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (12, 'Sauna');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (13, 'Free Wifi');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (14, 'Vibrant Family Park');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (15, 'Electric Car Charging Station');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (16, 'Supermarket');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (17, 'Scooter rental');
INSERT INTO parkattractionTypes(attraction_code, description)
VALUES (18, 'Child wagon rental');
COMMIT;

INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (34560,'BOSMANS', 'MARCEL','DANASTRAAT', '106','2100', 'DEURNE',NULL);                                                           
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status) 
VALUES (44060,'BORMS', 'WILLY','KWIKSTRAAT', '32','2060', 'MERKSEM',NULL);                                                              
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (60123,'VAN DORST', 'ANDRE','VELDSTRAAT', '11','2130', 'BRASSCHAAT',NULL);                                                       
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (13440,'HELLEMANS', 'RUDY','PIERSTRAAT', '270','2550', 'KONTICH',NULL);                                                          
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (22123,'GOOVAERTS', 'HERMAN','LEOPOLDPLEIN', '2','2500', 'LIER',NULL);                                                           
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (77777,'SUDERMAN', 'LEO','NATIONALESTRAAT', '10','2000','ANTWERPEN',NULL);                                                                                      
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (11111,'NIEMAND', 'NATHALIE','PLEZANTSTRAAT', '14B','2000','ANTWERPEN',NULL);                                                   
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (66040,'BORMS', 'WALLY','ANTWERPSESTRAAT', '60','2640', 'MORTSEL',NULL);                                                                
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (54321,'VERHELST', 'JAN','MORTSELSESTEENWEG', '104','2540','HOVE',NULL);   
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (25875,'PIJL','EDDY','AUGUST VAN PUTLEI','146','2150','BORSBEEK',null);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (25877,'VOCHTEN','BART','MAAIKENVELD','7','2500','LIER',null);
INSERT INTO clients VALUES (30112,'BOSMANS', 'JOS','ALEXANDER FRANCKSTRAAT', '6','2530', 'BOECHOUT',NULL);                                                           
INSERT INTO clients VALUES (1500,'BORREMANS', 'EDDY','KWIKSTRAAT', '4','3078', 'EVERBERG',NULL);                                                           
INSERT INTO clients VALUES (430,'ABESSI', 'HASSAN','VELDSTRAAT', '11','9000', 'GENT',NULL);                                                       
INSERT INTO clients VALUES (31601,'HOEVENAERS', 'GEERT','LENNEKE MARELAAN', '12A','1932', 'SINT STEVENS WOLUWE',NULL);     
INSERT INTO clients VALUES (14354,'GOOVAERTS', 'BRUNO','JAN FRANS WILLEMSTRAAT', '2','1800', 'VILVOORDE',NULL);     
INSERT INTO clients VALUES (10733,'BONTRIDDER', 'EDDY','PADDESCHOOTDREEF', '10','9100','SINT NIKLAAS',NULL);         
INSERT INTO clients VALUES (11744,'NIEMAND', 'ROSALIE','KETTERMUITSTRAAT', '14','9100','SINT NIKLAAS',NULL);
INSERT INTO clients VALUES (26811,'CORNELIS', 'NATHALIE','PLEZANTSTRAAT', '26','9100', 'SINT NIKLAAS',NULL);
INSERT INTO clients VALUES (74420,'VANDERKEILEN', 'BART','VORTEKOESTRAAT', '104','9160','WAASMUNSTER',NULL); 
INSERT INTO clients VALUES (15201,'JILALI' ,'MAROUAN','MARCEL THIRYLAAN', '10','1200','ST LAMBRECHTS WOLUWE',NULL);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (75798,'VANDER LINDEN', 'FRANK','OEDENKOVENSTRAAT', '72','2140', 'BORGERHOUT',NULL);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (29107,'VANDERHEYDEN', 'TOON','SCHOTERWEG', '98','3980', 'TESSENDERLO',NULL);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (30061,'GOEDGEZELSCHAP', 'CHARLOTTE','REGENBOOGLAAN', '33','2070', 'ZWIJNDRECHT',NULL);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (98123,'JANSSENS', 'LAURENT','DRABSTRAAT', '106','2640', 'MORTSEL',NULL);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (61578,'STOOT', 'PIETER','HOOGSTRAAT', '12','2000', 'ANTWERPEN',NULL);
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (23401,'PROOST', 'BART','GIERLESEWEG', '2','2340','BEERSE',NULL); 
INSERT INTO clients (clientNo,last_name,first_name, street, houseNo, postcode, city, status)
VALUES (23101,'MEYERS', 'LISE','HELLEHOEKWEG', '7','2310','RIJKEVORSEL',NULL); 
COMMIT;

INSERT INTO travelAgencies (taNo, ta_name, street, houseNo, postcode, city)
VALUES (1,'VTB/VAB','ST. JACOBSMARKT', '25', '2000', 'ANTWERPEN');                                                                   
INSERT INTO travelAgencies (taNo, ta_name, street, houseNo, postcode, city)
VALUES (2,'SUNSNACK','TER HULPSE STEENWEG', '46', '1050', 'BRUSSEL');                                                                
INSERT INTO travelAgencies (taNo, ta_name, street, houseNo, postcode, city)
VALUES (3,'NECKERMANN','NATIONALESTRAAT', '101', '2000', 'ANTWERPEN');                                                               
INSERT INTO travelAgencies (taNo, ta_name, street, houseNo, postcode, city)
VALUES (4,'TRAVEL','KERKPLEIN', '7','2600','BERCHEM');                                                                                                     
INSERT INTO travelAgencies (taNo, ta_name, street, houseNo, postcode, city)
VALUES (5,'CLUBMED','HERMELIJNLAAN','20 ','2900','SCHOTEN');        
INSERT INTO travelAgencies (taNo, ta_name, street, houseNo, postcode, city)
VALUES (6,'TES_TRAVEL','MARKT', '13', '3980', 'TESSENDERLO');                                                                   
COMMIT;

INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('1','Summer holidays 2020',to_date('01/07/20','DD/MM/YY'),to_date('31/08/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('2','Autumn holidays 2020',to_date('28/10/20','DD/MM/YY'),to_date('03/11/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('3','Christmas holidays 2020',to_date('23/12/20','DD/MM/YY'),to_date('05/01/21','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('4','Easter holidays 2020',to_date('08/04/20','DD/MM/YY'),to_date('22/04/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('5','Off-season1 2020',to_date('01/01/20','DD/MM/YY'),to_date('07/04/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('6','Off-season2 2020',to_date('04/11/20','DD/MM/YY'),to_date('22/12/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('7','Mid season1 2020',to_date('16/04/20','DD/MM/YY'),to_date('30/06/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('8','Mid season2 2020',to_date('01/09/20','DD/MM/YY'),to_date('27/10/20','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('9','Off-season1 2021',to_date('06/01/21','DD/MM/YY'),to_date('05/04/21','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('10','Easter holidays 2021',to_date('06/04/21','DD/MM/YY'),to_date('19/04/21','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('11','Mid season1 2021',to_date('20/04/21','DD/MM/YY'),to_date('30/06/21','DD/MM/YY'));
INSERT INTO seasons (CODE,description,start_date,end_date) VALUES ('12','Summer Holidays 2021',to_date('01/07/21','DD/MM/YY'),to_date('31/08/21','DD/MM/YY'));
COMMIT;

INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('HET VENNENBOS','TFPSQ  HA','2','VB');                                                                         
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('DE LOMMERBERGEN','T P   K A','2','LB');                                                                          
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('HET MEERDAL','T PS  K A','2','MD');                                                                
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('SHERWOOD FOREST','TFPSQ KHA','6','SF');                                                                       
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('LES BOIS FRANCS','TFPSQVK A','3','BF');                                                                      
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('ERPERHEIDE','TFP QV HA','1','EP');                                                                            
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('SAFARI',' F SQV  A','2','SA');                                                                               
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('FENIX','TF   VKHA','2','FX');                                                                                  
INSERT INTO parks (park_name,sport,country_code,code)
VALUES ('DE VOSSEMEREN','TFP   KHA','2','FE'); 
INSERT INTO parks (park_name,sport,country_code,code)
VALUES('WEERTERBERGEN','TF   VKHA','2','WB');
COMMIT;

INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',2);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',3);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',4);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',6);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',8);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',14);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',15);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',16);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',17);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('WB',18);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',3);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',4);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',6);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',7);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',9);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',11);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('VB',18);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',3);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',4);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',6);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',7);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',9);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',11);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('LB',12);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',2);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',3);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',6);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',7);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',9);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',11);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('MD',12);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',3);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',4);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',6);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',7);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',9);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',10);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('SF',11);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',3);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',4);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',6);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',7);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',9);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',11);
INSERT INTO parkattractions(park_code, attraction_code)
VALUES('EP',12);
COMMIT;

INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons, no_bathrooms,cot,comments,wifi,surface)
VALUES ('WB','WF',2,6,1,'Y',NULL,'Y',70);     
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('VB','22',2,6,1,'Y',NULL,'Y',70);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('VB','23',2,6,1,'Y',NULL,'Y',70);                                                          
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons, no_bathrooms,cot,comments,wifi,surface)
VALUES ('VB','24',3,7,1,'Y',NULL,'Y',70);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('LB','11',2,5,1,'Y',NULL,'Y',70);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons, no_bathrooms,cot,comments,wifi,surface)
VALUES ('LB','12',1,3,1,'N',NULL,'Y',63);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('LB','13',2,6,1,'Y',NULL,'Y',70);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('LB','14',2,6,1,'Y',NULL,'Y',70);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('LB','15',1,2,1,'N',NULL,'Y',63);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('LB','16',4,10,2,'Y',NULL,'Y',148);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('MD','31',2,6,1,'Y',NULL,'Y',70);                                                    
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('MD','32',2,6,1,'Y',NULL,'Y',70);                                                     
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('MD','33',3,7,1,'Y',NULL,'Y',70);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('MD','34',2,6,1,'Y',NULL,'Y',70);                                                        
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('VB','25',null,0,1,'Y',NULL,'Y',50);                                                  
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot, comments,wifi,surface)
VALUES ('MD','35',3,8,1,'Y',NULL,'Y',89);                                                          
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms,cot,comments,wifi,surface)
VALUES ('MD','36',2,6,1,'Y',NULL,'Y',70);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('MD','37',4,10,2,'Y',NULL,'Y',148);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('SF','11',4,10,2,'Y',NULL,'Y',148);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('SF','12',3,8,1,'Y',NULL,'Y',89);                                                    
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('SF','13',2,5,1,'Y',NULL,'Y',70);                                                     
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('SF','14',1,2,1,'N',NULL,'Y',63);                                                        
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('BF','61',4,10,2,'Y',NULL,'Y',148);                                                   
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('BF','62',3,8,2,'Y',NULL,'Y',89);                                                    
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('BF','63',2,5,1,'Y',NULL,'Y',70);                                                      
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('EP','81',3,8,2,'Y',NULL,'Y',89);                                                    
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('EP','82',1,2,1,'N',NULL,'Y',63);                                                           
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('EP','83',2,3,1,'N',NULL,'Y',70);                                                       
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('EP','84',2,6,1,'Y',NULL,'Y',70);                                                        
INSERT INTO cottageTypes (park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES ('VB','21',2,6,1,'Y',NULL,'Y',70);  
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','BC',2,4,1,'Y',NULL,'Y',63);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FC',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','V',3,6,1,'Y',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FM',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FK',3,6,1,'Y',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','VK',3,6,1,'Y',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FL',3,6,1,'Y',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','BJ',2,4,1,'Y',NULL,'Y',63);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FV10',4,10,3,'Y',NULL,'Y',148);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FV14',5,14,3,'Y',NULL,'Y',176);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FV18',7,18,5,'Y',NULL,'Y',235);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FV24',9,24,5,'Y',NULL,'Y',335);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','VC',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FMC',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','VKC',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FKC',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','BJC',2,4,1,'Y',NULL,'Y',63);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','FJC',3,6,1,'N',NULL,'Y',70);
INSERT INTO cottageTypes(park_code,typeNo,no_bedrooms, no_persons,no_bathrooms, cot,comments,wifi,surface)
VALUES('WB','ZL',4,8,2,'Y',NULL,'Y',89);
COMMIT;

/* prices for summer season: season 1 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC',1,129,129,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC',1,139,139,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V',1,139,139,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM',1,149,129,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK',1,159,139,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK',1,169,139,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL',1,169,149,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ',1,360,203,109);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10',1,719,520,209);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14',1,839,585,299);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18',1,1209,895,509);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24',1,1309,1009,609);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC',1,149, 129,79);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC',1,375, 203,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC',1,350, 214,169);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC',1,360, 240,179);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC',1,360, 203,189);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC',1,375, 214,204);
/* prices for autumn season: season 2 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC',2,285,285,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC',2,305,305,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V',2,325,325,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM',2,335,335,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK',2,305,305,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK',2,320,320,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL',2,320,320,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ',2,360,203,109);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10',2,1020,1020,409);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14',2,1125,1125,399);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18',2,1665,1665,509);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24',2,2000,2000,609);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC',2,340, 340,79);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC',2,375, 203,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC',2,350, 214,169);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC',2,480, 480,279);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC',2,290, 290,189);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC',2,305, 305,204);
/* prices for Christmas season: season 3 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC',3,285,285,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC',3,305,305,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V',3,325,325,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM',3,335,335,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK',3,305,305,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK',3,320,320,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL',3,320,320,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ',3,360,203,109);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10',3,1020,1020,409);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14',3,1125,1125,399);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18',3,1665,1665,509);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24',3,2000,2000,609);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC',3,340, 340,79);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC',3,375, 203,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC',3,350, 214,169);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC',3,480, 480,279);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC',3,290, 290,189);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC',3,305, 305,204);
/* prices for Easter season: season 4 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC',4,285,285,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC',4,305,305,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V',4,325,325,139);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM',4,335,335,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK',4,305,305,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK',4,320,320,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL',4,320,320,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ',4,360,203,109);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10',4,1020,1020,409);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14',4,1125,1125,399);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18',4,1665,1665,509);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24',4,2000,2000,609);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC',4,340, 340,79);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC',4,375, 203,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC',4,350, 214,169);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC',4,480, 480,279);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC',4,290, 290,189);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC',4,305, 305,204);
/* prices for off-season 1: jan to march = season 5 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC',5,129,129,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC',5,139,139,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V',5,139,139,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM',5,149,129,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK',5,159,139,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK',5,169,139,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL',5,169,149,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ',5,360,203,109);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10',5,719,520,209);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14',5,839,585,299);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18',5,1209,895,509);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24',5,1309,1009,609);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC',5,149, 129,79);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC',5,375, 203,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC',5,350, 214,169);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC',5,360, 240,179);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC',5,360, 203,189);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC',5,375, 214,204);
/* prices for off-season 2: season 6 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC',6,129,129,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC',6,139,139,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V',6,139,139,39);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM',6,149,129,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK',6,159,139,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK',6,169,139,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL',6,169,149,49);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ',6,360,203,109);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10',6,719,520,209);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14',6,839,585,299);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18',6,1209,895,509);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24',6,1309,1009,609);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC',6,149, 129,79);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC',6,375, 203,149);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC',6,350, 214,169);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC',6,360, 240,179);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC',6,360, 203,189);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC',6,375, 214,204);
/* prices for mid-season 1: season 7 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC', 7,172.86,193.5,54.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC', 7,186.26,208.5,54.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V', 7,186.26,208.5,54.6);                                                                                                             
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM', 7,199.66,193.5,68.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK', 7,213.06,208.5,68.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK', 7,226.46,208.5,68.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL', 7,226.46,223.5,68.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ', 7,482.4,304.5,152.6);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10', 7,963.46,780,292.6);                                                                                                           
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14', 7,1124.26,877.5,418.6);                                                                                                        
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18', 7,1620.06,1342.5,712.6);                                                                                                       
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24', 7,1754.06,1513.5,852.6);                                                                                                       
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC', 7,199.66,193.5,110.6);                                                                                                           
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC', 7,502.5,304.5,208.6);                                                                                                           
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC', 7,469,321,236.6);                                                                                                               
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC', 7,482.4,360,250.6);                                                                                                             
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC', 7,482.4,304.5,264.6);                                                                                                           
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC', 7,502.5,321,285.6);   
/* prices for mid-season 2: season 8 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC', 8,133,197,56);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ', 8,372,311,156);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC', 8,372,311,270);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC', 8,144,213,56);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC', 8,387,327,292);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK', 8,164,213,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC', 8,372,367,256);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL', 8,175,228,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM', 8,154,197,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC', 8,387,311,213);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10', 8,743,796,299);                                                                                                                
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14', 8,867,895,428);                                                                                                                
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18', 8,1249,1369,728);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24', 8,1352,1544,871);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V', 8,144,213,56);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC', 8,154,197,113);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK', 8,175,213,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC', 8,362,327,242);   
/* prices for off-season 1 2017: season 9 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC', 9,172,197,56);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ', 9,479,311,156);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC', 9,479,311,270);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC', 9,185,213,56);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC', 9,499,327,292);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK', 9,211,213,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC', 9,479,367,256);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL', 9,225,228,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM', 9,198,197,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC', 9,499,311,213);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10', 9,956,796,299);                                                                                                                
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14', 9,1116,895,428);                                                                                                               
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18', 9,1608,1369,728);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24', 9,1741,1544,871);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V', 9,185,213,56);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC', 9,198,197,113);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK', 9,225,213,70);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC', 9,466,327,242); 
/* prices for Easter holidays 2017: season 10 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC', 10,294,294,143);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC', 10,314,314,143);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V', 10,335,335,143);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM', 10,345,345,153);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK', 10,314,314,153);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK', 10,330,330,153);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL', 10,330,330,153);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ', 10,371,209,112);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10', 10,1051,1051,421);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14', 10,1159,1159,411);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18', 10,1715,1715,524);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24', 10,2060,2060,627);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC', 10,350,350,81);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC', 10,386,209,153);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC', 10,361,220,174);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC', 10,494,494,287);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC', 10,299,299,195);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC', 10,314,314,210); 
/* prices for Mid season 1 2017: season 11 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC', 11,178,200,57);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC', 11,192,215,57);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V', 11,192,215,57);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM', 11,206,200,71);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK', 11,219,215,71);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK', 11,233,215,71);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL', 11,233,231,71);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ', 11,496,314,158);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10', 11,992,803,302);                                                                                                                
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14', 11,1158,904,432);                                                                                                               
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18', 11,1669,1383,734);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24', 11,1807,1559,879);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC', 11,206,200,114);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC', 11,518,314,215);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC', 11,483,331,244);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC', 11,496,371,259);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC', 11,496,314,273);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC', 11,518,331,295);  
/* prices for summer season 2017: season 12 for all types of Weerterbergen*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BC', 12,133,129,39);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FC', 12,143,139,39);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','V', 12,143,139,39);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FM', 12,153,129,49);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FK', 12,164,139,49);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VK', 12,174,139,49);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FL', 12,174,149,49);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJ', 12,371,203,109);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV10', 12,741,520,209);                                                                                                                
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV14', 12,864,585,299);                                                                                                                
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV18', 12,1245,895,509);                                                                                                               
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FV24', 12,1348,1009,609);                                                                                                              
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VC', 12,153,129,79);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FMC', 12,386,203,149);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','VKC', 12,361,214,169);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FKC', 12,371,240,179);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','BJC', 12,371,203,189);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('WB','FJC', 12,386,214,204);
/* VB 23 en 24 prices , all seasons*/
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 1,120,112,35);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 2,265,248,126);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 3,265,248,126);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 4,265,248,126);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 5,120,112,35);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 6,120,112,35);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 7,161,169,50);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 8,124,171,51);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 9,160,171,51);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 10,273,256,130);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 11,166,174,52);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','23', 12,124,112,35);  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 1,129,121,35);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 2,284,265,126);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 3,284,265,126);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 4,284,265,126);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 5,129,121,35);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 6,129,121,35);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 7,173,182,50);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 8,134,185,51);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 9,172,185,51);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 10,292,273,130);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 11,179,187,52);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('VB','24', 12,133,121,35);
/* EP 82 */
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 1,185,163,47);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 2,406,357,168);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 3,406,357,168);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 4,406,357,168);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 5,185,163,47);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 6,185,163,47);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 7,247,245,67);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 8,192,249,68);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 9,246,249,68);                                                                                                                    
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 10,418,367,173);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 11,255,252,69);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('EP','82', 12,190,163,47);  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14',1,400,350,65);                                                                                                            
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14',2,300,300,40);                                                                                                               
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14',3,300,300,40);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14',4,300,300,40);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14',5,200,150,25);                                                                                                                 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 6,499,250,247);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 7,669,376,346);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 8,515,383,353);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 9,664,383,353);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 10,418,367,254);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 11,689,387,357);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','14', 12,513,250,247);    
/* MD 32 & 33 */
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 1,479,281,217);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 2,638,562,338);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 3,638,562,338);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 4,638,562,338);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 5,479,281,217);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 6,479,281,217);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 7,641,421,304);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 8,495,429,310);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 9,637,429,310);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 10,657,578,347);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 11,660,434,313);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','32', 12,493,281,217); 
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 1,407,305,163);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 2,542,610,254);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 3,542,610,254);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 4,542,610,254);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 5,407,305,163);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 6,407,305,163);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 7,545,457,228);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 8,420,466,233);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 9,541,466,233);                                                                                                                   
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 10,558,627,261);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 11,560,471,236);                                                                                                                  
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('MD','33', 12,419,305,163);  
COMMIT;
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','11',1,700,650,100);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','12',1,550,450,75);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','13',1,450,400,75);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','11',2,600,500,75);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','12',2,500,400,60);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','13',2,350,300,50);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','11',3,600,500,75);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','12',3,500,400,60);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','13',3,350,300,50);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','11',4,600,500,75);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','12',4,500,400,60);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','13',4,350,300,50);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','11',5,350,250,50);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','12',5,300,250,40);
INSERT INTO cottype_prices(park_code, typeNo, season_code, price_weekend, price_midweek, price_extra_day)
VALUES ('SF','13',5,250,200,30);
COMMIT;

INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',23,'N','Y','N','N','Y','N');                                         
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',50,'Y','N','N','Y','Y','N');                                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',51,'N','N','N','Y','Y','N');                                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','82',40,'Y','N','N','Y','Y','N');                                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','82',41,'N','N','N','Y','Y','N');                                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','83',42,'Y','N','N','Y','Y','Y');                  
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','83',30,'N','Y','N','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','83',31,'Y','Y','N','N','Y','Y');                                
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','83',32,'N','Y','N','N','Y','Y');                                 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','84',20,'Y','Y','N','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','84',21,'N','Y','N','N','Y','Y');                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','84',24,'N','Y','N','N','Y','N');                                 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','84',25,'Y','Y','N','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','84',52,'N','N','N','Y','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','84',53,'Y','N','N','Y','Y','Y');                                    
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','62',25,'Y','Y','N','N','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','14',901,'N','N','N','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',300,'N','Y','N','N','Y','Y');  
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',10,'N','N','N','Y','N','N');                                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',11,'N','N','N','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',12,'N','N','N','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',13,'N','N','N','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','24',401,'N','N','N','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','22',202,'N','N','N','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',53,'N','Y','N','N','Y','Y');                                         
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','11',20,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','11',33,'Y','Y','Y','N','N','N');                           
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','11',34,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','12',30,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','12',31,'N','Y','Y','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','12',32,'N','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','12',50,'Y','N','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','12',51,'N','N','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','12',52,'Y','N','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','13',21,'N','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','13',22,'Y','Y','Y','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','13',10,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','13',11,'N','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','14',12,'N','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','14',13,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','14',40,'Y','N','Y','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','14',41,'N','N','Y','Y','N','N');   
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('SF','14',42,'N','N','Y','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','61',40,'Y','Y','Y','N','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','61',41,'N','Y','Y','N','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','61',42,'N','Y','Y','N','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','61',53,'N','Y','Y','N','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','61',33,'N','N','Y','Y','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','61',34,'Y','N','Y','Y','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','62',10,'Y','Y','Y','N','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','62',11,'N','Y','Y','N','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','62',12,'N','Y','Y','N','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','62',21,'N','Y','Y','N','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','62',22,'Y','Y','Y','N','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','63',31,'Y','N','Y','Y','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('BF','63',32,'N','N','Y','Y','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',10,'Y','Y','N','N','Y','Y');                                      
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',11,'N','Y','N','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',12,'N','Y','N','N','Y','Y'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('EP','81',22,'N','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',139,'Y','N','N','Y','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',20,'Y','Y','N','N','Y','Y');                                      
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',21,'N','Y','N','N','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',22,'N','Y','N','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',23,'N','Y','N','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',73,'Y','N','N','Y','Y','N');                                          
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',75,'N','N','N','Y','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',102,'Y','N','N','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','35',112,'N','N','N','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','35',113,'N','N','N','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','35',103,'Y','N','N','Y','Y','N');                                           
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',25,'N','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',72,'Y','N','N','Y','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach) 
VALUES ('MD','36',90,'Y','N','N','Y','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',92,'N','N','N','Y','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach) 
VALUES ('MD','36',93,'Y','N','N','Y','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',62,'N','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',63,'Y','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',135,'N','N','N','Y','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',122,'N','N','N','Y','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',13,'Y','Y','N','N','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',28,'N','Y','N','N','Y','N');                                      
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',29,'N','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',70,'Y','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',71,'N','Y','N','N','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',61,'N','Y','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',52,'N','Y','N','N','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','15',62,'Y','Y','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','16',12,'N','Y','Y','N','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','16',13,'Y','Y','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','16',63,'N','N','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','16',64,'Y','N','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',24,'N','Y','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',26,'N','Y','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',41,'Y','Y','Y','N','Y','N');                                  
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',43,'N','Y','Y','Y','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',130,'Y','N','Y','N','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',131,'N','N','Y','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',136,'Y','N','Y','N','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',137,'N','N','Y','N','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','31',120,'Y','N','Y','N','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',30,'Y','Y','Y','Y','Y','Y'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',31,'N','Y','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',80,'Y','N','Y','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',81,'N','N','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',82,'N','N','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',132,'N','N','Y','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',133,'N','N','Y','N','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','32',140,'Y','N','Y','Y','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',10,'Y','Y','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',11,'N','Y','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',40,'Y','Y','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',42,'N','Y','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',44,'Y','N','Y','Y','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',76,'Y','N','Y','N','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',83,'N','N','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',84,'Y','N','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',25,'Y','N','Y','Y','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',101,'Y','N','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',121,'N','N','Y','Y','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',123,'N','N','Y','Y','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',124,'Y','N','Y','Y','Y','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','33',138,'N','N','Y','N','Y','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','21',30,'Y','N','N','Y','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','21',31,'N','N','N','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','21',32,'N','N','N','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','21',33,'Y','N','N','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','22',22,'Y','Y','N','N','N','Y');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','22',20,'N','Y','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','22',21,'N','Y','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',14,'N','N','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',15,'N','N','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',16,'N','N','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','23',17,'Y','N','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','24',15,'Y','N','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('VB','24',14,'N','N','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','11',40,'Y','Y','Y','Y','Y','N');  
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','11',41,'N','Y','Y','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','11',42,'N','Y','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','11',60,'N','N','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','12',43,'N','Y','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','12',44,'N','Y','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','12',45,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','12',50,'Y','N','N','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','13',20,'N','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','13',23,'N','Y','Y','N','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','13',22,'Y','Y','Y','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','13',21,'N','N','Y','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','14',34,'Y','Y','N','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','14',33,'N','Y','Y','Y','N','N');                                   
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','14',30,'Y','Y','Y','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','14',53,'N','N','Y','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','14',51,'Y','N','Y','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','15',32,'N','Y','Y','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','15',31,'N','Y','N','N','N','N');                                         
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','15',10,'Y','Y','Y','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','15',11,'N','Y','Y','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('LB','15',61,'N','N','Y','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','34',74,'Y','N','N','Y','Y','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','35',111,'N','N','N','Y','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','35',114,'Y','N','N','Y','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','35',104,'Y','N','N','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',27,'N','Y','N','N','N','N');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',91,'N','N','N','N','Y','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',50,'Y','Y','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',51,'N','Y','N','N','N','N');                                        
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','36',134,'N','N','N','N','N','Y');                                       
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('MD','37',12,'N','Y','N','N','N','N'); 
/* Huisjes Weerterbergen */
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BC',51,'Y','Y','N','N','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BC',52,'N','Y','N','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BC',53,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BC',54,'N','Y','N','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FC',72,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FC',73,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FC',74,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','V',83,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','V',84,'N','Y','Y','Y','N','N');                                      
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','V',85,'N','Y','Y','Y','N','N');   
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FM',201,'Y','Y','Y','Y','N','N');  
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FM',202,'N','Y','Y','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FM',203,'N','Y','Y','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FM',204,'N','Y','Y','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FM',205,'N','Y','Y','Y','N','N'); 
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FK',222,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FK',223,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FK',224,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FK',225,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FK',226,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VK',301,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VK',302,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VK',303,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VK',304,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VK',305,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FL',325,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FL',326,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FL',327,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FL',328,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FL',329,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FL',330,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJ',422,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJ',423,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJ',424,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJ',425,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV10',515,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV10',516,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV10',517,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV10',518,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV14',526,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV14',527,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV14',528,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV18',538,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV18',539,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV24',540,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FV24',541,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VC',400,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VC',401,'N','N','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VC',402,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FMC',411,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FMC',412,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FMC',413,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FMC',414,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FMC',415,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VKC',360,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VKC',361,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VKC',362,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VKC',363,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','VKC',364,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FKC',253,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FKC',254,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FKC',255,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJC',175,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJC',176,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJC',177,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','BJC',178,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FJC',356,'Y','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FJC',357,'N','Y','Y','Y','N','N');
INSERT INTO cottages (park_code, typeNo, houseNo, corner, central, pet, quiet, playground, beach)
VALUES ('WB','FJC',358,'N','Y','Y','Y','N','N');
COMMIT;

INSERT INTO promotions(promo_code,percentage,start_date,end_date,park_code,typeNo) VALUES ('WBZ001','10',to_date('12/08/20','DD/MM/YY'),to_date('14/08/20','DD/MM/YY'),'WB','FV10');
INSERT INTO promotions(promo_code,percentage,start_date,end_date,park_code,typeNo) VALUES ('WBZ002','10',to_date('12/08/20','DD/MM/YY'),to_date('14/08/20','DD/MM/YY'),'WB','FV14');
INSERT INTO promotions(promo_code,percentage,start_date,end_date,park_code,typeNo) VALUES ('WBZ003','10',to_date('12/08/20','DD/MM/YY'),to_date('14/08/20','DD/MM/YY'),'WB','FV18');
INSERT INTO promotions(promo_code,percentage,start_date,end_date,park_code,typeNo) VALUES ('WBZ004','10',to_date('12/08/20','DD/MM/YY'),to_date('14/08/20','DD/MM/YY'),'WB','FV24');
COMMIT;

INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('2','1','44060','SF','14','901',to_date('04/01/20','DD/MM/YY'),to_date('08/03/20','DD/MM/YY'),to_date('10/03/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('3','1','22123','MD','33','300',to_date('05/01/20','DD/MM/YY'),to_date('18/03/20','DD/MM/YY'),to_date('22/03/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('1','2','13440','VB','24','401',to_date('05/01/20','DD/MM/YY'),to_date('25/01/20','DD/MM/YY'),to_date('27/01/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('2','2','44060','MD','32','132',to_date('03/03/20','DD/MM/YY'),to_date('20/09/20','DD/MM/YY'),to_date('22/09/20','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('1','3','60123','VB','23','10',to_date('03/02/20','DD/MM/YY'),to_date('19/08/20','DD/MM/YY'),to_date('23/08/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('2','3','60123','MD','32','133',to_date('03/01/20','DD/MM/YY'),to_date('23/12/20','DD/MM/YY'),to_date('27/12/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('4','2','44060','EP','82','40',to_date('03/03/20','DD/MM/YY'),to_date('16/12/20','DD/MM/YY'),to_date('20/12/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('5','2','13440','SF','14','901',to_date('03/02/20','DD/MM/YY'),to_date('22/07/20','DD/MM/YY'),to_date('26/07/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('1','1','34560','MD','32','133',to_date('10/01/20','DD/MM/YY'),to_date('18/03/20','DD/MM/YY'),to_date('22/03/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('3','2','22123','MD','33','300',to_date('04/01/20','DD/MM/YY'),to_date('20/05/20','DD/MM/YY'),to_date('24/05/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('3','3','22123','EP','82','40',to_date('17/01/20','DD/MM/YY'),to_date('18/02/20','DD/MM/YY'),to_date('22/02/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('4','3','60123','EP','82','40',to_date('16/01/20','DD/MM/YY'),to_date('25/03/20','DD/MM/YY'),to_date('29/03/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('4','1','60123','EP','82','40',to_date('03/02/20','DD/MM/YY'),to_date('20/05/20','DD/MM/YY'),to_date('24/05/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('5','3','11111','SF','12','30',to_date('04/02/20','DD/MM/YY'),to_date('08/04/20','DD/MM/YY'),to_date('12/04/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('6','3','11111','EP','82','40',to_date('05/01/20','DD/MM/YY'),to_date('23/09/20','DD/MM/YY'),to_date('27/09/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('7','3','11111','SF','12','30',to_date('03/12/19','DD/MM/YY'),to_date('07/01/20','DD/MM/YY'),to_date('11/01/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('8','1','34560','SF','12','30',to_date('03/03/20','DD/MM/YY'),to_date('07/10/20','DD/MM/YY'),to_date('11/10/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('6','2','66040','SF','14','901',to_date('18/01/20','DD/MM/YY'),to_date('31/05/20','DD/MM/YY'),to_date('02/06/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('7','2','34560','SF','14','901',to_date('03/01/20','DD/MM/YY'),to_date('03/05/20','DD/MM/YY'),to_date('05/05/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('10','2','25875','SF','14',null,to_date('03/01/20','DD/MM/YY'),to_date('05/04/20','DD/MM/YY'),to_date('07/04/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('11','2','13440','SF','13','10',to_date('05/02/20','DD/MM/YY'),to_date('08/04/20','DD/MM/YY'),to_date('12/04/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('16','2','13440','VB','24',null,to_date('06/02/20','DD/MM/YY'),to_date('22/11/20','DD/MM/YY'),to_date('24/11/20','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('19','2','13440','VB','24',null,to_date('13/02/20','DD/MM/YY'),to_date('16/12/20','DD/MM/YY'),to_date('20/12/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('50','2','34560','VB','23','13',to_date('15/02/20','DD/MM/YY'),to_date('26/04/20','DD/MM/YY'),to_date('28/04/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('8','3','11111','SF','11','33',to_date('04/01/20','DD/MM/YY'),to_date('28/01/20','DD/MM/YY'),to_date('01/02/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('15','1','44060','SF','14','901',to_date('07/04/20','DD/MM/YY'),to_date('30/12/20','DD/MM/YY'),to_date('03/01/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('20','3','66040','SF','12','30',to_date('18/02/20','DD/MM/YY'),to_date('25/03/20','DD/MM/YY'),to_date('29/03/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('21','3','66040','SF','12','30',to_date('20/02/20','DD/MM/YY'),to_date('09/08/20','DD/MM/YY'),to_date('11/08/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('22','3','66040','SF','12','30',to_date('13/02/20','DD/MM/YY'),to_date('12/08/20','DD/MM/YY'),to_date('16/08/20','DD/MM/YY'),'2','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('23','3','66040','SF','12','30',to_date('14/02/20','DD/MM/YY'),to_date('16/08/20','DD/MM/YY'),to_date('18/08/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('24','3','25875','WB','FV10','515',to_date('14/02/20','DD/MM/YY'),to_date('16/08/20','DD/MM/YY'),to_date('18/08/20','DD/MM/YY'),'1','PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('16','1','98123','WB','FV10','517',to_date('12/08/20','DD/MM/YY'),to_date('23/09/20','DD/MM/YY'),to_date('27/09/20','DD/MM/YY'),'2','OPEN','WBZ001');
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('1','4','61578','WB','FV14','526',to_date('12/08/20','DD/MM/YY'),to_date('06/09/20','DD/MM/YY'),to_date('08/09/20','DD/MM/YY'),'1','OPEN','WBZ002');
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('2','4','61578','SF','11','33',to_date('03/08/20','DD/MM/YY'),to_date('01/11/20','DD/MM/YY'),to_date('03/11/20','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('1','5','98123','EP','82','41',to_date('05/08/20','DD/MM/YY'),to_date('04/11/20','DD/MM/YY'),to_date('08/11/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('2','5','61578','SF','11','20',to_date('10/08/20','DD/MM/YY'),to_date('23/12/20','DD/MM/YY'),to_date('27/12/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('17','1','98123','SF','12','30',to_date('10/08/20','DD/MM/YY'),to_date('23/12/20','DD/MM/YY'),to_date('27/12/20','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('18','1','15201','VB','23','13',to_date('21/02/21','DD/MM/YY'),to_date('23/03/21','DD/MM/YY'),to_date('27/03/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('3','5','74420','VB','24','401',to_date('02/03/21','DD/MM/YY'),to_date('23/03/21','DD/MM/YY'),to_date('27/03/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('4','5','10733','EP','82','40',to_date('02/02/21','DD/MM/YY'),to_date('20/03/21','DD/MM/YY'),to_date('22/03/21','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('25','3','15201','EP','82','40',to_date('02/02/21','DD/MM/YY'),to_date('16/03/21','DD/MM/YY'),to_date('20/03/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('26','3','11744','SF','12','32',to_date('02/07/20','DD/MM/YY'),to_date('20/01/21','DD/MM/YY'),to_date('24/01/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('5','5','74420','SF','14','12',to_date('23/11/20','DD/MM/YY'),to_date('13/01/21','DD/MM/YY'),to_date('17/01/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('6','5','74420','SF','14','901',to_date('02/01/21','DD/MM/YY'),to_date('21/02/21','DD/MM/YY'),to_date('23/02/21','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('19','1','11744','MD','32','133',to_date('12/02/21','DD/MM/YY'),to_date('17/02/21','DD/MM/YY'),to_date('21/02/21','DD/MM/YY'),'2','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('7','5','26811','MD','33','300',to_date('14/02/21','DD/MM/YY'),to_date('17/04/21','DD/MM/YY'),to_date('19/04/21','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('20','1','10733','MD','32','133',to_date('21/03/21','DD/MM/YY'),to_date('17/04/21','DD/MM/YY'),to_date('19/04/21','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('24','5','23401','SF','14','901',to_date('01/10/19','DD/MM/YY'),to_date('04/01/20','DD/MM/YY'),to_date('08/01/20','DD/MM/YY'),null,'PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('25','5','23101','SF','14','901',to_date('01/08/19','DD/MM/YY'),to_date('04/10/20','DD/MM/YY'),to_date('09/10/20','DD/MM/YY'),null,'OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('26','5','23101','SF','14','901',to_date('10/01/19','DD/MM/YY'),to_date('11/01/20','DD/MM/YY'),to_date('24/01/20','DD/MM/YY'),null,'PAID',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('4','6','75798','EP','82','40',to_date('02/09/20','DD/MM/YY'),to_date('03/01/21','DD/MM/YY'),to_date('05/01/21','DD/MM/YY'),'1','OPEN',null);
INSERT INTO reservations (resNo,taNo,clientNo,park_code,typeNo,houseNo,booking_date,start_date,end_date,reser_code,status,promo_code) VALUES ('6','1','29107','MD','33','139',to_date('29/08/19','DD/MM/YY'),to_date('08/02/20','DD/MM/YY'),to_date('13/02/20','DD/MM/YY'),null,'OPEN',null);
COMMIT;

INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('1','2','1',to_date('10/03/20','DD/MM/YY'),'200','V');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('2','3','1',to_date('22/03/20','DD/MM/YY'),'305','O');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('3','1','2',to_date('27/01/20','DD/MM/YY'),'129','V');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('4','1','3',to_date('23/08/20','DD/MM/YY'),'112','B');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('5','5','2',to_date('26/07/20','DD/MM/YY'),'350','V');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('6','1','1',to_date('22/03/20','DD/MM/YY'),'281','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('7','3','2',to_date('24/05/20','DD/MM/YY'),'457','V');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('8','3','3',to_date('22/02/20','DD/MM/YY'),'163','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('9','4','3',to_date('29/03/20','DD/MM/YY'),'163','V');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('10','4','1',to_date('24/05/20','DD/MM/YY'),'245','O');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('11','5','3',to_date('12/04/20','DD/MM/YY'),'400','O');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('12','7','3',to_date('11/01/20','DD/MM/YY'),'250','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('13','6','2',to_date('02/06/20','DD/MM/YY'),'669','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('14','7','2',to_date('05/05/20','DD/MM/YY'),'669','O');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('15','10','2',to_date('07/04/20','DD/MM/YY'),'200','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('16','11','2',to_date('12/04/20','DD/MM/YY'),'300','O');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('17','50','2',to_date('28/04/20','DD/MM/YY'),'161','B');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('18','8','3',to_date('01/02/20','DD/MM/YY'),'250','B');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('19','20','3',to_date('10/05/20','DD/MM/YY'),'250','B');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('20','21','3',to_date('11/08/20','DD/MM/YY'),'550','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('21','22','3',to_date('16/08/20','DD/MM/YY'),'450','B');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('22','23','3',to_date('18/08/20','DD/MM/YY'),'550','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('23','24','3',to_date('18/08/20','DD/MM/YY'),'719','M');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('24','24','5',to_date('08/01/20','DD/MM/YY'),'250','V');
INSERT INTO payments (paymentNo,resNo,taNo,payment_date,amount,payment_method) VALUES ('25','26','5',to_date('24/01/20','DD/MM/YY'),'460','V');
COMMIT;





