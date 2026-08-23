USE telco_churn;

SELECT
    MIN(`Tenure Months`) AS min_tenure,
    MAX(`Tenure Months`) AS max_tenure,
    MIN(`Monthly Charges`) AS min_monthly_charges,
    MAX(`Monthly Charges`) AS max_monthly_charges,
    MIN(`Churn Score`) AS min_churn_score,
    MAX(`Churn Score`) AS max_churn_score,
    MIN(CLTV) AS min_cltv,
    MAX(CLTV) AS max_cltv,
    MIN(Latitude) AS min_latitude,
    MAX(Latitude) AS max_latitude,
    MIN(Longitude) AS min_longitude,
    MAX(Longitude) AS max_longitude
FROM telco_churn_raw;

SELECT
    COUNT(*) AS total_records,
    SUM(TRIM(`Total Charges`) = '') AS blank_values,
    SUM(TRIM(`Total Charges`) <> '' 
        AND `Total Charges` NOT REGEXP '^[0-9]+(\\.[0-9]+)?$') AS non_numeric_values
FROM telco_churn_raw;


SELECT
    `Churn Label`,
    `Churn Value`,
    COUNT(*) AS records
FROM telco_churn_raw
GROUP BY
    `Churn Label`,
    `Churn Value`
ORDER BY
    `Churn Label`,
    `Churn Value`;