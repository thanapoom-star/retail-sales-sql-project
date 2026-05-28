set SQL_SAFE_UPDATES =0;

delete from retail_sales
where sale_date is null or 
customer_id is null or
gender is null or
age is null or
category is null or
quantity is null or
price_per_unit is null or
total_sale is null;

update retail_sales
set customer_id = UPPER(customer_id),
gender = LOWER(gender),
category = LOWER(category) ;

update retail_sales
set customer_id = trim(customer_id),
gender = trim(gender),
category = trim(category) ;

delete from retail_sales
where age <=0 or age >120 or
quantity <=0 or
price_per_unit  <=0 or
total_sale  <=0;

update retail_sales
set sale_date = str_to_date(sale_date, '%Y-%m-%d');

set SQL_SAFE_UPDATES =1;