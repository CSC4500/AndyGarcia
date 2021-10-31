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
  exemptStatus                  VARCHAR(10)    NOT NULL,
  payRate                       DECIMAL(7, 2)  NOT NULL,
  yearlyPTO                     DECIMAL(3, 2)  NOT NULL,
  CONSTRAINT POSITION_PK
    PRIMARY KEY (position_id)
);
CREATE TABLE store
(
  store_id                      INT            NOT NULL   AUTO_INCREMENT,
  storeStreet                   VARCHAR(30)    NOT NULL,
  storeCity                     VARCHAR(30)    NOT NULL,
  storeState                    CHAR(2)        NOT NULL,
  store_zip_code                CHAR(5)        NOT NULL,
  storePhoneNum                 CHAR(10)       NOT NULL,
  CONSTRAINT STORENUM_PK
    PRIMARY KEY (store_id)
);
CREATE TABLE brand
(
  brand_id                      INT            NOT NULL   AUTO_INCREMENT,
  brandName                     VARCHAR(30)    NOT NULL,
  brandWarranty                 CHAR(2)        NOT NULL,
  brandPhoneNum                 VARCHAR(10)    NOT NULL,
  CONSTRAINT BRANDNUM_PK
    PRIMARY KEY (brand_id)
);
CREATE TABLE customer
(
  c_id                          INT            NOT NULL   AUTO_INCREMENT,
  c_fName                       VARCHAR(20)    NOT NULL,
  c_LName                       VARCHAR(20)    NOT NULL,
  c_DOB							CHAR(8)		   NOT NULL,
  c_street                      VARCHAR(30)    NOT NULL,
  c_city                        VARCHAR(30)    NOT NULL,
  c_state                       CHAR(2)        NOT NULL,
  c_zip_code                    CHAR(5)        NOT NULL,
  c_phoneNum                    CHAR(10)       NOT NULL,
  CONSTRAINT CUSTOMERNUM_PK
    PRIMARY KEY (c_id)
);
CREATE TABLE employee
(
  e_id                          INT            NOT NULL   AUTO_INCREMENT,
  e_fName                       VARCHAR(20)    NOT NULL,
  e_LName                       VARCHAR(20)    NOT NULL,
  e_DOB							CHAR(8)		   NOT NULL,
  e_street                      VARCHAR(30)    NOT NULL,
  e_city                        VARCHAR(30)    NOT NULL,
  e_state                       CHAR(2)        NOT NULL,
  e_zip_code                    CHAR(5)        NOT NULL,
  e_phoneNum                    CHAR(10)       NOT NULL,
  e_hoursWorked                 DECIMAL(3, 2)  NOT NULL,
  e_position_id                 INT            NOT NULL,
  e_store_id                    INT            NOT NULL,
  CONSTRAINT EMPLOYEENUM_PK
    PRIMARY KEY (e_id),
  CONSTRAINT EMPLOYEENUM_FK_POSITION_ID
    FOREIGN KEY (e_position_id)
    REFERENCES position (position_id),
  CONSTRAINT EMPLOYEENUM_FK_STORE_ID
    FOREIGN KEY (e_store_id)
    REFERENCES store (store_id)
);
CREATE TABLE product 
(
	p_id                          INT            NOT NULL   AUTO_INCREMENT,
    p_name						  VARCHAR(20)	 NOT NULL,
    p_type						  VARCHAR(20)    NOT NULL,
    p_gender					  CHAR(1)        NOT NULL,
    p_size						  VARCHAR(4)     NOT NULL,
    p_color						  VARCHAR(10)    NOT NULL,
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
CREATE TABLE purchaseOrder 
(
	po_id                         INT            NOT NULL   AUTO_INCREMENT,
    po_status                     VARCHAR(15)    NOT NULL,
    po_date                       DATE           NOT NULL,
    po_product_id				  INT            NOT NULL,
    po_quantity					  INT			 NOT NULL,
	po_total					  INT 			 NOT NULL,
    po_discount                   DECIMAL(5,2)   NULL,
    po_shipped_date               DATE           NULL,
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

-- SELECT * FROM `employee` WHERE 1