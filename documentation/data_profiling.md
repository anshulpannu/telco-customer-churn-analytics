# Data Profiling

## Overview

The raw dataset contains 7,043 customer records and 33 columns, with one record per customer.

## Key Findings

- 7,043 unique `CustomerID` values and no duplicate records.
- `Count` contains `1` for every row and provides no analytical value.
- `Country` and `State` contain only `United States` and `California` respectively.
- `Total Charges` is stored as text and requires conversion to numeric.
- 11 customers have blank `Total Charges`; all have zero months of tenure.
- `Churn Reason` is blank for non-churned customers, which is expected.
- `Churn Label` and `Churn Value` are fully consistent.
- Service-related fields appear internally consistent.

## Baseline Metrics

- Customers: 7,043
- Churned: 1,869
- Retained: 5,174
- Churn rate: 26.5%
- Average tenure: 32.4 months
- Average monthly charge: $64.76

## Preparation Decisions

- Exclude `Count`.
- Convert `Total Charges` to numeric.
- Retain the 11 blank `Total Charges` records.
- Retain blank `Churn Reason` values as they are expected for retained customers.
- Validate churn fields during SQL data-quality checks.
- Retain `CLTV` for customer-value analysis.
- Treat `Churn Score` as an existing predictive output rather than a primary churn driver.

## Next Step

Prepare the dataset for SQL analysis while keeping the original raw dataset unchanged.