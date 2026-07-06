SELECT
    TO_CHAR(signup_date, 'YYYY-MM') AS month,
    COUNT(*) AS total_signups
FROM users
GROUP BY TO_CHAR(signup_date, 'YYYY-MM')
ORDER BY month;
SELECT
    COUNT(*) AS total_users,
    SUM(CASE WHEN login_count > 3 THEN 1 ELSE 0 END) AS activated_users,
    ROUND(
        SUM(CASE WHEN login_count > 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS activation_rate
FROM product_usage;
SELECT
    COUNT(*) AS total_users,
    SUM(CASE WHEN subscription_status = 'Active' THEN 1 ELSE 0 END) AS paid_users,
    ROUND(
        SUM(CASE WHEN subscription_status = 'Active' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS paid_conversion_rate
FROM subscriptions;
SELECT
    SUM(CASE WHEN subscription_status = 'Churned' THEN 1 ELSE 0 END) AS churned_users,
    COUNT(*) AS total_users,
    ROUND(
        SUM(CASE WHEN subscription_status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM subscriptions;
SELECT
    plan_type,
    SUM(monthly_revenue) AS total_revenue
FROM subscriptions
GROUP BY plan_type
ORDER BY total_revenue DESC;
SELECT
    u.acquisition_source,
    SUM(s.monthly_revenue) AS total_revenue
FROM users u
JOIN subscriptions s
ON u.user_id = s.user_id
GROUP BY u.acquisition_source
ORDER BY total_revenue DESC;
SELECT
    u.country,
    COUNT(*) AS total_users,
    SUM(CASE WHEN s.subscription_status = 'Churned' THEN 1 ELSE 0 END) AS churned_users,
    ROUND(
        SUM(CASE WHEN s.subscription_status = 'Churned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM users u
JOIN subscriptions s
ON u.user_id = s.user_id
GROUP BY u.country
ORDER BY churn_rate DESC;
SELECT
    plan_type,
    COUNT(*) AS total_customers,
    SUM(monthly_revenue) AS total_revenue,
    ROUND(AVG(monthly_revenue), 2) AS arpu
FROM subscriptions
GROUP BY plan_type
ORDER BY arpu DESC;
SELECT
    ROUND(
        AVG(trial_start_date - signup_date),
        2
    ) AS avg_days_to_trial
FROM users u
JOIN subscriptions s
ON u.user_id = s.user_id;
SELECT
    u.country,
    SUM(s.monthly_revenue) AS total_mrr
FROM users u
JOIN subscriptions s
ON u.user_id = s.user_id
WHERE s.subscription_status = 'Active'
GROUP BY u.country
ORDER BY total_mrr DESC
LIMIT 10;
SELECT
    s.plan_type,
    ROUND(AVG(p.login_count), 2) AS avg_login_count
FROM subscriptions s
JOIN product_usage p
ON s.user_id = p.user_id
GROUP BY s.plan_type
ORDER BY avg_login_count DESC;