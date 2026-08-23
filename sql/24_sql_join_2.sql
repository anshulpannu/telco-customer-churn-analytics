-- Telco Customer Churn Analysis

-- SQL JOIN Activity 2: Churned vs. Retained Monthly Charges by Contract
-- "How do monthly charges differ between churned and retained customers within each contract type?"

-- Calculate average monthly charges separately for churned and retained customers within each contract type.
-- Join the two summaries using contract type and compare the average charges.
-- A LEFT JOIN ensures all contract types from the churned customer summary are retained.
-- Results show that churned customers had higher average monthly charges across all contract types

USE telco_churn;


-- Build Churned summary

WITH churned_summary AS (
    SELECT
        Contract,
        COUNT(*) AS Churned_Customers,
        ROUND(AVG(`Monthly Charges`), 2) AS Avg_Churned_Monthly_Charges
    FROM telco_churn_raw
    WHERE `Churn Value` = 1
    GROUP BY Contract
),


-- Build Retained summary

retained_summary AS (
    SELECT
        Contract,
        COUNT(*) AS Retained_Customers,
        ROUND(AVG(`Monthly Charges`), 2) AS Avg_Retained_Monthly_Charges
    FROM telco_churn_raw
    WHERE `Churn Value` = 0
    GROUP BY Contract
)


-- Join the 2 summaries and compare monthly charges for churned vs retained customers

SELECT
    c.Contract,
    c.Churned_Customers,
    r.Retained_Customers,
    c.Avg_Churned_Monthly_Charges,
    r.Avg_Retained_Monthly_Charges,
    ROUND(
        c.Avg_Churned_Monthly_Charges
        - r.Avg_Retained_Monthly_Charges,
        2
    ) AS Monthly_Charge_Difference
FROM churned_summary c
LEFT JOIN retained_summary r
    ON c.Contract = r.Contract
ORDER BY Monthly_Charge_Difference DESC;