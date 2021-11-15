/*
	Simple Queries
*/
/*
	Show all the positions that Little Jimmy's And Co Has to Offer
*/
SELECT * FROM `position` WHERE 1;

/*
	Show all the employees who make up Little Jimmy's And Co 
*/
SELECT * FROM `employee` WHERE 1;

/*
	Show all the stores that make up Little Jimmy's And Co 
*/
SELECT * FROM `store` WHERE 1;

/*
	Show all the brands that Little Jimmy's Offers
*/
SELECT * FROM `brand` WHERE 1;

/*
	Show all the brands with at least a 20 month warranty
*/
SELECT * FROM `brand` WHERE brandWarranty >= 20;

/*
	Show all the customers that shopped at Little Jimmy's 
*/
SELECT * FROM `customer` WHERE 1;

/*
	Show all the products that Little Jimmy's has to offer
*/
SELECT * FROM `product` WHERE 1;

/*
	Show all the products that costs over $150
*/
SELECT * FROM `product` WHERE p_price >= 150.00;

/*
	Show all the products that are for females
*/
SELECT * FROM `product` WHERE p_gender = "F";

/*
	Show all the orders that Little Jimmy's has processed
*/
SELECT * FROM `purchaseOrder` WHERE po_status = "Processed";

/*  
	Complex Queries
*/

/*
	Show all the orders in acending order
*/
SELECT * FROM `purchaseOrder` ORDER BY po_date;

/*
	Show all the salaried positions ordered by descending PTO time
*/
SELECT * FROM `position` where exemptStatus = "Exempt" ORDER BY yearlyPTO desc;

/*
	Show all the orders in that haven't shipped yet
*/
SELECT * FROM `purchaseOrder` where po_shipped_date IS NULL;

/*
	Show all the the employee's that start with their last name's with M ordered by their last names
*/
SELECT * FROM `employee` where e_LName LIKE 'M%' ORDER BY e_LName;

/*
	A male customer is looking through the website for a pair of boots for his adventure touring bike between a budget of $100 to $300
*/
SELECT *
FROM product
where (p_gender = "M") AND (p_type = "Boots") AND (p_riding_style = "ADV/Touring") AND (p_price between 100.00 AND 300.00);

/*
	We'll be offering a coupon for customers who bought 4 or more items totalling $400 or more. We will need their first 
    and last names, their phone number
*/
SELECT c.c_fName, c.c_LName, c.c_phoneNum, p.po_product_id, p.po_quantity, p.po_total
FROM `purchaseOrder` as p
JOIN customer as c 
ON po_customer_id=c.c_id
where ((p.po_quantity >= 4) AND (p.po_total >= 400.00))
order by p.po_total;

/*
	Show all the employee's who are making more than $18 an hour
*/
SELECT employee.e_id, employee.e_FName, employee.e_LName, position.payRate
FROM `employee` 
INNER JOIN `position` ON employee.e_position_id = position.position_id
where position.payRate > 18.00;

/*
	There will be a meeting for all part-timers who work in the Wisconsin & Alaska stores
    as part of a new training initiative
*/
SELECT e_id, e_FName, e_LName, e_state
FROM `employee` 
where e_state = "Wisconsin" OR e_state = "Alaska"
order by e_id desc;

/*
	We'll be offering a 25% off sale for the Missouri locations. We will need the phone numbers, first and last names, 
    and customer IDs, and the state the live in so we can send the cx's that go to the Missouri locations the promotions
    via phone number
*/
SELECT customer.c_id, customer.c_FName, customer.c_LName, customer.c_phoneNum, customer.c_state, store.store_id
FROM `customer`
INNER JOIN `store` ON customer.c_state = store.storeState
where customer.c_state = "Missouri";

/*
	This is the format for a receipt for an in-store transaction
*/
SELECT purchaseOrder.po_id, purchaseOrder.po_date, product.p_name, purchaseOrder.po_quantity, 
purchaseOrder.po_total, purchaseOrder.po_store_id, 
employee.e_FName, employee.e_LName, customer.c_fName, customer.c_LName
FROM `purchaseOrder`
INNER JOIN `employee` ON purchaseOrder.po_associate_id = employee.e_id
INNER JOIN `customer` ON purchaseOrder.po_customer_id = customer.c_id
INNER JOIN product ON purchaseOrder.po_product_id = product.p_id
where purchaseOrder.po_store_id IS NOT NULL
order by purchaseOrder.po_id;

