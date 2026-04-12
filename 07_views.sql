-- =========================================================
-- VIEWS: TELECOM CUSTOMER CONVERSION ANALYSIS
-- =========================================================
-- Objective:
-- Create reusable SQL views that summarise key conversion
-- patterns for reporting, dashboarding, and downstream analysis.
-- =========================================================


-- 1. VIEW: CONVERSION RATE BY JOB
-- Purpose:
-- Provide a reusable summary of customer conversion performance
-- by occupation group.

CREATE OR REPLACE VIEW vw_conversion_by_job AS
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
GROUP BY job;


-- 2. VIEW: CONVERSION RATE BY PREVIOUS CAMPAIGN OUTCOME
-- Purpose:
-- Summarise how the previous campaign outcome relates to
-- current campaign conversion performance.

CREATE OR REPLACE VIEW vw_conversion_by_previous_outcome AS
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
GROUP BY outcome_previous_campaign;


-- 3. VIEW: HIGH-VALUE CUSTOMER SEGMENTS
-- Purpose:
-- Identify high-value segments based on job, education, and
-- marital status, while excluding very small groups to improve
-- reliability of conversion-rate comparisons.

CREATE OR REPLACE VIEW vw_high_value_segments AS
SELECT
    job,
    education,
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
GROUP BY job, education, married
HAVING COUNT(*) >= 30;
-- =========================================================
-- OPTIONAL PREVIEW QUERIES
-- =========================================================

SELECT *
FROM vw_conversion_by_job
ORDER BY conversion_rate_pct DESC;

SELECT *
FROM vw_conversion_by_previous_outcome
ORDER BY conversion_rate_pct DESC;

SELECT *
FROM vw_high_value_segments
ORDER BY conversion_rate_pct DESC, total_customers DESC;