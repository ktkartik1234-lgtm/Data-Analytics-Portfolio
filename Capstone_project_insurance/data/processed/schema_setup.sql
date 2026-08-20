-- =========================================================
-- AegisLife Insurance - Universal Relational Database Schema
-- Supports MySQL Workbench & SQLite
-- =========================================================

CREATE DATABASE IF NOT EXISTS aegislife_db;
USE aegislife_db;

-- 1. CustomerMaster Table
CREATE TABLE IF NOT EXISTS CustomerMaster (
    customer_id VARCHAR(50) NOT NULL PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    marital_status VARCHAR(20),
    occupation VARCHAR(50),
    region VARCHAR(50),
    smoking_status VARCHAR(10),
    pre_existing_illness VARCHAR(50),
    risk_score FLOAT,
    date_joined DATE
);

-- 2. AgentInfo Table
CREATE TABLE IF NOT EXISTS AgentInfo (
    agent_id VARCHAR(50) NOT NULL PRIMARY KEY,
    region VARCHAR(50),
    join_date DATE,
    total_policies_sold INT,
    lapsed_policies INT,
    avg_premium_sold FLOAT,
    fraud_association INT
);

-- 3. PolicyDetails Table
CREATE TABLE IF NOT EXISTS PolicyDetails (
    policy_id VARCHAR(50) NOT NULL PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    product_type VARCHAR(50),
    coverage_amount FLOAT,
    annual_premium FLOAT,
    policy_start_date DATE,
    policy_end_date DATE,
    agent_id VARCHAR(50) NOT NULL,
    status VARCHAR(20),
    CONSTRAINT fk_policy_customer FOREIGN KEY (customer_id) REFERENCES CustomerMaster(customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_policy_agent FOREIGN KEY (agent_id) REFERENCES AgentInfo(agent_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 4. ClaimHistory Table
CREATE TABLE IF NOT EXISTS ClaimHistory (
    claim_id VARCHAR(50) NOT NULL PRIMARY KEY,
    policy_id VARCHAR(50) NOT NULL,
    claim_date DATE,
    claim_amount FLOAT,
    claim_status VARCHAR(20),
    claim_type VARCHAR(50),
    fraud_flag VARCHAR(10),
    days_to_process INT,
    CONSTRAINT fk_claim_policy FOREIGN KEY (policy_id) REFERENCES PolicyDetails(policy_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 5. CustomerFeedback Table
CREATE TABLE IF NOT EXISTS CustomerFeedback (
    feedback_id VARCHAR(50) NOT NULL PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    date_submitted DATE,
    feedback_text TEXT,
    satisfaction_score INT,
    contacted_agent VARCHAR(10),
    referred_claim VARCHAR(10),
    CONSTRAINT fk_feedback_customer FOREIGN KEY (customer_id) REFERENCES CustomerMaster(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);