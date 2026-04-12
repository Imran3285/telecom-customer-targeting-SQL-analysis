CREATE TABLE IF NOT EXISTS telecom_customers (
    id BIGINT,
    town TEXT,
    country TEXT,
    age INT,
    job TEXT,
    married TEXT,
    education TEXT,
    arrears TEXT,
    current_balance NUMERIC,
    housing TEXT,
    has_tv_package TEXT,
    last_contact TEXT,
    conn_tr TEXT,
    last_contact_this_campaign_day INT,
    last_contact_this_campaign_month TEXT,
    this_campaign INT,
    days_since_last_contact_previous_campaign INT,
    contacted_during_previous_campaign INT,
    outcome_previous_campaign TEXT,
    new_contract_this_campaign TEXT
);
-- refresh