-- 1. Churn by Online Security

SELECT
    `Online Security`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Online Security`, `Churn Label`
ORDER BY `Online Security`, `Churn Label`;


-- 2. Chrun by Tech Support

SELECT
    `Tech Support`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Tech Support`, `Churn Label`
ORDER BY `Tech Support`, `Churn Label`;