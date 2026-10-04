-- SQL Learning Portfolio
-- Topic: String Functions
-- Dataset: Loan & Credit Risk

-- 1. UPPER()
-- How can we display customer names in uppercase?

SELECT
    customer_id,
    UPPER(first_name) AS first_name_upper,
    UPPER(last_name) AS last_name_upper
FROM customers;



-- 2. LOWER()
-- How can we display customer names in lowercase?

SELECT
    customer_id,
    LOWER(first_name) AS first_name_lower,
    LOWER(last_name) AS last_name_lower
FROM customers;



-- 3. LENGTH()
-- How many characters are in each customer's first name?

SELECT
    customer_id,
    first_name,
    LENGTH(first_name) AS name_length
FROM customers;



-- 4. CONCAT()
-- How can we combine first name and last name into a full name?

SELECT
    customer_id,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;



-- 5. CONCAT with other information
-- How can we create a customer label using customer ID and full name?

SELECT
    customer_id,
    CONCAT( customer_id,' - ', first_name, ' ',last_name) AS customer_label
FROM customers;



-- 6. LEFT()
-- How can we extract the first three characters of each customer's first name?

SELECT
    customer_id,
    first_name,
    LEFT(first_name, 3) AS first_three_characters
FROM customers;



-- 7. RIGHT()
-- How can we extract the last two characters of each customer's last name?

SELECT
    customer_id,
    last_name,
    RIGHT(last_name, 2) AS last_two_characters
FROM customers;



-- 8. REPLACE()
-- How can we replace a specific character in a customer's first name?

SELECT
    customer_id,
    first_name,
    REPLACE(first_name, 'a', 'A') AS modified_first_name
FROM customers;
