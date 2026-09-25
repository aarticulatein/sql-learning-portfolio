-- SQL Learning Portfolio
-- Topic: Date Functions
-- Dataset: Loan & Credit Risk


-- 1. How can we extract the year from the loan application date?

SELECT
    loan_id,
    application_date,
    EXTRACT(YEAR FROM application_date) AS application_year
FROM loan_applications;


-- 2. How can we extract the month from the loan application date?

SELECT
    loan_id,
    application_date,
    EXTRACT(MONTH FROM application_date) AS application_month
FROM loan_applications;



-- 3. How many loan applications were submitted each year?

SELECT
    EXTRACT(YEAR FROM application_date) AS application_year,
    COUNT(*) AS total_applications
FROM loan_applications
GROUP BY EXTRACT(YEAR FROM application_date)
ORDER BY application_year;


-- 4. How many loan applications were submitted each month?

SELECT
    EXTRACT(MONTH FROM application_date) AS application_month,
    COUNT(*) AS total_applications
FROM loan_applications
GROUP BY EXTRACT(MONTH FROM application_date)
ORDER BY application_month;
