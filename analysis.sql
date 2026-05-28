--1.1
select count(*) from retail_sales ;

--1.2
select count(distinct customer_id) as total_number_of_customers from retail_sales ;

--1.3
select distinct category from retail_sales  ;

--2.1
select category, sum(total_sale) from retail_sales
group by category;

--2.2
select avg(total_sale) from retail_sales;

--2.3
select * from retail_sales order by total_sale desc
limit 10;

--3.1
select customer_id, sum(total_sale) as total_spend from retail_sales
group by customer_id
order by total_spend desc
limit 5 ;

--3.2
select category, avg(age) as average_age from retail_sales
group by category ;

--3.3
select category, gender, count(*) from retail_sales
group by  category, gender ;

--4.1
select month(sale_date) as month, sum(total_sale) as revenue from retail_sales
group by month
order by month ;

--4.2
select month(sale_date) as month, sum(total_sale) as revenue from retail_sales
group by month
order by month desc
limit 1 ;