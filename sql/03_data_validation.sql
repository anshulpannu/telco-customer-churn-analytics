USE telco_churn;

SELECT
    'Rows' AS Metric,
    FORMAT(COUNT(*), 0) AS Value
FROM telco_churn_raw

UNION ALL

SELECT
    'Unique customers',
    FORMAT(COUNT(DISTINCT CustomerID), 0)
FROM telco_churn_raw

UNION ALL

SELECT
    'Duplicate customers',
    FORMAT(COUNT(*) - COUNT(DISTINCT CustomerID), 0)
FROM telco_churn_raw

UNION ALL

SELECT
    'Churn Yes',
    FORMAT(SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END), 0)
FROM telco_churn_raw

UNION ALL

SELECT
    'Churn No',
    FORMAT(SUM(CASE WHEN `Churn Label` = 'No' THEN 1 ELSE 0 END), 0)
FROM telco_churn_raw

UNION ALL

SELECT
    'Blank Total Charges',
    FORMAT(SUM(CASE WHEN TRIM(`Total Charges`) = '' THEN 1 ELSE 0 END), 0)
FROM telco_churn_raw;