-- Create a table to store floating-point data types
CREATE TABLE float_point_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    float_value FLOAT(7, 4),      -- Single-precision floating-point
    double_value DOUBLE(16, 8),    -- Double-precision floating-point
    decimal_value DECIMAL(10, 4)   -- Fixed-point decimal
);

-- Insert sample data into the float_point_example table
INSERT INTO float_point_example (name, float_value, double_value, decimal_value)
VALUES 
('Sample A', 123.4567, 1234567.89012345, 12345.6789),
('Sample B', 987.6543, 9876543.21098765, 98765.4321);

-- Query to select all samples with their floating-point values
SELECT 
    id,
    name,
    float_value,
    double_value,
    decimal_value
FROM 
    float_point_example;

-- Example of performing calculations with floating-point values
SELECT 
    id,
    name,
    float_value * 2 AS float_double,
    double_value + 1000 AS adjusted_double,
    decimal_value / 3 AS divided_decimal
FROM 
    float_point_example;

-- Example of rounding a DECIMAL value
SELECT 
    id,
    name,
    ROUND(decimal_value, 2) AS rounded_decimal
FROM 
    float_point_example;
