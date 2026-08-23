SELECT
    CASE
        WHEN `Tenure Months` <= 12 THEN '0-12 Months'
        WHEN `Tenure Months` <= 24 THEN '13-24 Months'
        WHEN `Tenure Months` <= 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS tenure_group,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
GROUP BY tenure_group, `Churn Label`
ORDER BY
    CASE
        WHEN tenure_group = '0-12 Months' THEN 1
        WHEN tenure_group = '13-24 Months' THEN 2
        WHEN tenure_group = '25-48 Months' THEN 3
        ELSE 4
    END,
    `Churn Label`;