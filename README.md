# Retail Sales SQL Analysis

## 1. Project Overview

The project analyzes the 1-year recorded retail sales data in the year 2023 using SQL to identify customer behavior, sales trends, and category performance.
This project was created as a beginner SQL portfolio project to practice fundimental SQL analysis including database setup, data cleaning, exploratory data analysis, and bussiness-based SQL queries.

The analysis was carried out using MySQL Workbench with data imported from a CSV dataset

---

## 2. Objectives
- Set up a retail sales database
- Import and clean data
- Perform exploratory data analysis (EDA)
- Answer the bussiness-related questions through SQL
- Analyse customer behavior and sales pattern
- Derive from the dataset the insights and possible recommendations into the bussiness planning

---

## 3. Data Setup

The practiced data was obtained from a CSV import. The database and table schema were set up using MySQL Workbench.
the sales table was organized by these following data types:
- Transaction ID
- Sale date
- Customer ID
- Gender
- Age
- Product Category
- Quantity
- Price per unit
- Total sale

The data schema was designed before importing the dataset into the table

---

## 4. Data Cleaning

The data cleaning was performed before analying part and was carried out in 3 parts:
- Checking and removing null values
- Checking and removing data points with unusual patterns
- Fixing data format mismatches

---

## 5. SQL Analysis Questions

The questions in this project are categorized into 4 areas: Dataset Understanding, Sales Analysis, Customer Analysis, and Time Trend.

---

# 1) Dataset Understanding

## 1.1) Total Number of Transactions

### SQL Query:

```sql
SELECT COUNT(*) FROM retail_sales;
```

### Finding:

1000

### Insight:

The dataset contains a moderate amount of transactions suitable for data analysis.

---

## 1.2) Total Number of Customers

### SQL Query:

```sql
SELECT COUNT(DISTINCT customer_id) AS total_number_of_customers
FROM retail_sales;
```

### Finding:

1000

### Insight:0eeeeeeeeeww

The dataset contains a moderate customer base suitable for data analysis. It suggests that each customer is uniquely responsible for each transaction and vice versa.

---

## 1.3) Category of Product

### SQL Query:

```sql
SELECT DISTINCT category
FROM retail_sales;
```

### Finding:

- Beauty
- Clothing
- Electronics

### Insight:

We have 3 distinct product categories in retail, which is sufficient for a comparative sales anlysis

---

## 1.4) Total Sales

### SQL Query:

```sql
SELECT SUM(total_sale)
FROM retail_sales;
```

### Finding:

456000

### Insight:

Over 1 year from 01.01.2023 to 01.01.2024, the retail generated a total revenue of 456000$.

---

# 2) Sales Analysis

## 2.1) Sales by Category

### SQL Query:

```sql
SELECT category, SUM(total_sale)
FROM retail_sales
GROUP BY category;
```

### Finding:

Electronics generated the highest amount of revenue, closely followed by Clothing at approximately 156000 in the year, while Beauty performed the lowest in revenue at around 144000.

### Insight:

The fluctuation in sales across the three categories is not large in scale, and the sales are likely relatively uniformly distributed among them.

---

## 2.2) Average Transaction Value

### SQL Query:

```sql
SELECT AVG(total_sale)
FROM retail_sales;
```

### Finding:

456

### Insight:

At about 460$ per transaction, this could be considered a relatively high range of spending by retail standards.

---

## 2.3) Highest Value Transactions

### SQL Query:

```sql
SELECT *
FROM retail_sales
ORDER BY total_sale DESC
LIMIT 10;
```

### Finding:

All the highest value transactions have the same total sales amount of 2000 by different customers. There are 7 women and 3 men in the list, and all of them bought the same quantity and price_per_unit of 4 and 500 respectively, with Electronics as the most popular category and Clothing as the least.

### Insight:

The finding indicates the same exact behavior among the top 10 transactions, which could be unlikely in the real world. The suspicion could be an error in data recording, transactions from a special occasion, or possible malicious data manipulation.

---

# 3) Customer Analysis

## 3.1) Top 5 Customers by Total Spending

### SQL Query:

```sql
SELECT customer_id, SUM(total_sale) AS total_spend
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 5;
```

### Finding:

The highest customers all had the same spending amount of 2000.

### Insight:

The highest spending customers show the same behavior in terms of spending amount.

---

## 3.2) Average Age of Customers by Category

### SQL Query:

```sql

```

### Finding:

All three categories have the same demographic average age of around 41–42 years old.

### Insight:

The customer bases in the 3 different categories have a similar average age leaning toward a high-middle-aged population.

---

## 3.3) Gender Distribution by Category

### SQL Query:

```sql

```

### Finding:

The gender distribution is relatively evenly distributed between 170–177 persons for male and female customers in each category. The exception, however, is the difference in the Beauty category, with male customers at 141 persons and female customers at 165 persons.

### Insight:

In all categories, the gender demographics are evenly distributed except in the Beauty category, which appears to be more favored by female customers.

---

# 4) Time Trend

## 4.1) Monthly Sales Trend

### SQL Query:

```sql

```

### Finding:

The total yearly revenue by month ranges from around 23600 to 53200 as the lowest and highest respectively.

### Insight:

The highest revenue-generating month performs almost 2 times better in sales compared to the lowest one. There is no clear descending or ascending trend in revenue or any obvious pattern by intuition from this finding alone. Further analysis might be required for a clearer sales trend.

---

## 4.2) Best Selling Month

### SQL Query:

```sql

```

### Finding:

Month 5 generated the highest revenue of 53150.

### Insight:

May generated the highest revenue of 53150.

---

## 6. Key Findings

- Electronics generated the highest total revenue among all product categories.
- The sales distribution across categories was relatively balanced overall.
- Many top spenders show the same exact behavior in their spending.
- The customer demographic distribution was relatively and evenly balanced across age and gender in different cetegories.
- Monthly sales performance fluctuated rather significantly across the year.

---

## 7. Business Recommendations

- The business should further investigate why the top transactions have almost identical purchasing behavior patterns.
- Marketing strategy may be adjusted diffrently especially for the female target group.
- Because category sales are relatively balanced, maintaining even inventory distribution across categories may help to stabilize the revenue.
- Further time-series analysis may contribute to the better identification of seasonal patterns and improve sales planning in the future.

---

## 8. Conclusion

This project demonstrates the use of SQL for retail sales analysis, which includes database setup, data cleaning, sales analysis, customer analysis, and trend analysis.

The project helped strengthen fundamental SQL skills and gave insights for customer behavior, transaction patterns, category performance, and sales trends through structured queries and analytical interpretation.
