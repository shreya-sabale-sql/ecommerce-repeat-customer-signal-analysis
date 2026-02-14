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
