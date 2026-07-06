--------------------------------------------------
-- USERS
--------------------------------------------------

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    signup_date DATE NOT NULL,
    country VARCHAR(50) NOT NULL,
    device_type VARCHAR(20) NOT NULL,
    acquisition_source VARCHAR(50) NOT NULL
);

--------------------------------------------------
-- PRODUCT USAGE
--------------------------------------------------

CREATE TABLE product_usage (
    user_id INT PRIMARY KEY,
    login_count INT NOT NULL,
    active_days INT NOT NULL,
    features_used INT NOT NULL,
    last_login_date DATE,

    CONSTRAINT fk_usage_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);

--------------------------------------------------
-- SUBSCRIPTIONS
--------------------------------------------------
CREATE TABLE subscriptions (
    user_id INT PRIMARY KEY,
    plan_type VARCHAR(20) NOT NULL,
    trial_start_date DATE,
    trial_end_date DATE,
    subscription_status VARCHAR(20) NOT NULL,
    monthly_revenue NUMERIC(10,2) NOT NULL,

    CONSTRAINT fk_subscription_user
    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
);
SELECT * FROM subscriptions
--------------------------------------------------
-- SUPPORT TICKETS
--------------------------------------------------

CREATE TABLE support_tickets (
    ticket_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    issue_category VARCHAR(50) NOT NULL,
    priority VARCHAR(20) NOT NULL,
    resolution_time_hours NUMERIC(5,1),
    satisfaction_score NUMERIC(2,1),

    CONSTRAINT fk_ticket_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);
