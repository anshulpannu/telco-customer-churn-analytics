-- 1. Chrun By Online BackUp

SELECT
    `Online Backup`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Online Backup`, `Churn Label`
ORDER BY `Online Backup`, `Churn Label`;


-- 2. Churn By Device Protection

SELECT
    `Device Protection`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY `Device Protection`, `Churn Label`
ORDER BY `Device Protection`, `Churn Label`;