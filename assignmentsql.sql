create schema ASSIGNMENT ;
USE ASSIGNMENT ; 

-- Question 1 :
CREATE TABLE STORES_SALES
(
store_no text,
CUSTOMER_ID INT,
CUSTOMER_NAME VARCHAR (50),
TRANSACTION_AMOUNT INT,
PRIMARY KEY ( CUSTOMER_ID)
);

SELECT * FROM STORES_SALES;


select * from STORES_SALES order by transaction_amount desc;



-- Question 2:

CREATE TABLE EMPLOYEE
(
EMPLOYEE_ID INT,
EMPLOYEE_NAME VARCHAR (70),
EMPLOYEE_SALES INT,
PRIMARY KEY (EMPLOYEE_ID)
);

SELECT*FROM EMPLOYEE;


SELECT * FROM EMPLOYEE ORDER BY EMPLOYEE_SALES DESC;


SELECT EMPLOYEE_ID  FROM EMPLOYEE;



-- Question 3 :

create table product_sales
(
product_id int, 
product_name varchar (60),
product_catagory varchar (65),
product_monthly_sales int,
primary key (product_id)
);

select * from product_sales;


select product_id, avg(product_monthly_sales) Average_monthly_sales
from  product_sales
group by product_id 
order by product_id desc;



-- Question 4 :

SELECT * FROM stores_sales;

select * from STORES_SALES order by transaction_amount desc;

select distinct transaction_amount,customer_id from stores_sales;



-- Question 5 :

create table store_A
( 
customer_id int,
customer_name varchar (60),
customer_trasaction int,
primary key (customer_id)
);


select* from store_A;

create table store_B
(
customer_id int,
customer_name varchar (60),
customer_trasaction int, 
primary key (customer_id)
);

select*from store_B;


select customer_trasaction,customer_id from store_A 
union
select customer_trasaction,customer_id from store_B; 
