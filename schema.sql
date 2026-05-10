create database retail_salesDB;

use retail_salesDB;
CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    age INT,
    category VARCHAR(40),
    quantity INT,
    price_per_unit FLOAT,
    total_sale FLOAT
);
