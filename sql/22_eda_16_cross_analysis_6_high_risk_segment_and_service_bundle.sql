SELECT
    `Online Security`,
    `Tech Support`,
    `Churn Label`,
    COUNT(*) AS customer_count
FROM telco_churn_raw
WHERE Contract = 'Month-to-month'
  AND `Internet Service` = 'Fiber optic'
  AND `Payment Method` = 'Electronic check'
  AND `Tenure Months` <= 12
GROUP BY
    `Online Security`,
    `Tech Support`,
    `Churn Label`
ORDER BY
    `Online Security`,
    `Tech Support`,
    `Churn Label`;