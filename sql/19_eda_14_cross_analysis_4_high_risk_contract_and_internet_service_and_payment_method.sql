SELECT
    Contract,
    `Internet Service`,
    `Payment Method`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY
    Contract,
    `Internet Service`,
    `Payment Method`,
    `Churn Label`
ORDER BY
    Contract,
    `Internet Service`,
    `Payment Method`,
    `Churn Label`;