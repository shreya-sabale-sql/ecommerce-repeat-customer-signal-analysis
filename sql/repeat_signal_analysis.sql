-- Base trend analysis
SELECT
    product_id,
    month,
    units_sold,
    units_sold - LAG(units_sold)
        OVER (PARTITION BY product_id ORDER BY month) AS unit_change,
    avg_selling_price - LAG(avg_selling_price)
        OVER (PARTITION BY product_id ORDER BY month) AS price_change,
    avg_discount_pct - LAG(avg_discount_pct)
        OVER (PARTITION BY product_id ORDER BY month) AS discount_change
FROM product_sales
ORDER BY product_id, month;


-- Repeat signal classification
WITH signals AS (
    SELECT
        product_id,
        month,
        units_sold - LAG(units_sold)
            OVER (PARTITION BY product_id ORDER BY month) AS unit_change,
        avg_selling_price - LAG(avg_selling_price)
            OVER (PARTITION BY product_id ORDER BY month) AS price_change,
        avg_discount_pct - LAG(avg_discount_pct)
            OVER (PARTITION BY product_id ORDER BY month) AS discount_change
    FROM product_sales
)

SELECT
    product_id,
    month,
    CASE
        WHEN unit_change > 0
         AND price_change >= 0
         AND discount_change <= 0
            THEN 'Strong Repeat Signal'
        WHEN unit_change > 0
         AND discount_change > 0
            THEN 'Discount-Driven Demand'
        ELSE 'Weak / Mixed'
    END AS repeat_signal
FROM signals
ORDER BY product_id, month;

-- Product-level summary
WITH classified AS (
    SELECT
        product_id,
        CASE
            WHEN units_sold - LAG(units_sold)
                OVER (PARTITION BY product_id ORDER BY month) > 0
             AND avg_selling_price - LAG(avg_selling_price)
                OVER (PARTITION BY product_id ORDER BY month) >= 0
             AND avg_discount_pct - LAG(avg_discount_pct)
                OVER (PARTITION BY product_id ORDER BY month) <= 0
            THEN 1 ELSE 0
        END AS strong_repeat_flag
    FROM product_sales
)

SELECT
    product_id,
    COUNT(*) AS total_months,
    SUM(strong_repeat_flag) AS strong_repeat_months,
    ROUND(
        SUM(strong_repeat_flag) * 100.0 / COUNT(*),
        2
    ) AS strong_repeat_pct
FROM classified
GROUP BY product_id
ORDER BY strong_repeat_pct DESC;



