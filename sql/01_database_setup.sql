-- Telco Customer Churn Analysis
-- SQL Stage 01: Database Setup

CREATE DATABASE IF NOT EXISTS telco_churn;

USE telco_churn;

-- Confirm the active database
SELECT DATABASE();

-- The raw customer data will be loaded into:
-- telco_churn_raw
