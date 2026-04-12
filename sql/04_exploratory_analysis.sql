-- =========================================================
-- EXPLORATORY DATA ANALYSIS (EDA)
-- =========================================================
-- Objective:
-- Perform initial exploration to understand distributions,
-- patterns, and relationships in the dataset.
-- =========================================================


-- 1. Distribution of customers by job
SELECT job, COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY job
ORDER BY total_customers DESC;


-- 2. Distribution by education level
SELECT education, COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY education
ORDER BY total_customers DESC;


-- 3. Distribution by marital status
SELECT married, COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY married
ORDER BY total_customers DESC;


-- 4. Contact method distribution
SELECT last_contact, COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY last_contact
ORDER BY total_customers DESC;


-- 5. Previous campaign outcome distribution
SELECT outcome_previous_campaign, COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY outcome_previous_campaign
ORDER BY total_customers DESC;


-- 6. Conversion distribution
SELECT new_contract_this_campaign, COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY new_contract_this_campaign;


-- 7. Age distribution (simple segmentation)
SELECT
    CASE
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 50 THEN '30-50'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS total_customers
FROM telecom_customers
GROUP BY age_group
ORDER BY total_customers DESC;