-- SQL Learning Portfolio
-- Topic: CTE (Common Table Expressions)
-- Dataset: Loan & Credit Risk



-- 1. Basic CTE
-- Which loans have an amount greater than €20,000?

WITH large_loans AS (
    SELECT
        loan_id,
        customer_id,
        loan_amount,
        loan_purpose
    FROM loan_applications
    WHERE loan_amount > 20000
)

SELECT *
FROM large_loans;



-- 2. CTE with Aggregation
-- What is the average loan amount for each loan purpose?

WITH loan_summary AS (
    SELECT
        loan_purpose,
        AVG(loan_amount) AS average_loan_amount
    FROM loan_applications
    GROUP BY loan_purpose
)

SELECT
    loan_purpose,
    ROUND(average_loan_amount, 2) AS average_loan_amount
FROM loan_summary
ORDER BY average_loan_amount DESC;



-- 3. CTE with Filtering
-- Which loan purposes have an average loan amount greater than €20,000?

WITH loan_summary AS (
    SELECT
        loan_purpose,
        AVG(loan_amount) AS average_loan_amount
    FROM loan_applications
    GROUP BY loan_purpose
)

SELECT
    loan_purpose,
    ROUND(average_loan_amount, 2) AS average_loan_amount
FROM loan_summary
WHERE average_loan_amount > 20000;


-- 4. CTE with Multiple Aggregations
-- What is the overall summary of loan applications by application status?

WITH status_summary AS (
    SELECT
        application_status,
        COUNT(*) AS total_applications,
        SUM(loan_amount) AS total_loan_value,
        AVG(loan_amount) AS average_loan_amount
    FROM loan_applications
    GROUP BY application_status
)

SELECT
    application_status,
    total_applications,
    ROUND(total_loan_value, 2) AS total_loan_value,
    ROUND(average_loan_amount, 2) AS average_loan_amount
FROM status_summary
ORDER BY total_loan_value DESC;
