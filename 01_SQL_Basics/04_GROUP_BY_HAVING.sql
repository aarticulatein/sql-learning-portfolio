-- SQL Learning Portfolio
-- Topic: GROUP BY and HAVING
-- Dataset: Loan & Credit Risk



-- 1. How many loan applications are there for each loan purpose?

SELECT
    loan_purpose,
    COUNT(*) AS total_applications
FROM loan_applications
GROUP BY loan_purpose;


-- 2. What is the average loan amount for each loan purpose?

SELECT
    loan_purpose,
    ROUND(AVG(loan_amount), 2) AS average_loan_amount
FROM loan_applications
GROUP BY loan_purpose;


-- 3. What is the total loan value for each loan status?

SELECT
    loan_status,
    SUM(loan_amount) AS total_loan_value
FROM loan_applications
GROUP BY loan_status;


-- 4.  Which loan purposes have more than 100 applications?

SELECT
    loan_purpose,
    COUNT(*) AS total_applications
FROM loan_applications
GROUP BY loan_purpose
HAVING COUNT(*) > 100;
