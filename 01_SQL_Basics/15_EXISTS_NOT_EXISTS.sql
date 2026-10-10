-- SQL Learning Portfolio
-- Topic: EXISTS and NOT EXISTS
-- Dataset: Loan & Credit Risk

-- 1. EXISTS
-- Which customers have at least one loan application?
-- EXISTS returns a customer when the subquery finds a match.

SELECT
    c.customer_id
FROM customers AS c
WHERE EXISTS (
    SELECT 1
    FROM loan_applications AS l
    WHERE l.customer_id = c.customer_id
);


-- 2. NOT EXISTS
-- Which customers have never applied for a loan?
-- NOT EXISTS returns a customer when no matching loan application is found.

SELECT
    c.customer_id
FROM customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM loan_applications AS l
    WHERE l.customer_id = c.customer_id
);


-- 3. EXISTS with a Condition
-- Which customers have at least one loan application with a loan amount greater than 20000?

SELECT
    c.customer_id
FROM customers AS c
WHERE EXISTS (
    SELECT 1
    FROM loan_applications AS l
    WHERE l.customer_id = c.customer_id
      AND l.loan_amount > 20000
);


-- 4. NOT EXISTS with a Condition
-- Which customers have no approved loan applications?

SELECT
    c.customer_id
FROM customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM loan_applications AS l
    WHERE l.customer_id = c.customer_id
      AND l.application_status = 'Approved'
);
