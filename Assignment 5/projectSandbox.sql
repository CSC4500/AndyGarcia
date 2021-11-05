-- *************************************************************

-- ********************************************
-- CREATING Little Jimmy’s Performance Parts and Co DB [SANDBOX]
-- *******************************************

-- create the database
DROP DATABASE IF EXISTS lj;
CREATE DATABASE lj;

-- select the database
USE lj;

CREATE TABLE position
(
  position_id                   INT            NOT NULL   AUTO_INCREMENT,
  position_name					VARCHAR(30)	   NOT NULL,
  exemptStatus                  VARCHAR(10)    NOT NULL,
  payRate                       DECIMAL(7, 2)  NOT NULL,
  yearlyPTO                     DECIMAL(5, 2)  NOT NULL,
  CONSTRAINT POSITION_PK
    PRIMARY KEY (position_id)
);
INSERT INTO position VALUES 
(null,"Janitor",'Non-Exempt', 16.00, 100.00),
(null,"Sales Associate",'Non-Exempt', 12.00, 100.00),
(null,"Assisant Manager",'Non-Exempt', 17.50, 120.00),
(null,"Store Manager",'Exempt', 30.00, 160.00),
(null,"District Manager",'Exempt', 40.00, 180.00),
(null,"Regional Manager",'Exempt', 55.00, 210.00),
(null,"VP Of Sales",'Exempt', 65.00, 250.00),
(null,"Human Resources Recruiter",'Exempt', 23.25, 140.00),
(null,"Talent Manager",'Exempt', 32.00, 150.00),
(null,"Director Of Human Resources",'Exempt', 45.00, 210.00),
(null,"VP Of Human Resources",'Exempt', 62.00, 250.00),
(null,"Market Researcher",'Exempt', 24.75, 140.00),
(null,"Marketing Manager",'Exempt', 32.00, 150.00),
(null,"Marketing Director",'Exempt', 45.00, 210.00),
(null,"VP Of Marketing",'Exempt', 62.00, 250.00),
(null,"Customer Success",'Exempt', 23.25, 140.00),
(null,"Customer Success Manager",'Exempt', 32.00, 150.00),
(null,"Director Of Customer Success",'Exempt', 45.00, 210.00),
(null,"VP Of Customer Success",'Exempt', 62.00, 250.00),
(null,"CEO",'Exempt', 80.00, 260.00);
CREATE TABLE store
(
  store_id                      INT            NOT NULL   AUTO_INCREMENT,
  storeStreet                   VARCHAR(30)    NOT NULL,
  storeCity                     VARCHAR(30)    NOT NULL,
  storeState                    VARCHAR(14)        NOT NULL,
  store_zip_code                CHAR(5)        NOT NULL,
  storePhoneNum                 CHAR(12)       NOT NULL,
  CONSTRAINT STORENUM_PK
    PRIMARY KEY (store_id)
);
INSERT INTO store VALUES 
(null, "123 Hanover Street", "Fresno", "California", "93650", "959-123-4567"),
(null, "456 Liberty Street", "NYC", "New York", "10001", "212-123-4567"),
(null, "789 Canal Street", "Chicago", "Illinois", "60131", "773-123-4567");
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '00275 Glacier Hill Parkway', 'Orlando', 'Florida', '32819', '407-947-1567');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '57692 Fuller Pass', 'Mc Keesport', 'Pennsylvania', '15134', '412-214-5504');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '060 Lillian Avenue', 'Boston', 'Massachusetts', '02163', '339-490-1404');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '65 Porter Center', 'Milwaukee', 'Wisconsin', '53220', '414-739-0425');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '5 David Center', 'Philadelphia', 'Pennsylvania', '19141', '215-817-3644');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '77 Hermina Alley', 'Houston', 'Texas', '77234', '713-868-1174');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '3 Loeprich Alley', 'Kansas City', 'Kansas', '66105', '913-612-0615');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '431 Westerfield Lane', 'Phoenix', 'Arizona', '85062', '602-784-1964');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '741 Surrey Street', 'Aurora', 'Illinois', '60505', '331-875-7179');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '8 Miller Circle', 'Columbia', 'Missouri', '65218', '573-981-1198');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '08683 Shasta Road', 'Louisville', 'Kentucky', '40220', '502-422-4622');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '1045 Superior Road', 'Longview', 'Texas', '75605', '903-912-6022');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '67469 Village Lane', 'Corpus Christi', 'Texas', '78410', '361-314-4038');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '839 American Alley', 'Wilmington', 'Delaware', '19805', '302-136-4716');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '3550 Macpherson Road', 'Wilmington', 'Delaware', '19810', '302-344-1514');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '43588 Esch Junction', 'Houston', 'Texas', '77281', '713-378-2361');
insert into store (store_id, storeStreet, storeCity, storeState, store_zip_code, storePhoneNum) values (null, '0 Emmet Trail', 'Philadelphia', 'Pennsylvania', '19131', '215-897-0646');
CREATE TABLE brand
(
  brand_id                      INT            NOT NULL   AUTO_INCREMENT,
  brandName                     VARCHAR(30)    NOT NULL,
  brandWarranty                 CHAR(2)        NOT NULL,
  brandPhoneNum                 VARCHAR(12)    NOT NULL,
  CONSTRAINT BRANDNUM_PK
    PRIMARY KEY (brand_id)
);
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Twitterlist', 17, '886-100-1387');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Rhybox', 54, '343-859-1074');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Voomm', 15, '947-404-0026');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Zoombeat', 15, '997-708-7433');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Photojam', 25, '880-624-9008');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Dabfeed', 3, '304-987-4589');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Flashdog', 11, '138-659-7045');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Jabberstorm', 19, '467-470-5070');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Eidel', 17, '501-310-9559');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Zoomzone', 31, '330-629-7960');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Jetpulse', 44, '895-513-7202');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Pixonyx', 11, '271-107-2019');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Vidoo', 60, '550-689-8608');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Dablist', 46, '726-965-0426');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Tanoodle', 12, '914-489-4734');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Snaptags', 11, '103-457-1920');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Trilia', 42, '490-990-0789');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Dynabox', 25, '758-283-9992');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Edgeify', 5, '144-249-4674');
insert into brand (brand_id, brandName, brandWarranty, brandPhoneNum) values (null, 'Eimbee', 51, '839-111-1567');
CREATE TABLE customer
(
  c_id                          INT            NOT NULL   AUTO_INCREMENT,
  c_fName                       VARCHAR(20)    NOT NULL,
  c_LName                       VARCHAR(20)    NOT NULL,
  c_DOB							CHAR(10)		   NOT NULL,
  c_street                      VARCHAR(30)    NOT NULL,
  c_city                        VARCHAR(30)    NOT NULL,
  c_state                       VARCHAR(14)        NOT NULL,
  c_zip_code                    CHAR(5)        NOT NULL,
  c_phoneNum                    CHAR(12)       NOT NULL,
  CONSTRAINT CUSTOMERNUM_PK
    PRIMARY KEY (c_id)
);
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Cornela', 'Shelvey', '02/07/1961', '2294 Almo Drive', 'Memphis', 'Tennessee', '38131', '901-969-3477');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Miguela', 'Prosh', '03/01/1993', '5772 Acker Way', 'Sioux Falls', 'South Dakota', '57110', '605-769-6922');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Yasmin', 'McGinny', '02/23/1966', '092 Fairfield Terrace', 'Philadelphia', 'Pennsylvania', '19151', '215-665-3978');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Liam', 'Odam', '10/15/1988', '921 Corscot Alley', 'Huntsville', 'Alabama', '35805', '256-143-1774');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Brittni', 'Bonnet', '12/12/1975', '03 Melby Pass', 'Tucson', 'Arizona', '85737', '520-117-5072');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Maurie', 'Baish', '09/09/1963', '4 Morrow Crossing', 'Amarillo', 'Texas', '79171', '806-366-2418');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Farand', 'Gocher', '01/17/1976', '89 Hoepker Lane', 'Memphis', 'Tennessee', '38126', '901-152-9929');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Hernando', 'Josofovitz', '03/23/1971', '5 Maple Hill', 'Lakewood', 'Washington', '98498', '253-645-5065');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Lynea', 'Barthot', '07/26/1995', '3246 Brickson Park Center', 'Saint Paul', 'Minnesota', '55146', '651-832-6574');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Nevile', 'Bruniges', '07/31/1963', '2 Cambridge Hill', 'Springfield', 'Missouri', '65805', '417-261-9475');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Ferdinande', 'Peddar', '06/17/1975', '321 Schurz Circle', 'Berkeley', 'California', '94705', '510-265-9557');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Teddi', 'Melhuish', '04/12/1966', '37588 Fremont Park', 'Tucson', 'Arizona', '85720', '520-822-5681');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Rachael', 'Shorto', '04/16/1995', '01 Lawn Junction', 'Pittsburgh', 'Pennsylvania', '15286', '412-223-3678');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Benito', 'Ulyatt', '05/02/1997', '90 Granby Place', 'Winston Salem', 'North Carolina', '27157', '336-584-9034');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Donia', 'Pash', '09/05/1989', '1660 International Way', 'Winston Salem', 'North Carolina', '27116', '336-893-1959');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Keeley', 'Baroc', '12/12/1986', '69571 Grover Park', 'Lynn', 'Massachusetts', '01905', '339-382-6638');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Sinclare', 'Seman', '07/02/1962', '27 Express Place', 'Saint Paul', 'Minnesota', '55166', '651-419-0761');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Jordanna', 'Bobasch', '06/24/1996', '21 Scott Place', 'Albany', 'New York', '12255', '518-708-5225');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Caspar', 'Milella', '03/13/1990', '72 2nd Pass', 'Rockford', 'Illinois', '61105', '815-683-4904');
insert into customer (c_id, c_fName, c_LName, c_DOB, c_street, c_city, c_state, c_zip_code, c_phoneNum) values (null, 'Dexter', 'Lambertazzi', '04/17/1967', '31 Hermina Trail', 'Huntington', 'West Virginia', '25775', '304-398-0264');
CREATE TABLE employee
(
  e_id                          INT            NOT NULL   AUTO_INCREMENT,
  e_fName                       VARCHAR(20)    NOT NULL,
  e_LName                       VARCHAR(20)    NOT NULL,
  e_DOB							CHAR(10)	   NOT NULL,
  e_street                      VARCHAR(30)    NOT NULL,
  e_city                        VARCHAR(30)    NOT NULL,
  e_state                       VARCHAR(14)    NOT NULL,
  e_zip_code                    CHAR(5)        NOT NULL,
  e_phoneNum                    CHAR(12)       NOT NULL,
  e_schedule					CHAR(9)		   NOT NULL,
  e_position_id                 INT            NOT NULL,
  e_store_id                    INT,
  CONSTRAINT EMPLOYEENUM_PK
    PRIMARY KEY (e_id),
  CONSTRAINT EMPLOYEENUM_FK_POSITION_ID
    FOREIGN KEY (e_position_id)
    REFERENCES position (position_id),
  CONSTRAINT EMPLOYEENUM_FK_STORE_ID
    FOREIGN KEY (e_store_id)
    REFERENCES store (store_id)
);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Nicolette', 'MacCrosson', '12/11/1987', '82020 Sloan Place', 'New Haven', 'Connecticut', '06538', '203-584-0632', "Full-Time", 8, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Madison', 'De Rye Barrett', '10/12/1991', '7622 Victoria Center', 'Raleigh', 'North Carolina', '27690', '919-549-6569', "Full-Time", 15, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Rustin', 'Aimer', '07/27/1993', '25 Rowland Park', 'New York City', 'New York', '10131', '212-746-0176', "Full-Time", 20, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Shirleen', 'DelaField', '07/13/1996', '14149 Killdeer Street', 'Santa Monica', 'California', '90405', '818-181-9741', "Full-Time", 20, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Melli', 'McManamon', '05/05/1959', '6 Ilene Trail', 'Philadelphia', 'Pennsylvania', '19136', '215-400-7788', "Full-Time", 1, 18);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Dawna', 'Bearcroft', '02/26/1995', '65353 Dixon Road', 'Lexington', 'Kentucky', '40505', '859-127-0995', "Full-Time", 10, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Borg', 'Blackeby', '05/20/1991', '4 Johnson Court', 'Saint Cloud', 'Minnesota', '56372', '320-931-7509', "Full-Time", 15, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Vasily', 'Yarnall', '04/23/1971', '3 Forest Run Road', 'Philadelphia', 'Pennsylvania', '19196', '215-552-7483', "Full-Time", 12, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Tybi', 'Janouch', '11/03/1981', '4107 Holmberg Trail', 'Toledo', 'Ohio', '43699', '419-296-5790', "Full-Time", 10, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Fanya', 'Milberry', '07/29/1960', '7 Center Point', 'Miami', 'Florida', '33180', '786-511-3987', "Full-Time", 5, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Vicki', 'Kervin', '02/04/1986', '10158 Loftsgordon Center', 'Albuquerque', 'New Mexico', '87140', '505-675-1740', "Part-Time", 3, 19);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Osborne', 'Leftwich', '06/02/1953', '73218 Blaine Alley', 'Anchorage', 'Alaska', '99522', '907-874-5553', "Full-Time", 2, 3);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Leora', 'Bosden', '07/29/2001', '3 Coleman Junction', 'Milwaukee', 'Wisconsin', '53285', '414-995-6024', "Full-Time", 15, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Trish', 'Vinall', '12/10/1999', '308 Eliot Court', 'Brooklyn', 'New York', '11215', '917-502-6705', "Full-Time", 7, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Bowie', 'MacRedmond', '12/26/1990', '0914 Pleasure Court', 'Anchorage', 'Alaska', '99512', '907-280-4084', "Full-Time", 4, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Martyn', 'Autry', '04/28/1970', '3328 Sachtjen Terrace', 'Santa Barbara', 'California', '93106', '805-529-2302', "Full-Time", 4, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Lorelei', 'Wesker', '09/21/1950', '97884 Summit Street', 'Milwaukee', 'Wisconsin', '53210', '262-477-4647', "Full-Time", 19, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Bradney', 'Boughen', '11/21/2000', '55732 Basil Pass', 'Des Moines', 'Iowa', '50362', '515-176-1647', "Full-Time", 20, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Paddy', 'Garham', '05/03/1995', '6082 Forster Drive', 'Las Vegas', 'Nevada', '89105', '702-800-2897', "Full-Time", 8, null);
insert into employee (e_id, e_fName, e_LName, e_DOB, e_street, e_city, e_state, e_zip_code, e_phoneNum, e_schedule, e_position_id, e_store_id) values (null, 'Rubetta', 'MacMeekan', '01/26/1952', '31751 Dennis Junction', 'Miami', 'Florida', '33283', '305-993-6523', "Full-Time", 4, null);
CREATE TABLE product 
(
	p_id                          INT            NOT NULL   AUTO_INCREMENT,
    p_name						  VARCHAR(45)	 NOT NULL,
    p_type						  VARCHAR(20)    NOT NULL,
    p_gender					  CHAR(1)        NOT NULL,
    p_size						  VARCHAR(5)     NOT NULL,
    p_color						  VARCHAR(15)    NOT NULL,
    p_riding_style				  VARCHAR(15)    NOT NULL,
    p_price						  DECIMAL(5,2)   NOT NULL,
    p_material					  VARCHAR(20)    NOT NULL,
    p_brand_id 					  INT            NOT NULL,
    CONSTRAINT PRODUCTNUM_ID
		PRIMARY KEY (p_id),
    CONSTRAINT PRODUCTNUM_BRAND_ID
		FOREIGN KEY (p_brand_id)
		REFERENCES brand (brand_id)
);
INSERT INTO product VALUES 
(null,"Dainese D-Mantle Fleece WS Pants",'Pants', "M", "M", "Black", "Sport", 119.95, "Flece", 1),
(null,"Dainese D-Mantle Fleece WS Pants",'Pants', "F", "S", "Black", "Sport", 119.95, "Flece", 1),
(null,"Klim Induction Jacket",'Jacket', "M", "S", "Blue", "Sport", 349.99, "Mesh", 2),
(null,"Klim Induction Jacket",'Jacket', "F", "S", "Pink", "Sport", 349.99, "Mesh", 2),
(null,"Alpinestars SMX-1 Air v2 Gloves",'Gloves', "M", "L", "Black/White", "Sport", 59.95, "Leather/Mesh", 3),
(null,"Alpinestars SMX-2 Air Carbon v2 Gloves",'Gloves', "M", "S", "Black/Red/White", "Sport", 89.95, "Leather/Mesh", 3),
(null,"Alpinestars Celer v2 Gloves",'Gloves', "F", "S", "Black", "Sport", 99.95, "Leather/Mesh", 3),
(null,"TCX Airtech EVO Gore-Tex Boots",'Boots', "M", "42", "Black", "Sport", 269.99, "GORE-TEX", 4),
(null,"TCX Hero WP Boots",'Boots', "M", "44", "Black", "ADV/Touring", 259.99, "Leather", 4),
(null,"Stylmartin Ace Boots",'Boots', "M", "45", "Brown", "ADV/Touring", 259.99, "Leather", 5),
(null,"Stylmartin Ace Boots",'Boots', "M", "46", "Brown", "ADV/Touring", 259.99, "Leather", 5),
(null,"Stylmartin Ace Boots",'Boots', "M", "47", "Brown", "ADV/Touring", 259.99, "Leather", 5),
(null,"Stylmartin Rocket Boots",'Boots', "M", "39", "Brown", "ADV/Touring", 299.95, "Leather", 5),
(null,"Spidi X-Nashville Boots",'Boots', "F", "39", "Black", "ADV/Touring", 269.90, "Leather", 6),
(null,"Street & Steel Oakland Jeans",'Pants', "M", "28X31", "Black", "ADV/Touring", 139.99, "Denim", 7),
(null,"Street & Steel Sunset Selvedge Jeans",'Pants', "M", "30", "Raw Denim", "ADV/Touring", 159.99, "Denim", 7),
(null,"REAX 610 Jeans",'Pants', "M", "30X32", "Black", "ADV/Touring", 179.99, "Denim", 8),
(null,"REAX 215 Jeans",'Pants', "M", "32X34", "Fade Blue", "ADV/Touring", 143.20, "Denim", 8),
(null,"REAX Tasker Leather Gloves",'Gloves', "M", "S", "Brown", "ADV/Touring", 79.00, "Leather", 8),
(null,"REAX Tasker Leather Gloves",'Gloves', "M", "M", "Black", "ADV/Touring", 79.00, "Leather", 8);
CREATE TABLE purchaseOrder 
(
	po_id                         INT            NOT NULL   AUTO_INCREMENT,
    po_status                     VARCHAR(15)    NOT NULL,
    po_date                       VARCHAR(10)           NOT NULL,
    po_product_id				  INT            NOT NULL,
    po_quantity					  INT			 NOT NULL,
	po_total					  INT 			 NOT NULL,
    po_discount                   DECIMAL(5,2)   NULL,
    po_shipped_date               VARCHAR(10)           NULL,
    po_associate_id               INT            NULL,
    po_store_id					  INT            NULL,
    po_customer_id				  INT 			 NOT NULL,
    CONSTRAINT PRODUCTNUM_PO_ID
		PRIMARY KEY (po_id),
	CONSTRAINT PRODUCTNUM_ASSOCIATE_ID
		FOREIGN KEY (po_associate_id)
		REFERENCES employee (e_id),
	CONSTRAINT PRODUCTNUM_STORE_ID
		FOREIGN KEY (po_store_id)
		REFERENCES store (store_id),
	CONSTRAINT PRODUCTNUM_CUSTOMER_ID
		FOREIGN KEY (po_customer_id)
		REFERENCES customer (c_id)
);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '10/31/2020', 3, 4, 0.0, 246.19, '11/22/2020', 1, 7, 16);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Pending", '11/28/2019', 12, 5, 0.0, 499.25, null, 17, 17, 9);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '08/09/2021', 13, 10, 0.0, 654.65, '01/03/2020', 5, 10, 18);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '11/22/2019', 17, 7, 0.0, 174.33, '07/01/2021', 19, 2, 17);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '09/02/2021', 8, 6, 0.0, 124.09, '09/04/2020', 10, 4, 6);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '05/19/2020', 9, 8, 0.0, 631.25, '01/21/2020', 5, 1, 9);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '11/25/2019', 3, 2, 0.0, 561.91, '08/23/2021', 12, 17, 5);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '07/04/2020', 18, 4, 0.0, 671.05, '11/08/2020', 15, 3, 7);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '09/28/2021', 16, 7, 0.0, 887.33, '02/10/2020', 2, 13, 19);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Pending", '10/19/2021', 18, 4, 0.0, 741.24, null, 5, 5, 10);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Pending", '11/14/2019', 4, 1, 0.0, 661.85, null, 3, 8, 19);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '12/15/2019', 15, 10, 0.0, 839.25, '08/07/2020', 19, 1, 6);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '04/12/2021', 14, 2, 0.0, 647.25, '12/25/2020', 1, 12, 8);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '06/16/2021', 7, 6, 0.0, 598.81, '10/14/2020', 2, 12, 6);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '08/02/2020', 10, 4, 0.0, 110.01, '01/16/2021', 15, 14, 1);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '06/11/2021', 10, 9, 0.0, 329.47, '03/17/2021', 9, 17, 5);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '09/06/2021', 6, 2, 0.0, 903.95, '02/10/2021', 6, 10, 19);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Pending", '11/30/2020', 18, 1, 0.0, 770.43, null, 18, 19, 17);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '09/05/2021', 10, 3, 0.0, 285.53, '03/01/2021', 12, 8, 13);
insert into purchaseOrder (po_id, po_status, po_date, po_product_id, po_quantity, po_discount, po_total, po_shipped_date, po_associate_id, po_store_id, po_customer_id) values (null, "Processed", '09/07/2020', 7, 9, 0.0, 394.46, '12/31/2020', 15, 3, 3);

-- SELECT * FROM `position` WHERE 1;
-- SELECT * FROM `store` WHERE 1;
 SELECT * FROM `purchaseOrder` WHERE 1;