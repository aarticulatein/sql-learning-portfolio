
-- SQL Learning Portfolio
-- Topic: Aggregation Functions
-- Dataset: Loan & Credit Risk


--COUNT
-- 1. How many loan applications are there?

SELECT
    COUNT(*) AS total_loan_applications
FROM loan_applications;


-- SUM
-- 2. What is the total value of all loan applications?

SELECT
    SUM(loan_amount) AS total_loan_value
FROM loan_applications;


-- 3.AVERAGE
-- What is the average loan amount?

SELECT
    ROUND(AVG(loan_amount), 2) AS average_loan_amount
FROM loan_applications;


-- 4. MIN and MAX
-- What is the minimum and maximum loan amount?

SELECT
    MIN(loan_amount) AS minimum_loan_amount,
    MAX(loan_amount) AS maximum_loan_amount
FROM loan_applications;
