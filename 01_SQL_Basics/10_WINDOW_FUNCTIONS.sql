-- SQL Learning Portfolio
-- Topic: Window Functions
-- Dataset: Loan & Credit Risk


-- 1. ROW_NUMBER()
-- How can we assign a unique ranking number to each loan based on loan amount, from highest to lowest?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    ROW_NUMBER() OVER (
        ORDER BY loan_amount DESC
    ) AS loan_number
FROM loan_applications;



-- 2. RANK()
-- How can we rank loans based on their loan amount?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    RANK() OVER (
        ORDER BY loan_amount DESC
    ) AS loan_rank
FROM loan_applications;



-- 3. DENSE_RANK()
-- How can we rank loans based on their loan amount without gaps between ranking numbers?

SELECT
    loan_id,
    customer_id,
    loan_amount,
    DENSE_RANK() OVER (
        ORDER BY loan_amount DESC
    ) AS loan_rank
FROM loan_applications;



-- 4. Ranking Within Each Loan Purpose
-- What is the ranking of each loan within its loan purpose?

SELECT
    loan_id,
    loan_purpose,
    loan_amount,
    RANK() OVER (
        PARTITION BY loan_purpose
        ORDER BY loan_amount DESC
    ) AS purpose_rank
FROM loan_applications;



-- 5. LAG()
-- What was the loan amount of the previous loan application?

SELECT
    loan_id,
    application_date,
    loan_amount,
    LAG(loan_amount) OVER (
        ORDER BY application_date
    ) AS previous_loan_amount
FROM loan_applications;


-- 6. LEAD()
-- What is the loan amount of the next loan application?

SELECT
    loan_id,
    application_date,
    loan_amount,
    LEAD(loan_amount) OVER (
        ORDER BY application_date
    ) AS next_loan_amount
FROM loan_applications;


-- 7. LAG() with difference
-- How much did the loan amount change compared with the previous loan application?

SELECT
    loan_id,
    application_date,
    loan_amount,
    LAG(loan_amount) OVER (
        ORDER BY application_date
    ) AS previous_loan_amount,
    loan_amount
        - LAG(loan_amount) OVER (
            ORDER BY application_date
        ) AS loan_amount_difference
FROM loan_applications;
