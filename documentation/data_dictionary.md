# Data Dictionary

## Dataset Overview

The dataset contains **7,043 customer records and 33 variables** for a fictional telecommunications company operating in California.

Each row represents one customer. The data covers customer demographics, services, contracts, billing, charges, churn status, customer value, and churn reasons.

## Customer & Demographic Information

### CustomerID

**Type:** Text
Unique identifier for each customer.

### Count

**Type:** Integer
Contains `1` for every record. Redundant because each row represents one customer. Excluded from the analytical dataset.

### Country

**Type:** Text
Customer's country of residence. All records are from the United States.

### State

**Type:** Text
Customer's state of residence. All records are from California.

### City

**Type:** Text
Customer's city of residence.

### Zip Code

**Type:** Integer
Customer's ZIP code.

### Lat Long

**Type:** Text
Combined latitude and longitude of the customer's residence.

### Latitude / Longitude

**Type:** Decimal
Geographic coordinates of the customer's residence.

### Gender

**Type:** Text
Customer gender.

### Senior Citizen

**Type:** Text
Indicates whether the customer is 65 or older.

### Partner

**Type:** Text
Indicates whether the customer has a partner.

### Dependents

**Type:** Text
Indicates whether the customer has dependents.

## Services & Tenure

### Tenure Months

**Type:** Integer
Number of months the customer has been with the company.

### Phone Service

**Type:** Text
Indicates whether the customer subscribes to home phone service.

### Multiple Lines

**Type:** Text
Indicates whether the customer has multiple telephone lines.

### Internet Service

**Type:** Text
Type of Internet service: DSL, Fiber Optic, or No service.

### Online Security / Online Backup

**Type:** Text
Indicates whether the customer subscribes to the respective additional service.

### Device Protection

**Type:** Text
Indicates whether the customer has device protection.

### Tech Support

**Type:** Text
Indicates whether the customer subscribes to technical support.

### Streaming TV / Streaming Movies

**Type:** Text
Indicates whether the customer uses the Internet service for third-party TV or movie streaming.

## Contract & Billing

### Contract

**Type:** Text
Customer's contract type: Month-to-Month, One Year, or Two Year.

### Paperless Billing

**Type:** Text
Indicates whether the customer uses paperless billing.

### Payment Method

**Type:** Text
Method used to pay the customer's bill.

### Monthly Charges

**Type:** Decimal
Current monthly charge for the customer's services.

### Total Charges

**Type:** Text → Numeric
Total charges accumulated by the customer. Requires conversion to a numeric type during data preparation.

## Churn & Customer Value

### Churn Label

**Type:** Text
Indicates whether the customer left the company during the specified quarter.

### Churn Value

**Type:** Integer
Numeric representation of churn: `1` = churned, `0` = retained.

### Churn Score

**Type:** Integer
Pre-existing predictive score from 0–100 indicating estimated likelihood of churn.

### CLTV

**Type:** Integer
Predicted Customer Lifetime Value. Higher values indicate greater customer value.

### Churn Reason

**Type:** Text
Recorded reason for customers who left the company. Blank for customers who did not churn.

## Data Preparation Notes

Several fields require consideration before analysis:

* `Count` will be removed because it is constant at 1.
* `Country` and `State` contain no variation in this dataset.
* `Churn Label` and `Churn Value` represent the same churn outcome and will be validated for consistency.
* `Total Charges` will be converted from text to a numeric data type.
* Blank `Churn Reason` values are expected for customers who did not churn.
* `Churn Score` is an existing predictive model output and will not be treated as a primary churn driver.
* `CLTV` is a pre-existing derived business metric and will be used primarily for customer value and retention analysis.