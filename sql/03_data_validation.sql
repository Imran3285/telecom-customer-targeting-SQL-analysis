-- ============================================
-- DATA VALIDATION & QUALITY CHECKS
-- ============================================

-- 1. Total number of records
SELECT COUNT(*) AS total_rows
FROM telecom_customers;


-- 2. Preview sample data
SELECT *
FROM telecom_customers
LIMIT 10;


-- 3. Check for NULL values in key columns
SELECT
    COUNT(*) FILTER (WHERE id IS NULL) AS null_id,
    COUNT(*) FILTER (WHERE age IS NULL) AS null_age,
    COUNT(*) FILTER (WHERE job IS NULL) AS null_job,
    COUNT(*) FILTER (WHERE current_balance IS NULL) AS null_balance,
    COUNT(*) FILTER (WHERE new_contract_this_campaign IS NULL) AS null_target
FROM telecom_customers;


-- 4. Check for duplicate IDs
SELECT id, COUNT(*) AS duplicate_count
FROM telecom_customers
GROUP BY id
HAVING COUNT(*) > 1;


-- 5. Validate target variable values
SELECT DISTINCT new_contract_this_campaign
FROM telecom_customers;


-- 6. Age distribution check
SELECT
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    ROUND(AVG(age), 2) AS avg_age
FROM telecom_customers;


-- 7. Balance distribution check
SELECT
    MIN(current_balance) AS min_balance,
    MAX(current_balance) AS max_balance,
    ROUND(AVG(current_balance), 2) AS avg_balance
FROM telecom_customers;


-- 8. Check categorical distributions (quick sanity check)
SELECT job, COUNT(*) AS count
FROM telecom_customers
GROUP BY job
ORDER BY count DESC;


-- 9. Check campaign outcome distribution
SELECT outcome_previous_campaign, COUNT(*) AS count
FROM telecom_customers
GROUP BY outcome_previous_campaign
ORDER BY count DESC;


-- 10. Check conversion distribution
SELECT
    new_contract_this_campaign,
    COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY new_contract_this_campaign;