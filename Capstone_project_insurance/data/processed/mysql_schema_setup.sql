-- =========================================================
-- AegisLife Insurance - MySQL Workbench Database Schema
-- Compatible with MySQL Workbench (Creates full table connections/FK relationships)
-- =========================================================

CREATE DATABASE IF NOT EXISTS aegislife_db;
USE aegislife_db;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS CustomerFeedback;
DROP TABLE IF EXISTS ClaimHistory;
DROP TABLE IF EXISTS PolicyDetails;
DROP TABLE IF EXISTS AgentInfo;
DROP TABLE IF EXISTS CustomerMaster;
SET FOREIGN_KEY_CHECKS = 1;

-- 1. CustomerMaster Table
CREATE TABLE CustomerMaster (
    customer_id VARCHAR(50) NOT NULL,
    full_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    marital_status VARCHAR(20),
    occupation VARCHAR(50),
    region VARCHAR(50),
    smoking_status VARCHAR(10),
    pre_existing_illness VARCHAR(50),
    risk_score DECIMAL(5,2),
    date_joined DATE,
    PRIMARY KEY (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. AgentInfo Table
CREATE TABLE AgentInfo (
    agent_id VARCHAR(50) NOT NULL,
    region VARCHAR(50),
    join_date DATE,
    total_policies_sold INT,
    lapsed_policies INT,
    avg_premium_sold DECIMAL(12,2),
    fraud_association INT,
    PRIMARY KEY (agent_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. PolicyDetails Table (Linked to CustomerMaster and AgentInfo)
CREATE TABLE PolicyDetails (
    policy_id VARCHAR(50) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    product_type VARCHAR(50),
    coverage_amount DECIMAL(12,2),
    annual_premium DECIMAL(12,2),
    policy_start_date DATE,
    policy_end_date DATE,
    agent_id VARCHAR(50) NOT NULL,
    status VARCHAR(20),
    PRIMARY KEY (policy_id),
    CONSTRAINT fk_policy_customer FOREIGN KEY (customer_id) REFERENCES CustomerMaster(customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_policy_agent FOREIGN KEY (agent_id) REFERENCES AgentInfo(agent_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. ClaimHistory Table (Linked to PolicyDetails)
CREATE TABLE ClaimHistory (
    claim_id VARCHAR(50) NOT NULL,
    policy_id VARCHAR(50) NOT NULL,
    claim_date DATE,
    claim_amount DECIMAL(12,2),
    claim_status VARCHAR(20),
    claim_type VARCHAR(50),
    fraud_flag VARCHAR(10),
    days_to_process INT,
    PRIMARY KEY (claim_id),
    CONSTRAINT fk_claim_policy FOREIGN KEY (policy_id) REFERENCES PolicyDetails(policy_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. CustomerFeedback Table (Linked to CustomerMaster)
CREATE TABLE CustomerFeedback (
    feedback_id VARCHAR(50) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    date_submitted DATE,
    feedback_text TEXT,
    satisfaction_score INT,
    contacted_agent VARCHAR(10),
    referred_claim VARCHAR(10),
    PRIMARY KEY (feedback_id),
    CONSTRAINT fk_feedback_customer FOREIGN KEY (customer_id) REFERENCES CustomerMaster(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
