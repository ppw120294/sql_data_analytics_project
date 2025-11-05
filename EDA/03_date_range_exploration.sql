/*
===============================================================================
Date Range Exploration
===============================================================================
Purpose:
	- To determine the temporal boundries of key data points.
	- To understand the range of historical data.

SQL Functions Used:
	- MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine the first and the last order date and the total duration in months
SELECT
	MIN(order_date) AS first_order_date,
	MAX(order_date) AS last_order_date,
	DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_month
FROM gold.fact_sales;

-- Find the youngest and oldest customer based on birthdate
SELECT
	MIN(birthdate) AS oldest_birthdate,
	DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
	MAX(birthdate) AS youngest_birthdate,
	DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youndest_age
FROM gold.dim_customers;
