USE telco_churn;

-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM telco_churn_raw;

-- 2. Check for duplicate customer IDs
SELECT customerID, COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY customerID
HAVING COUNT(*) > 1;

-- 3. Check overall churn distribution
SELECT `Churn Label`, COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Churn Label`;

-- 4. Check the date range / basic customer tenure
SELECT
    MIN(`Tenure Months`) AS min_tenure_months,
    MAX(`Tenure Months`) AS max_tenure_months,
    AVG(`Tenure Months`) AS avg_tenure_months
FROM telco_churn_raw;