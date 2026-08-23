SELECT
    Contract,
    `Payment Method`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY
    Contract,
    `Payment Method`,
    `Churn Label`
ORDER BY
    Contract,
    `Payment Method`,
    `Churn Label`;