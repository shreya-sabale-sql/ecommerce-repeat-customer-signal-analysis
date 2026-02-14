DROP TABLE IF EXISTS product_sales;
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    brand TEXT,
    base_price NUMERIC
);

CREATE TABLE product_sales (
    product_id TEXT,
    month DATE,
    units_sold INT,
    avg_selling_price NUMERIC,
    avg_discount_pct NUMERIC,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
