# Exploratory Analysis

## 1. Objective

Explore the Telco Customer Churn dataset using SQL to identify customer segments associated with higher churn and generate actionable business insights.

## 2. Data Overview

- Total customers: **7,043**
- Duplicate customer IDs: **None identified**
- Overall churn: **1,869 customers (26.54%)**
- Retained customers: **5,174 (73.46%)**
- Tenure: **0–72 months**
- Average tenure: **32.37 months**
- Monthly charges: **$18.25–$118.75**
- Average monthly charge: **$64.76**

## 3. Key Findings

### Customer Characteristics

| Factor | Higher-risk segment | Churn Rate |
|---|---|---:|
| Tenure | 0–12 months | **47.44%** |
| Contract | Month-to-month | **42.71%** |
| Payment Method | Electronic check | **45.27%** |
| Internet Service | Fiber optic | **41.89%** |
| Senior Citizen | Yes | **41.68%** |

### Additional Services

Customers without additional support/protection services showed higher churn:

- No Online Security: **41.77%**
- No Tech Support: **41.64%**
- No Online Backup: **39.93%**
- No Device Protection: **39.13%**

### Financial Profile

| Customer Status | Avg. Monthly Charges | Avg. Total Charges |
|---|---:|---:|
| Churned | **$74.44** | **$1,531.80** |
| Retained | **$61.27** | **$2,549.91** |

Churned customers have higher average monthly charges, while retained customers have higher total charges, consistent with longer tenure.

## 4. Cross-Analysis Findings

The strongest patterns emerged when variables were analyzed together.

| Customer Segment | Churn Rate |
|---|---:|
| Month-to-month + 0–12 months | **51.35%** |
| Month-to-month + Fiber optic | **54.61%** |
| Month-to-month + Electronic check | **53.73%** |
| Month-to-month + Fiber optic + Electronic check | **60.37%** |
| Above segment + 0–12 months | **71.16%** |
| Above segment + No Online Security + No Tech Support | **74.45%** |

The highest-risk segment identified was therefore:

> **New (0–12 months), month-to-month, fiber-optic customers paying by electronic check and without Online Security or Tech Support — 74.45% churn.**

This segment contained **544 customers**, of whom **405 churned**.

## 5. Business Implications

The analysis suggests that retention efforts should prioritize:

1. **New month-to-month customers**, particularly during the first 12 months.
2. **Fiber-optic customers** with elevated churn compared with DSL within the same contract categories.
3. **Electronic-check customers**, which remained a high-churn group even within contract categories.
4. **Customers without Online Security or Tech Support**, particularly within high-risk segments.
5. **Targeted onboarding and early-retention interventions** rather than relying only on broad customer-wide campaigns.

## 6. Analytical Caveats

These findings show **associations, not causation**. Variables such as contract, tenure, payment method, service type, pricing, and additional services may be related to one another.

Small segments should also be interpreted cautiously. The analysis therefore focuses on patterns supported by meaningful customer counts rather than isolated small groups.

## 7. SQL Techniques Demonstrated

The exploratory analysis used:

- `COUNT()` and aggregate functions
- `GROUP BY` and `HAVING`
- Conditional aggregation and churn-rate calculations
- `CASE` expressions for tenure segmentation
- Filtering with `WHERE`
- Multi-variable cross-analysis
- Subqueries for percentage calculations
- `MIN()`, `MAX()`, and `AVG()`
- Progressive customer segmentation

## 8. Conclusion

SQL exploratory analysis identified a clear concentration of churn among **new, month-to-month customers**, particularly those using **fiber optic service and electronic check payments** and lacking additional support/protection services.

The analysis provides the foundation for the next project phase: translating these findings into a concise analytical report and actionable retention recommendations.
