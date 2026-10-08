-- SQL Learning Portfolio
-- Topic: UNION and UNION ALL
-- Dataset: Loan & Credit Risk

-- 1. UNION
-- How can we combine customer IDs from two queries and remove duplicate values?

SELECT
    customer_id
FROM loan_applications
WHERE application_status = 'Approved'

UNION

SELECT
    customer_id
FROM loan_applications
WHERE default_flag = 1;



-- 2. UNION ALL
-- How can we combine the same two groups while keeping duplicate customer IDs?

SELECT
    customer_id
FROM loan_applications
WHERE application_status = 'Approved'

UNION ALL

SELECT
    customer_id
FROM loan_applications
WHERE default_flag = 1;



-- 3. UNION with Labels
-- How can we create one list containing approved and defaulted loan applications?

SELECT
    loan_id,
    customer_id,
    'Approved' AS category
FROM loan_applications
WHERE application_status = 'Approved'

UNION

SELECT
    loan_id,
    customer_id,
    'Defaulted' AS category
FROM loan_applications
WHERE default_flag = 1;
