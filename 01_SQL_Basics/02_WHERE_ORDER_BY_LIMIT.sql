-- SQL Learning Portfolio
-- Topics: WHERE, ORDER BY, LIMIT
-- Dataset: Loan & Credit Risk


-- WHERE
-- Question 1: Which loan applications have a loan amount greater than €20,000?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose
FROM loan_applications
WHERE loan_amount > 20000;


-- Question 2: Which loan applications have a credit score below 600?

SELECT
    loan_id,
    customer_id,
    credit_score,
    loan_amount
FROM loan_applications
WHERE credit_score < 600;


-- ORDER BY
-- Question 3:Which loan applications have the highest loan amounts?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose
FROM loan_applications
ORDER BY loan_amount DESC;


-- Question 4: Which loan applications have the lowest interest rates?

SELECT
    loan_id,
    customer_id,
    interest_rate,
    loan_amount
FROM loan_applications
ORDER BY interest_rate ASC;


-- LIMIT
-- Question 5:What are the top 10 largest loan applications?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    loan_purpose
FROM loan_applications
ORDER BY loan_amount DESC
LIMIT 10;
