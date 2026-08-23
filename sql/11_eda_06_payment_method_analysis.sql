SELECT
    `Payment Method`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Payment Method`, `Churn Label`
ORDER BY `Payment Method`, `Churn Label`;