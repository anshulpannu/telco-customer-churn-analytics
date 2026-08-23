-- 1. Churn By Partner

SELECT
    Partner,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY Partner, `Churn Label`
ORDER BY Partner, `Churn Label`;


-- 2. Churn By Dependents

SELECT
    Dependents,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY Dependents, `Churn Label`
ORDER BY Dependents, `Churn Label`;