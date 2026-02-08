
DROP TABLE IF EXISTS Monthly_Performance;
DROP TABLE IF EXISTS Milk_Specifications;
DROP TABLE IF EXISTS Provinces;

-- Provinces that represent regions
CREATE TABLE Provinces (
    province_id SERIAL PRIMARY KEY,
    province_name VARCHAR(50) UNIQUE NOT NULL,
    population INT NOT NULL
);

INSERT INTO Provinces (province_name, population) VALUES
('City of Kigali', 1745555),
('Southern Province', 3002699),
('Western Province', 2896484),
('Northern Province', 2038511),
('Eastern Province', 3563145);

-- Specify the type of milk 
CREATE TABLE Milk_Specifications (
    variant_id SERIAL PRIMARY KEY,
    variant_name VARCHAR(100) NOT NULL,
    measurement_value DECIMAL(10, 2),
    measurement_unit VARCHAR(10),
    unit_cost DECIMAL(10, 2),
    unit_price DECIMAL(10, 2)
);

INSERT INTO Milk_Specifications (variant_name, measurement_value, measurement_unit, unit_cost, unit_price) VALUES
('Whole Milk', 500, 'ml', 500.20, 666.67), 
('Whole Milk', 1, 'L', 1550.30, 1900.50),
('Chocolate Milk', 300, 'ml', 350.00, 450.00), 
('Chocolate Milk', 1, 'L', 2500.67, 2800.00),
('Vanilla Milk', 300, 'ml', 350.50, 450.00), 
('Vanilla Milk', 1, 'L', 2500.60, 2800.00),
('Strawberry Milk', 300, 'ml', 350.50, 450.00), 
('Strawberry Milk', 1, 'L', 2500.50, 2800.00),
('Powdered Milk', 500, 'g', 8200.00, 9000.00), 
('Powdered Milk', 1, 'kg', 17500.00, 19000.00),
('Ikivuguto', 1, 'L', 1700.50, 2000.00), 
('Ikivuguto', 5, 'L', 4500.00, 5500.00), 
('Ikivuguto', 20, 'L', 13500.00, 15000.00);

-- PERFORMANCE TABLE TO TRACK OVERALL PERFORMANCE
CREATE TABLE Monthly_Performance (
    record_id SERIAL PRIMARY KEY,
    province_id INT REFERENCES Provinces(province_id),
    variant_id INT REFERENCES Milk_Specifications(variant_id),
    report_month DATE,
    quantity_suppied INT,
    quantity_sold INT,
    operating_expenditure DECIMAL(12, 2)
);

INSERT INTO Monthly_Performance (province_id, variant_id, report_month, quantity_suppied, quantity_sold, operating_expenditure) VALUES

-- 1 CITY OF KIGALI (JANUARY REPORT)
(1, 1, '2025-01-01', 15000, 15000, 4200000.00), -- Monthly expenditure
(1, 2, '2025-01-01', 20000, 20000, 0.00),
(1, 3, '2025-01-01', 5000, 3200, 0.00),
(1, 4, '2025-01-01', 3000, 2100, 0.00),
(1, 5, '2025-01-01', 5000, 3100, 0.00),
(1, 6, '2025-01-01', 3000, 1950, 0.00),
(1, 7, '2025-01-01', 5000, 3800, 0.00),
(1, 8, '2025-01-01', 3000, 2400, 0.00),
(1, 9, '2025-01-01', 1000, 45, 0.00),
(1, 10, '2025-01-01', 800, 12, 0.00),
(1, 11, '2025-01-01', 12000, 12000, 0.00),
(1, 12, '2025-01-01', 5000, 5000, 0.00),
(1, 13, '2025-01-01', 2000, 2000, 0.00),

-- 2 SOUTHERN PROVINCE (JANUARY REPORT)
(2, 1, '2025-01-01', 10000, 10000, 3500000.00), -- Monthly expenditure
(2, 2, '2025-01-01', 12000, 12000, 0.00),
(2, 3, '2025-01-01', 4000, 2500, 0.00),
(2, 4, '2025-01-01', 2500, 1800, 0.00),
(2, 5, '2025-01-01', 4000, 2100, 0.00),
(2, 6, '2025-01-01', 2500, 1400, 0.00),
(2, 7, '2025-01-01', 4000, 2700, 0.00),
(2, 8, '2025-01-01', 2500, 1900, 0.00),
(2, 9, '2025-01-01', 1500, 80, 0.00),
(2, 10, '2025-01-01', 1200, 25, 0.00),
(2, 11, '2025-01-01', 10000, 10000, 0.00),
(2, 12, '2025-01-01', 4000, 4000, 0.00),
(2, 13, '2025-01-01', 2000, 2000, 0.00),

-- 3 WESTERN PROVINCE (JANUARY REPORT)
(3, 1, '2025-01-01', 9000, 9000, 3100000.00), -- Monthly expenditure
(3, 2, '2025-01-01', 11000, 11000, 0.00),
(3, 3, '2025-01-01', 3500, 2000, 0.00),
(3, 4, '2025-01-01', 2000, 1300, 0.00),
(3, 5, '2025-01-01', 3500, 1900, 0.00),
(3, 6, '2025-01-01', 2000, 1200, 0.00),
(3, 7, '2025-01-01', 3500, 2300, 0.00),
(3, 8, '2025-01-01', 2000, 1500, 0.00),
(3, 9, '2025-01-01', 1000, 30, 0.00),
(3, 10, '2025-01-01', 800, 10, 0.00),
(3, 11, '2025-01-01', 10000, 10000, 0.00),
(3, 12, '2025-01-01', 4000, 4000, 0.00),
(3, 13, '2025-01-01', 1500, 1500, 0.00),

-- 4 NORTHERN PROVINCE (JANUARY REPORT)
(4, 1, '2025-01-01', 8000, 8000, 3050000.00), -- Monthly expenditure
(4, 2, '2025-01-01', 10000, 10000, 0.00),
(4, 3, '2025-01-01', 3000, 1500, 0.00),
(4, 4, '2025-01-01', 1500, 900, 0.00),
(4, 5, '2025-01-01', 3000, 1400, 0.00),
(4, 6, '2025-01-01', 1500, 850, 0.00),
(4, 7, '2025-01-01', 3000, 1700, 0.00),
(4, 8, '2025-01-01', 1500, 1100, 0.00),
(4, 9, '2025-01-01', 800, 15, 0.00),
(4, 10, '2025-01-01', 500, 5, 0.00),
(4, 11, '2025-01-01', 8000, 8000, 0.00),
(4, 12, '2025-01-01', 3000, 3000, 0.00),
(4, 13, '2025-01-01', 1000, 1000, 0.00),

-- 5 EASTERN PROVINCE (JANUARY REPORT)
(5, 1, '2025-01-01', 16000, 16000, 4450000.00), -- Monthly expenditure
(5, 2, '2025-01-01', 18000, 18000, 0.00),
(5, 3, '2025-01-01', 4500, 3000, 0.00),
(5, 4, '2025-01-01', 3000, 2000, 0.00),
(5, 5, '2025-01-01', 4500, 2700, 0.00),
(5, 6, '2025-01-01', 3000, 1800, 0.00),
(5, 7, '2025-01-01', 4500, 2900, 0.00),
(5, 8, '2025-01-01', 3000, 2100, 0.00),
(5, 9, '2025-01-01', 2000, 60, 0.00),
(5, 10, '2025-01-01', 1500, 22, 0.00),
(5, 11, '2025-01-01', 15000, 15000, 0.00),
(5, 12, '2025-01-01', 6000, 6000, 0.00),
(5, 13, '2025-01-01', 3000, 3000, 0.00);

INSERT INTO Monthly_Performance (province_id, variant_id, report_month, quantity_suppied, quantity_sold, operating_expenditure) VALUES

-- 1 CITY OF KIGALI (FEBRUARY REPORT)
(1, 1, '2025-02-01', 15000, 14500, 4300000.00), -- Monthly expenditure
(1, 2, '2025-02-01', 22000, 22000, 0.00),
(1, 3, '2025-02-01', 4000, 3200, 0.00),
(1, 4, '2025-02-01', 3000, 2500, 0.00),
(1, 5, '2025-02-01', 4000, 3200, 0.00),
(1, 6, '2025-02-01', 3000, 1950, 0.00),
(1, 7, '2025-02-01', 4500, 3700, 0.00),
(1, 8, '2025-02-01', 3000, 2500, 0.00),
(1, 9, '2025-02-01', 500, 145, 0.00),
(1, 10, '2025-02-01', 300, 152, 0.00),
(1, 11, '2025-02-01', 15000, 14000, 0.00),
(1, 12, '2025-02-01', 7000, 6000, 0.00),
(1, 13, '2025-02-01', 3000, 2500, 0.00),

-- 2 SOUTHERN PROVINCE (FEBRUARY REPORT)
(2, 1, '2025-02-01', 12000, 11000, 3450000.00), -- Monthly expenditure
(2, 2, '2025-02-01', 13000, 11000, 0.00),
(2, 3, '2025-02-01', 4000, 3020, 0.00),
(2, 4, '2025-02-01', 2500, 1805, 0.00),
(2, 5, '2025-02-01', 4000, 2700, 0.00),
(2, 6, '2025-02-01', 2500, 2000, 0.00),
(2, 7, '2025-02-01', 4000, 2900, 0.00),
(2, 8, '2025-02-01', 2300, 1900, 0.00),
(2, 9, '2025-02-01', 1500, 100, 0.00),
(2, 10, '2025-02-01', 1200, 75, 0.00),
(2, 11, '2025-02-01', 13000, 12500, 0.00),
(2, 12, '2025-02-01', 5000, 4300, 0.00),
(2, 13, '2025-02-01', 3000, 2000, 0.00),

-- 3 WESTERN PROVINCE (FEBRUARY REPORT)
(3, 1, '2025-02-01', 11000, 10900, 3200000.00), -- Monthly expenditure
(3, 2, '2025-02-01', 12000, 11000, 0.00),
(3, 3, '2025-02-01', 3200, 2000, 0.00),
(3, 4, '2025-02-01', 2000, 1300, 0.00),
(3, 5, '2025-02-01', 2800, 1990, 0.00),
(3, 6, '2025-02-01', 2000, 1300, 0.00),
(3, 7, '2025-02-01', 3500, 2410, 0.00),
(3, 8, '2025-02-01', 2000, 1700, 0.00),
(3, 9, '2025-02-01', 1000, 25, 0.00),
(3, 10, '2025-02-01', 800, 15, 0.00),
(3, 11, '2025-02-01', 12000, 11500, 0.00),
(3, 12, '2025-02-01', 4500, 4000, 0.00),
(3, 13, '2025-02-01', 1700, 1600, 0.00),

-- 4 NORTHERN PROVINCE (FEBRUARY REPORT)
(4, 1, '2025-02-01', 8000, 7500, 3590000.00), -- Monthly expenditure
(4, 2, '2025-02-01', 12000, 10000, 0.00),
(4, 3, '2025-02-01', 3000, 1200, 0.00),
(4, 4, '2025-02-01', 1500, 1000, 0.00),
(4, 5, '2025-02-01', 3000, 1600, 0.00),
(4, 6, '2025-02-01', 1500, 950, 0.00),
(4, 7, '2025-02-01', 3000, 1900, 0.00),
(4, 8, '2025-02-01', 1500, 1150, 0.00),
(4, 9, '2025-02-01', 800, 25, 0.00),
(4, 10, '2025-02-01', 500, 15, 0.00),
(4, 11, '2025-02-01', 9000, 7500, 0.00),
(4, 12, '2025-02-01', 3500, 2500, 0.00),
(4, 13, '2025-02-01', 1200, 900, 0.00),

-- 5 EASTERN PROVINCE (FEBRUARY REPORT)
(5, 1, '2025-02-01', 18000, 15500, 4450000.00), -- Monthly expenditure
(5, 2, '2025-02-01', 25000, 19000, 0.00),
(5, 3, '2025-02-01', 4500, 3200, 0.00),
(5, 4, '2025-02-01', 3000, 2400, 0.00),
(5, 5, '2025-02-01', 4500, 3000, 0.00),
(5, 6, '2025-02-01', 3000, 2000, 0.00),
(5, 7, '2025-02-01', 4500, 1900, 0.00),
(5, 8, '2025-02-01', 3000, 2700, 0.00),
(5, 9, '2025-02-01', 2000, 160, 0.00),
(5, 10, '2025-02-01', 1500, 52, 0.00),
(5, 11, '2025-02-01', 16000, 13000, 0.00),
(5, 12, '2025-02-01', 8000, 6500, 0.00),
(5, 13, '2025-02-01', 3800, 3200, 0.00);

INSERT INTO Monthly_Performance (province_id, variant_id, report_month, quantity_suppied, quantity_sold, operating_expenditure) VALUES

 -- 1 CITY OF KIGALI (MARCH REPORT)
(1, 1, '2025-03-01', 15500, 14500, 4300000.00), -- Monthly expenditure
(1, 2, '2025-03-01', 25000, 22000, 0.00),
(1, 3, '2025-03-01', 4000, 3300, 0.00),
(1, 4, '2025-03-01', 3000, 2400, 0.00),
(1, 5, '2025-03-01', 4000, 3500, 0.00),
(1, 6, '2025-03-01', 3000, 2050, 0.00),
(1, 7, '2025-03-01', 4800, 3700, 0.00),
(1, 8, '2025-03-01', 3500, 2600, 0.00),
(1, 9, '2025-03-01', 500, 95, 0.00),
(1, 10, '2025-03-01', 300, 100, 0.00),
(1, 11, '2025-03-01', 15000, 15000, 0.00),
(1, 12, '2025-03-01', 8000, 7000, 0.00),
(1, 13, '2025-03-01', 6500, 5500, 0.00),

-- 2 SOUTHERN PROVINCE (MARCH REPORT)
(2, 1, '2025-03-01', 13000, 12000, 3450000.00), -- Monthly expenditure
(2, 2, '2025-03-01', 13000, 12000, 0.00),
(2, 3, '2025-03-01', 4000, 3520, 0.00),
(2, 4, '2025-03-01', 2500, 1975, 0.00),
(2, 5, '2025-03-01', 4000, 2800, 0.00),
(2, 6, '2025-03-01', 2500, 2300, 0.00),
(2, 7, '2025-03-01', 4000, 3000, 0.00),
(2, 8, '2025-03-01', 2500, 2000, 0.00),
(2, 9, '2025-03-01', 1500, 200, 0.00),
(2, 10, '2025-03-01', 1200, 175, 0.00),
(2, 11, '2025-03-01', 15000, 13500, 0.00),
(2, 12, '2025-03-01', 5000, 4700, 0.00),
(2, 13, '2025-03-01', 3000, 2500, 0.00),

-- 3 WESTERN PROVINCE (MARCH REPORT)
(3, 1, '2025-03-01', 13000, 11900, 3200000.00), -- Monthly expenditure
(3, 2, '2025-03-01', 12000, 11500, 0.00),
(3, 3, '2025-03-01', 3500, 2000, 0.00),
(3, 4, '2025-03-01', 2000, 1700, 0.00),
(3, 5, '2025-03-01', 2800, 2090, 0.00),
(3, 6, '2025-03-01', 2500, 2300, 0.00),
(3, 7, '2025-03-01', 3500, 2810, 0.00),
(3, 8, '2025-03-01', 2000, 1800, 0.00),
(3, 9, '2025-03-01', 300, 35, 0.00),
(3, 10, '2025-03-01', 200, 15, 0.00),
(3, 11, '2025-03-01', 13000, 12500, 0.00),
(3, 12, '2025-03-01', 4500, 4200, 0.00),
(3, 13, '2025-03-01', 1800, 1700, 0.00),

-- 4 NORTHERN PROVINCE (MARCH REPORT)
(4, 1, '2025-03-01', 8500, 7800, 3590000.00), -- Monthly expenditure
(4, 2, '2025-03-01', 12000, 11000, 0.00),
(4, 3, '2025-03-01', 3000, 1250, 0.00),
(4, 4, '2025-03-01', 1500, 1060, 0.00),
(4, 5, '2025-03-01', 3000, 1700, 0.00),
(4, 6, '2025-03-01', 1500, 980, 0.00),
(4, 7, '2025-03-01', 3000, 1980, 0.00),
(4, 8, '2025-03-01', 1500, 1250, 0.00),
(4, 9, '2025-03-01', 100, 45, 0.00),
(4, 10, '2025-03-01', 50, 15, 0.00),
(4, 11, '2025-03-01', 9000, 7800, 0.00),
(4, 12, '2025-03-01', 3500, 2800, 0.00),
(4, 13, '2025-03-01', 1100, 700, 0.00),

-- 5 EASTERN PROVINCE (MARCH REPORT)
(5, 1, '2025-03-01', 18000, 16500, 4450000.00), -- Monthly expenditure
(5, 2, '2025-03-01', 25000, 23000, 0.00),
(5, 3, '2025-03-01', 4500, 3500, 0.00),
(5, 4, '2025-03-01', 3500, 2800, 0.00),
(5, 5, '2025-03-01', 4500, 2900, 0.00),
(5, 6, '2025-03-01', 3000, 2500, 0.00),
(5, 7, '2025-03-01', 3500, 2900, 0.00),
(5, 8, '2025-03-01', 3000, 2800, 0.00),
(5, 9, '2025-03-01', 500, 185, 0.00),
(5, 10, '2025-03-01', 100, 58, 0.00),
(5, 11, '2025-03-01', 16000, 15000, 0.00),
(5, 12, '2025-03-01', 8000, 6900, 0.00),
(5, 13, '2025-03-01', 3800, 3500, 0.00);

SELECT 
    p.province_name, 
    m.variant_name, 
    perf.quantity_sold,
    RANK() OVER (PARTITION BY perf.province_id ORDER BY perf.quantity_sold DESC) as product_rank
FROM Monthly_Performance perf
JOIN Provinces p ON perf.province_id = perf.province_id
JOIN Milk_Specifications m ON perf.variant_id = m.variant_id
WHERE perf.report_month = '2025-03-01'
LIMIT 5; -- This query helps to identify the top products for each province.

SELECT 
    p.province_name, 
    perf.report_month, 
    SUM(perf.operating_expenditure) OVER (PARTITION BY perf.province_id ORDER BY perf.report_month) as cumulative_spending
FROM Monthly_Performance perf
JOIN Provinces p ON perf.province_id = p.province_id
WHERE perf.operating_expenditure > 0; -- This query helps to show cumulative expenditure

SELECT 
    m.variant_name, 
    perf.report_month, 
    perf.quantity_sold,
    LAG(perf.quantity_sold) OVER (PARTITION BY perf.variant_id, perf.province_id ORDER BY perf.report_month) as prev_month_sales,
    (perf.quantity_sold - LAG(perf.quantity_sold) OVER (PARTITION BY perf.variant_id, perf.province_id ORDER BY perf.report_month)) as unit_growth
FROM Monthly_Performance perf
JOIN Milk_Specifications m ON perf.variant_id = m.variant_id
WHERE perf.province_id = 1; -- This query shows the growth and decline in demand for any province selected

SELECT 
    p.province_name, 
    SUM(perf.quantity_sold) as total_units,
    NTILE(6) OVER (ORDER BY SUM(perf.quantity_sold) DESC) as performance_quartile
FROM Monthly_Performance perf
JOIN Provinces p ON perf.province_id = p.province_id
GROUP BY p.province_name; -- This query ranks the provinces by how much they sold 

SELECT 
    m.variant_name, 
    perf.report_month, 
    perf.quantity_sold,
    AVG(perf.quantity_sold) OVER (
        PARTITION BY perf.variant_id, perf.province_id 
        ORDER BY perf.report_month 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) as three_month_avg
FROM Monthly_Performance perf
JOIN Milk_Specifications m ON perf.variant_id = m.variant_id; -- This shows the average units sold of each product for 3 month by province 

SELECT 
    p.province_name, 
    m.variant_name, 
    mp.quantity_sold
FROM Monthly_Performance mp
INNER JOIN Provinces p ON mp.province_id = p.province_id
INNER JOIN Milk_Specifications m ON mp.variant_id = m.variant_id
ORDER BY mp.report_month; -- Link products and regions to view monthly distribution trends

SELECT 
    p.province_name, 
    mp.report_month,
    mp.quantity_sold
FROM Provinces p
LEFT JOIN Monthly_Performance mp ON p.province_id = mp.province_id
WHERE mp.record_id IS NULL; -- List all regions that failed to submit supply or sales data for the quarter
                            -- but we never set any number to be met it's null

SELECT 
    m.variant_name, 
    mp.quantity_sold
FROM Monthly_Performance mp
RIGHT JOIN Milk_Specifications m ON mp.variant_id = m.variant_id
WHERE mp.variant_id IS NULL; -- Uses RIGHT JOIN to ensure all specifications are checked against sales records.
                             -- to make sure there are  no products without transactions

SELECT 
    a.report_month,
    a.province_id AS Prov_A, a.quantity_sold AS Sales_A,
    b.province_id AS Prov_B, b.quantity_sold AS Sales_B
FROM Monthly_Performance a
JOIN Monthly_Performance b ON a.report_month = b.report_month 
    AND a.variant_id = b.variant_id
    AND a.province_id <> b.province_id
WHERE a.province_id = 1 AND b.province_id = 5; -- Can be used to compare to 2 provinces

Here is the breakdown for the Aggregate Window Functions. This is where we track the "financial health" of each province by looking at spending trends and sales volumes over the quarter.

SQL Query: Financial and Sales Aggregates
SQL
/* AGGREGATE ANALYSIS: 
   Calculates running totals and moving averages for operating costs 
   and sales volumes. We use ROWS and RANGE frames to demonstrate 
   different ways of looking at cumulative data.
*/

SELECT 
    p.province_name, 
    mp.report_month, 
    mp.quantity_sold,
    -- 1. Running Total of Sales (using ROWS frame)
    SUM(mp.quantity_sold) OVER(
        PARTITION BY p.province_id, mp.variant_id 
        ORDER BY mp.report_month 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_units_sold,

    -- 2. 3-Month Moving Average of Sales (using ROWS frame)
    AVG(mp.quantity_sold) OVER(
        PARTITION BY p.province_id, mp.variant_id 
        ORDER BY mp.report_month 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS three_month_moving_avg,

    -- 3. Monthly Spend Benchmark (MAX/MIN for the month)
    MAX(mp.operating_expenditure) OVER(
        PARTITION BY p.province_id 
        ORDER BY mp.report_month 
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS max_monthly_spend_in_quarter
FROM Monthly_Performance mp
JOIN Provinces p ON mp.province_id = p.province_id
-- Focusing on Whole Milk 500ml for clarity in the results
WHERE mp.variant_id = 1;

-- Comparing the current month's sales to the previous (LAG) and 
-- next (LEAD) months to calculate growth rates and performance trends.

SELECT 
    p.province_name, 
    m.variant_name, 
    mp.report_month, 
    mp.quantity_sold,
    -- Retrieves the sales value from the previous month
    LAG(mp.quantity_sold) OVER(
        PARTITION BY p.province_id, m.variant_id 
        ORDER BY mp.report_month
    ) AS previous_month_sales,
    -- Retrieves the sales value for the upcoming month
    LEAD(mp.quantity_sold) OVER(
        PARTITION BY p.province_id, m.variant_id 
        ORDER BY mp.report_month
    ) AS forecasted_next_month,
    -- Calculating the actual difference in units
    (mp.quantity_sold - LAG(mp.quantity_sold) OVER(
        PARTITION BY p.province_id, m.variant_id 
        ORDER BY mp.report_month
    )) AS unit_growth_variance
FROM Monthly_Performance mp
JOIN Provinces p ON mp.province_id = p.province_id
JOIN Milk_Specifications m ON mp.variant_id = m.variant_id
WHERE m.variant_id IN (1, 2); -- Focus on high-volume Whole Milk and Ikivuguto
