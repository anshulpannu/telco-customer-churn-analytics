-- 1. Basic Financial Profile

SELECT
    ROUND(MIN(`Monthly Charges`), 2) AS min_monthly_charge,
    ROUND(MAX(`Monthly Charges`), 2) AS max_monthly_charge,
    ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly_charge
FROM telco_churn_raw;


-- 2. Churn By Financial Profile

SELECT
    `Churn Label`,
    COUNT(*) AS customer_count,
    ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly_charge,
    ROUND(AVG(`Total Charges`), 2) AS avg_total_charges
FROM telco_churn_raw
GROUP BY `Churn Label`;