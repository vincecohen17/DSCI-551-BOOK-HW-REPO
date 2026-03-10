-- =========================================================
-- PostgreSQL Dataset Setup Script
-- DSCI 551 Project
-- Asset Tracking / Compliance System
-- =========================================================
-- \timing on
-- =========================================================
-- RESET TABLES
-- =========================================================
DROP TABLE IF EXISTS transactions CASCADE;
DROP TABLE IF EXISTS assets CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS logs CASCADE;
-- =========================================================
-- CREATE TABLES
-- =========================================================
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE assets (
    id SERIAL PRIMARY KEY,
    owner_id INT,
    asset_name TEXT,
    value INT,
    created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    user_id INT,
    asset_id INT,
    amount INT,
    created_at TIMESTAMP
);
CREATE TABLE logs (
    id SERIAL PRIMARY KEY,
    event TEXT,
    created_at TIMESTAMP
);
-- =========================================================
-- GENERATE USERS (100k)
-- =========================================================
INSERT INTO users (name, email)
SELECT 'user_' || i,
    'user_' || i || '@email.com'
FROM generate_series(1, 100000) AS i;
-- =========================================================
-- GENERATE ASSETS (200k)
-- =========================================================
INSERT INTO assets (owner_id, asset_name, value)
SELECT (random() * 99999 + 1)::int,
    'asset_' || i,
    (random() * 10000)::int
FROM generate_series(1, 200000) AS i;
-- =========================================================
-- GENERATE TRANSACTIONS (500k)
-- =========================================================
INSERT INTO transactions (user_id, asset_id, amount, created_at)
SELECT (random() * 99999 + 1)::int,
    (random() * 199999 + 1)::int,
    (random() * 1000)::int,
    NOW() - (random() * 365) * INTERVAL '1 day'
FROM generate_series(1, 500000) AS i;
-- =========================================================
-- GENERATE LOGS (100k)
-- =========================================================
INSERT INTO logs (event, created_at)
SELECT 'event_' || i,
    NOW() - (random() * 30) * INTERVAL '1 day'
FROM generate_series(1, 100000) AS i;
-- =========================================================
-- VERIFY DATASET SIZE
-- =========================================================
SELECT 'users count:' AS table_name,
    COUNT(*)
FROM users;
SELECT 'assets count:' AS table_name,
    COUNT(*)
FROM assets;
SELECT 'transactions count:' AS table_name,
    COUNT(*)
FROM transactions;
SELECT 'logs count:' AS table_name,
    COUNT(*)
FROM logs;
-- =========================================================
-- END SCRIPT
-- =========================================================