SELECT
    `Internet Service`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Internet Service`, `Churn Label`
ORDER BY `Internet Service`, `Churn Label`;