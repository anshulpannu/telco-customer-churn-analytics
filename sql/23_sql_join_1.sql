-- Telco Customer Churn Analysis

-- SQL JOIN Activity 1: Electronic Check Churn by Contract

-- "Within each contract type, is churn higher among electronic-check customers compared
-- with the overall contract churn rate?"

-- Calculate the overall churn rate for each contract type. 
-- Then calculate churn rates for each combination of contract type and payment method. 
-- Join these two summaries using contract type, keep only electronic-check customers, 
-- and compare their churn rate with the overall churn rate for their contract. 
-- Finally, show the contracts where the difference is largest.

USE telco_churn;


-- Build contract summary

WITH contract_summary AS (
    SELECT
        Contract,
        COUNT(*) AS Total_Customers,
        SUM(`Churn Value`) AS Churned_Customers,
        ROUND(
            SUM(`Churn Value`) / COUNT(*) * 100,
            2
        ) AS Contract_Churn_Rate
    FROM telco_churn_raw
    GROUP BY Contract
),


-- Build payment summary

payment_summary AS (
    SELECT
        Contract,
        `Payment Method`,
        COUNT(*) AS Total_Customers,
        SUM(`Churn Value`) AS Churned_Customers,
        ROUND(
            SUM(`Churn Value`) / COUNT(*) * 100,
            2
        ) AS Payment_Churn_Rate
    FROM telco_churn_raw
    GROUP BY
        Contract,
        `Payment Method`
)


-- Join the 2 summaries and compare their churn rates

SELECT
    p.Contract,
    p.`Payment Method`,
    p.Total_Customers AS Electronic_Check_Customers,
    p.Payment_Churn_Rate,
    c.Contract_Churn_Rate,
    ROUND(
        p.Payment_Churn_Rate - c.Contract_Churn_Rate,
        2
    ) AS Churn_Rate_Difference
FROM payment_summary p
INNER JOIN contract_summary c
    ON p.Contract = c.Contract
WHERE p.`Payment Method` = 'Electronic check'
ORDER BY Churn_Rate_Difference DESC;