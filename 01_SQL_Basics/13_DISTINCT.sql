-- SQL Learning Portfolio
-- Topic: DISTINCT
-- Dataset: Loan & Credit Risk

-- 1. DISTINCT
-- What different loan purposes are available?

SELECT DISTINCT
    loan_purpose
FROM loan_applications;



-- 2. DISTINCT with Application Status
-- What different application statuses are available?

SELECT DISTINCT
    application_status
FROM loan_applications;



-- 3. DISTINCT with Multiple Columns
-- What unique combinations of loan purpose and application status exist?

SELECT DISTINCT
    loan_purpose,
    application_status
FROM loan_applications;



-- 4. COUNT(DISTINCT)
-- How many unique customers have submitted loan applications?

SELECT
    COUNT(DISTINCT customer_id) AS unique_customers
FROM loan_applications;



-- 5. COUNT(DISTINCT) with Loan Purpose
-- How many different loan purposes are available?

SELECT
    COUNT(DISTINCT loan_purpose) AS unique_loan_purposes
FROM loan_applications;
