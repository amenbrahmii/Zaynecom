-- ============================================
-- Supabase Database Setup for ZAYN E-commerce
-- ============================================
-- Run this ENTIRE script in your Supabase SQL Editor
-- This will create all tables, policies, and indexes

-- ============================================
-- STEP 1: Create Tables
-- ============================================

-- 1. Create Visitors Table (tracks page visits)
CREATE TABLE visitors (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    page TEXT NOT NULL,
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ip_address TEXT,
    user_agent TEXT
);

-- 2. Create Orders Table (stores all customer orders)
CREATE TABLE orders (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product TEXT NOT NULL,
    gender TEXT NOT NULL,
    color TEXT NOT NULL,
    size TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    customer_name TEXT NOT NULL,
    customer_phone TEXT NOT NULL,
    customer_address TEXT NOT NULL,
    customer_city TEXT NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL,
    shipping DECIMAL(10, 2) NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    is_promo BOOLEAN DEFAULT FALSE,
    promo_type TEXT DEFAULT 'none',
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    status TEXT DEFAULT 'pending'
);

-- ============================================
-- STEP 2: Enable Row Level Security (RLS)
-- ============================================

ALTER TABLE visitors ENABLE ROW LEVEL SECURITY;
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;

-- ============================================
-- STEP 3: Create Security Policies
-- ============================================

-- Policies for visitors table
CREATE POLICY "Allow public insert on visitors" 
    ON visitors 
    FOR INSERT 
    TO anon 
    WITH CHECK (true);

CREATE POLICY "Allow public read on visitors" 
    ON visitors 
    FOR SELECT 
    TO anon 
    USING (true);

-- Policies for orders table
CREATE POLICY "Allow public insert on orders" 
    ON orders 
    FOR INSERT 
    TO anon 
    WITH CHECK (true);

CREATE POLICY "Allow public read on orders" 
    ON orders 
    FOR SELECT 
    TO anon 
    USING (true);

CREATE POLICY "Allow public update on orders" 
    ON orders 
    FOR UPDATE 
    TO anon 
    USING (true)
    WITH CHECK (true);

-- ============================================
-- STEP 4: Create Indexes (for performance)
-- ============================================

CREATE INDEX idx_visitors_timestamp ON visitors(timestamp);
CREATE INDEX idx_orders_timestamp ON orders(timestamp);
CREATE INDEX idx_orders_status ON orders(status);
CREATE INDEX idx_orders_city ON orders(customer_city);

-- ============================================
-- STEP 5: Create Views (optional, for analytics)
-- ============================================

-- Order statistics view
CREATE VIEW order_stats AS
SELECT 
    COUNT(*) as total_orders,
    SUM(total) as total_revenue,
    AVG(total) as avg_order_value,
    COUNT(CASE WHEN is_promo = true THEN 1 END) as promo_orders,
    COUNT(CASE WHEN is_promo = false THEN 1 END) as regular_orders
FROM orders;

-- Daily visitors view
CREATE VIEW daily_visitors AS
SELECT 
    DATE(timestamp) as visit_date,
    COUNT(*) as visitor_count
FROM visitors
GROUP BY DATE(timestamp)
ORDER BY visit_date DESC;

-- ============================================
-- SETUP COMPLETE! ✅
-- ============================================
-- Your database is now ready to use with the dashboard
