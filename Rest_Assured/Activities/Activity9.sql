REM   Script: Activity9
REM   activity5

ALTER TABLE salesman ADD grade int;

CREATE table customer2(CustomerId int PRIMARY KEY,CustomerName Varchar(52) NOT NULL,ContactName Varchar(32),Address Varchar(255),city Varchar(30),postalcode varchar(20),country varchar(20) 
);

DESCRIBE


DESCRIBE customer2


CREATE table salesman(salesman_id int PRIMARY KEY,salesman_name varchar2(20) NOT NULL,salesman_city varchar2(20),commission varchar2(20))  
;

DESCRIBE salesman


INSERT ALL 
    INTO salesman VALUES(5001, 'James Hoog', 'New York', 15) 
    INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13) 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12);

INSERT ALL 
    INTO salesman VALUES(5001, 'James Hoog', 'New York', 15) 
    INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13) 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

select salesman_id,salesman_city from salesman;

select * from salesman;

select * from salesman where salesman_city='Paris';

select * from salesman;

select salesman_id,commission where salesman_name='Paul Adam';

select salesman_id,commission from salesman where salesman_name='Paul Adam';

CREATE table salesman(salesman_id int PRIMARY KEY,salesman_name varchar2(20) NOT NULL,salesman_city varchar2(20),commission varch;

CREATE table salesman(salesman_id int PRIMARY KEY,salesman_name varchar2(20) NOT NULL,salesman_city varchar2(20),commission varchar2(20));

CREATE table salesman1(salesman_id int PRIMARY KEY,salesman_name varchar2(20) NOT NULL,salesman_city varchar2(20),commission varchar2(20));

select * from salesman;

ALTER TABLE salesman ADD grade int;

UPDATE salesman SET grade=100;

SELECT * FROM salesman;

UPDATE salesman SET grade=200 WHERE salesman_city='Rome';

UPDATE salesman SET grade=300 WHERE salesman_name='James Hoog';

UPDATE salesman SET salesman_name='Pierre' WHERE salesman_name='McLyon';

SELECT * FROM salesman;

SELECT customer_id, customer_name FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY customer_name;

SELECT a.salesman_id, name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date) 
UNION 
SELECT a.salesman_id, name, order_no, 'lowest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

select * from customers2;

select * from customer2;

CREATE TABLE Customers ( 
    CustomerID int, 
    CustomerName varchar2(52), 
    ContactName varchar2(32), 
    Address varchar2(255), 
    City varchar2(50), 
    PostalCode varchar2(20), 
    Country varchar2(20) 
);

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","UK") 
    INTO Customers VALUES(1002,"JACK","DEF","2 STreet harring","London","1000010","UK") 
    INTO Customers VALUES(1003,"RYAN","GHI","harris street","London","1000010","UK");

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","UK") 
    INTO Customers VALUES(1002,"JACK","DEF","2 STreet harring","London","1000010","UK") 
    INTO Customers VALUES(1003,"RYAN","GHI","harris street","London","1000010","UK") 
    SELECT 1 FROM DUAL;

NSERT ALL 


    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","UK") 


    INTO Customers VALUES(1002,"JACK","DEF","2 STreet harring","London","1000010","UK") 


    INTO Customers VALUES(1003,"RYAN","GHI","harris street","London","1000010","UK") 


    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","England") 
    INTO Customers VALUES(1002,"JACK","DEF","2 STreet harring","London","1000010","Paris") 
    INTO Customers VALUES(1003,"RYAN","GHI","harris street","London","1000010","Usa") 
    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","England") 
    INTO Customers VALUES(1002,"JACK","DEF","2 STreet harring","London","1000010","Paris") 
    INTO Customers VALUES(1003,"RYAN","GHI","harris street","London","1000010","Japan") 
    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","England") 
 
    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","") 
 
    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010","dffgfg") 
 
    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,"JOHN","ABC","21b baker street","London","1000010",'dffgfg') 
 
    SELECT 1 FROM DUAL;

INSERT ALL 
    INTO Customers VALUES(1001,'JOHN','ABC','21b baker street','London','1000010','usa') 
    INTO Customers VALUES(1001,'Jack','ABC','2 street','London','1000010','uk') 
    INTO Customers VALUES(1001,'Ryan','ABC',' emhrts street','London','1000010','paris') 
 
    SELECT 1 FROM DUAL;

SELECT customer_id, customer_name FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY customer_name;

SELECT a.salesman_id, name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date) 
UNION 
SELECT a.salesman_id, name, order_no, 'lowest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

select * from customers;

SELECT customer_id, customer_name FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY CUSTOMERNAME;

SELECT customer_id, customer_name FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id);

SELECT customer_id, CUSTOMERNAME FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY CUSTOMERNAME;

SELECT customerid, CUSTOMERNAME FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY CUSTOMERNAME;

select * from customers;

select * from orders;

select * from orders;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select * from orders;

select max(PURCHASE_AMOUNT)from orders order by customer_id,purchase_amount;

select customer_id,max(PURCHASE_AMOUNT)from orders group by customer_id;

select customer_id,max(PURCHASE_AMOUNT)from orders group by customer_id;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders  
WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

select * from orders;

select sum(PURCHASE_AMOUNT) as Total_Purchase_amount from orders;

select avg(PURCHASE_AMOUNT) as average_Purchase_amount from orders;

select max(PURCHASE_AMOUNT) as maximum_Purchase_amount from orders;

select min(PURCHASE_AMOUNT) as minimum_Purchase_amount from orders;

select * from orders;

select count(SALESMAN_ID) as "total_count" from orders;

select * from orders;

select sum(PURCHASE_AMOUNT) as "Total_Purchase_amount" from orders;

select avg(PURCHASE_AMOUNT) as "average_Purchase_amount" from orders;

select max(PURCHASE_AMOUNT) as "maximum_Purchase_amount" from orders;

select min(PURCHASE_AMOUNT) as "minimum_Purchase_amount" from orders;

select count(SALESMAN_ID) as "total_count" from orders;

select * from salesman;

select * from customers;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

INSERT INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13);

INSERT ALL 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

select * from orders;

select * from orders;

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007);

select * from orders;

LECT * FROM orders 


WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');


select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007) 
 
SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007) 
 
SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007);

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007) 
 
SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select * from orders;

select max(PURCHASE_AMOUNT)from orders order by customer_id,purchase_amount;

select customer_id,max(PURCHASE_AMOUNT)from orders group by customer_id;

select customer_id,max(PURCHASE_AMOUNT)from orders group by customer_id;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders  
WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

select * from orders;

select sum(PURCHASE_AMOUNT) as Total_Purchase_amount from orders;

select avg(PURCHASE_AMOUNT) as average_Purchase_amount from orders;

select max(PURCHASE_AMOUNT) as maximum_Purchase_amount from orders;

select min(PURCHASE_AMOUNT) as minimum_Purchase_amount from orders;

select * from orders;

select count(SALESMAN_ID) as "total_count" from orders;

select * from orders;

select sum(PURCHASE_AMOUNT) as "Total_Purchase_amount" from orders;

select avg(PURCHASE_AMOUNT) as "average_Purchase_amount" from orders;

select max(PURCHASE_AMOUNT) as "maximum_Purchase_amount" from orders;

select min(PURCHASE_AMOUNT) as "minimum_Purchase_amount" from orders;

select count(SALESMAN_ID) as "total_count" from orders;

select * from salesman;

select * from customers;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

INSERT INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13);

INSERT ALL 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

select * from orders;

select * from orders;

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007);

select * from orders;

LECT * FROM orders 


WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');


select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007) 
 
SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007) 
 
SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007);

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

select * from orders where SALESMAN_ID=(select distinct SALESMAN_ID from orders where CUSTOMER_ID=3007) 
 
SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

select * from orders;

SELECT customerID, customername FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customer_id = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY customername;

SELECT customerID, customername FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customerid = b.customer_id) 
UNION 
SELECT salesman_id, name FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY customername;

SELECT * FROM SALESMAN;

SELECT customerID, customername FROM customers a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.customerid = b.customer_id) 
UNION 
SELECT salesman_id, SALESMAN_NAME FROM salesman a 
WHERE 1<(SELECT COUNT(*) FROM orders b WHERE a.salesman_id = b.salesman_id) 
ORDER BY customername;

SELECT a.salesman_id, SALESMAN_NAME, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date) 
UNION 
SELECT a.salesman_id, name, order_no, 'lowest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, SALESMAN_NAME, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date) 
UNION 
SELECT a.salesman_id, SALESMAN_NAME, order_no, 'lowest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

create table customers1 ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers1 VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers1 VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers1 VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers1 VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers1 VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers1 VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers1 VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers1 VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers1 a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers1 a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name, a.city, a.grade, b.name AS "Salesman", b.city FROM customers1 a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

select * from salesman;

SELECT a.customer_name, a.city, a.grade, b.name AS "Salesman", b.SALESMAN_CITY FROM customers1 a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name, a.city, a.grade, b.salesman_name AS "Salesman", b.SALESMAN_CITY FROM customers1 a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

