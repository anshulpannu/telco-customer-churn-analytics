-- 1. Churn Rate

SELECT
    `Churn Label`,
    COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn_raw), 2) AS churn_percentage
FROM telco_churn_raw
GROUP BY `Churn Label`;


-- 2. Churn By Gender

SELECT
    Gender,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY Gender, `Churn Label`
ORDER BY Gender, `Churn Label`;


-- 3. Churn By Senior Citizen Status

SELECT
    `Senior Citizen`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Senior Citizen`, `Churn Label`
ORDER BY `Senior Citizen`, `Churn Label`;