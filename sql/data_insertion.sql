-- Insert products
COPY products
FROM '/path/to/products.csv'
DELIMITER ','
CSV HEADER;

-- Insert product sales
COPY product_sales
FROM '/path/to/product_sales.csv'
DELIMITER ','
CSV HEADER;
