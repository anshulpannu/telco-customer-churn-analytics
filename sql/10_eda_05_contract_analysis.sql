SELECT
    Contract,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY Contract, `Churn Label`
ORDER BY Contract, `Churn Label`;