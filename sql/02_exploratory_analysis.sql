-- Total Users
SELECT COUNT(*) AS total_users
FROM users;

-- Users by Country
SELECT country, COUNT(*) AS users
FROM users
GROUP BY country
ORDER BY users DESC;

-- Users by Device
SELECT device_type, COUNT(*) AS users
FROM users
GROUP BY device_type
ORDER BY users DESC;

-- Users by Acquisition Source
SELECT acquisition_source, COUNT(*) AS users
FROM users
GROUP BY acquisition_source
ORDER BY users DESC;

-- Plan Distribution
SELECT plan_type, COUNT(*) AS users
FROM subscriptions
GROUP BY plan_type;

-- Subscription Status Distribution
SELECT subscription_status, COUNT(*) AS users
FROM subscriptions
GROUP BY subscription_status;