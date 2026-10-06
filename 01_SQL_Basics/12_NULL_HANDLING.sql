-- SQL Learning Portfolio
-- Topic: NULL Handling
-- Dataset: Loan & Credit Risk



-- 1. IS NULL
-- Which loan applications have no recorded loan purpose?

SELECT
    loan_id,
    customer_id,
    loan_purpose
FROM loan_applications
WHERE loan_purpose IS NULL;



-- 2. IS NOT NULL
-- Which loan applications have a recorded loan purpose?

SELECT
    loan_id,
    customer_id,
    loan_purpose
FROM loan_applications
WHERE loan_purpose IS NOT NULL;



-- 3. COALESCE()
-- How can we replace missing loan purposes with 'Unknown'?

SELECT
    loan_id,
    customer_id,
    COALESCE(loan_purpose, 'Unknown') AS loan_purpose
FROM loan_applications;



-- 4. COALESCE() with multiple columns
-- How can we use a fallback value when a column is NULL?

SELECT
    loan_id,
    COALESCE(loan_purpose, 'Not Specified') AS loan_purpose,
    COALESCE(application_status, 'Unknown') AS application_status
FROM loan_applications;
