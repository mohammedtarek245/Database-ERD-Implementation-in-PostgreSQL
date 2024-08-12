CREATE TABLE staff (
    staff_id varchar(200) PRIMARY KEY,
    first_name varchar(200) NOT NULL,
    last_name varchar(200) NOT NULL,
    position varchar(200) NOT NULL,
    start_date date NOT NULL,
    location varchar(200)
);


CREATE TABLE sales_transcations (
    transaction_id  int primary key,
    transaction_date date NOT NULL,
    transaction_time time NOT NULL,
    sales_outlet_id int NOT NULL,
    staff_id int NOT NULL,
    customer_id int NOT NULL, 
	product_id int NOT NULL , 
	quantity int NOT NULL,
	price numeric NOT NULL  
);

create table sales_outlet (sales_outlet_id int primary key ,
	sales_outlet_type varchar(150) , address varchar(150),
	city  varchar(150) , telephone varchar(150) , postal_code int ,
	manager int ) ; 




create table customer (
customer_id int primary key ,
customer_name varchar (200) , 
	customer_email text ,
	customer_card_numeber text,
	bithdate date , 
	gender varchar (20) );




	
create table product (
product_id int primary key ,
product_category varchar(200),
	product_type varchar(200) ,
	product_name varchar(200) ,
	description varchar(500),
	price numeric ) ;



