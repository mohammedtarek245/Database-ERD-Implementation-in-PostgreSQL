

CREATE TABLE sales_transcations (
    transaction_id  int primary key NOT NULL,
    transaction_date date ,
    transaction_time time ,
    staff_id int ,
	sales_outlet_id int ,
    customer_id int , 
	product_id int  , 
	quantity int ,
	price numeric ,
FOREIGN KEY (product_id) REFERENCES product(product_id));


	
create table product (
product_id int primary key  NOT NULL ,
product_category varchar(200),
	product_type varchar(200) ,
	product_name varchar(200) ,
	description varchar(500),
	price numeric ) ;


create table sales_detail ( 
sales_outlet_id int PRIMARY KEY  ,   --- IT HAS TO BE A PRIMARY KEY TO BE REFERNCED SO A RELATIONSHIP BETWEEN THIS TABLE AND sales_transcations IS MADE 
customer_id int , 
product_id int  , 
quantity int ,
price numeric )
;

--making sales_outlet_id as a forigen key so a relationship can be formed	
ALTER TABLE sales_transcations
ADD FOREIGN KEY (sales_outlet_id) REFERENCES sales_detail(sales_outlet_id)


-- droping common tables betwwen sales_transcations and sales_details
-- note: dont delete product_id , sales_outlet_id from sales_transcations because they are the forigen keys that will form the realtions based on 
--	product_id and sales_outlet_id are primary keys in thier respective tables 
ALTER TABLE sales_transcations
DROP COLUMN customer_id ;
	
ALTER TABLE sales_transcations
DROP COLUMN quantity ;

ALTER TABLE sales_transcations
DROP COLUMN price ;
	
	

 

