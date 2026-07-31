-- ============================================
-- Task 6: Sales Trend Analysis Using SQL
-- Dataset: Sample Superstore
-- Database: SQLite
-- ============================================

-- 1. Display the first 10 records
SELECT *
FROM online_sales
LIMIT 10;

-- ============================================

-- 2. Monthly Revenue Analysis
SELECT
    substr("Order Date", 7, 4) AS Year,
    CASE substr("Order Date", 4, 2)
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
        WHEN '07' THEN 'July'
        WHEN '08' THEN 'August'
        WHEN '09' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
    END AS Month,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM online_sales
GROUP BY
    substr("Order Date",7,4),
    substr("Order Date",4,2)
ORDER BY
    Year,
    substr("Order Date",4,2);

-- ============================================

-- 3. Monthly Order Volume
SELECT
    substr("Order Date",7,4) AS Year,
    CASE substr("Order Date",4,2)
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
        WHEN '07' THEN 'July'
        WHEN '08' THEN 'August'
        WHEN '09' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
    END AS Month,
    COUNT(DISTINCT "Order ID") AS Total_Orders
FROM online_sales
GROUP BY
    substr("Order Date",7,4),
    substr("Order Date",4,2)
ORDER BY
    Year,
    substr("Order Date",4,2);

-- ============================================

-- 4. Monthly Revenue + Order Volume
SELECT
    substr("Order Date",7,4) AS Year,
    CASE substr("Order Date",4,2)
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
        WHEN '07' THEN 'July'
        WHEN '08' THEN 'August'
        WHEN '09' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
    END AS Month,
    ROUND(SUM(Sales),2) AS Total_Revenue,
    COUNT(DISTINCT "Order ID") AS Total_Orders
FROM online_sales
GROUP BY
    substr("Order Date",7,4),
    substr("Order Date",4,2)
ORDER BY
    Year,
    substr("Order Date",4,2);

-- ============================================

-- 5. Monthly Profit Analysis
SELECT
    substr("Order Date",7,4) AS Year,
    CASE substr("Order Date",4,2)
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
        WHEN '07' THEN 'July'
        WHEN '08' THEN 'August'
        WHEN '09' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
    END AS Month,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM online_sales
GROUP BY
    substr("Order Date",7,4),
    substr("Order Date",4,2)
ORDER BY
    Year,
    substr("Order Date",4,2);

-- ============================================