USE telco_churn;

SELECT 'Gender' AS column_name, Gender AS value, COUNT(*) AS records
FROM telco_churn_raw
GROUP BY Gender

UNION ALL

SELECT 'Senior Citizen', `Senior Citizen`, COUNT(*)
FROM telco_churn_raw
GROUP BY `Senior Citizen`

UNION ALL

SELECT 'Partner', Partner, COUNT(*)
FROM telco_churn_raw
GROUP BY Partner

UNION ALL

SELECT 'Dependents', Dependents, COUNT(*)
FROM telco_churn_raw
GROUP BY Dependents

UNION ALL

SELECT 'Contract', Contract, COUNT(*)
FROM telco_churn_raw
GROUP BY Contract

UNION ALL

SELECT 'Churn Label', `Churn Label`, COUNT(*)
FROM telco_churn_raw
GROUP BY `Churn Label`;

/*
SELECT
    CustomerID,
    Gender,
    `Senior Citizen`,
    Partner,
    Dependents,
    Contract
FROM telco_churn_raw
LIMIT 10;
*/