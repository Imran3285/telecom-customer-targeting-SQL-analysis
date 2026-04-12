-- =========================================================
-- BUSINESS QUESTIONS: TELECOM CUSTOMER CONVERSION ANALYSIS
-- =========================================================
-- Objective:
-- Analyse customer conversion behaviour to identify which
-- customer groups are more likely to sign a new contract.
-- =========================================================


-- 1. OVERALL CONVERSION RATE
-- Purpose:
-- Measure the overall success rate of the campaign by
-- calculating how many customers converted to a new contract.

SELECT
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN new_contract_this_campaign = 'yes' THEN 1
            ELSE 0
        END
    ) AS converted_customers,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN new_contract_this_campaign = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS conversion_rate_pct
FROM telecom_customers;


-- 2. CONVERSION RATE BY JOB
-- Purpose:
-- Identify which occupational groups convert at the highest rate.
-- This helps the business prioritise high-performing customer segments.

SELECT
    job,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN new_contract_this_campaign = 'yes' THEN 1
            ELSE 0
        END
    ) AS converted_customers,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN new_contract_this_campaign = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS conversion_rate_pct
FROM telecom_customers
GROUP BY job
ORDER BY conversion_rate_pct DESC, total_customers DESC;


-- 3. CONVERSION RATE BY MARITAL STATUS
-- Purpose:
-- Examine whether marital status is associated with different
-- conversion outcomes.

SELECT
    married,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN new_contract_this_campaign = 'yes' THEN 1
            ELSE 0
        END
    ) AS converted_customers,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN new_contract_this_campaign = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS conversion_rate_pct
FROM telecom_customers
GROUP BY married
ORDER BY conversion_rate_pct DESC;


-- 4. CONVERSION RATE BY EDUCATION LEVEL
-- Purpose:
-- Assess whether educational background influences the likelihood
-- of taking up a new telecom contract.

SELECT
    education,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN new_contract_this_campaign = 'yes' THEN 1
            ELSE 0
        END
    ) AS converted_customers,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN new_contract_this_campaign = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS conversion_rate_pct
FROM telecom_customers
GROUP BY education
ORDER BY conversion_rate_pct DESC;


-- 5. CONVERSION RATE BY PREVIOUS CAMPAIGN OUTCOME
-- Purpose:
-- Evaluate how past campaign outcomes influence current conversion.
-- This is useful for improving targeting strategy in future campaigns.

SELECT
    outcome_previous_campaign,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN new_contract_this_campaign = 'yes' THEN 1
            ELSE 0
        END
    ) AS converted_customers,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN new_contract_this_campaign = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS conversion_rate_pct
FROM telecom_customers
GROUP BY outcome_previous_campaign
ORDER BY conversion_rate_pct DESC;


-- 6. CONVERSION RATE BY LAST CONTACT METHOD
-- Purpose:
-- Compare the effectiveness of different communication channels
-- such as cellular, telephone, or unknown contact type.

SELECT
    last_contact,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN new_contract_this_campaign = 'yes' THEN 1
            ELSE 0
        END
    ) AS converted_customers,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN new_contract_this_campaign = 'yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS conversion_rate_pct
FROM telecom_customers
GROUP BY last_contact
ORDER BY conversion_rate_pct DESC;