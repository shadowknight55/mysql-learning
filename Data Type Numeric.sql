-- Create a table to store various numeric data types
CREATE TABLE numeric_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    small_num SMALLINT,            -- Small integer (2 bytes)
    medium_num MEDIUMINT,          -- Medium integer (3 bytes)
    int_num INT,                    -- Standard integer (4 bytes)
    big_num BIGINT,                 -- Large integer (8 bytes)
    float_num FLOAT(7, 4),         -- Single-precision floating-point
    double_num DOUBLE(16, 8),       -- Double-precision floating-point
    decimal_num DECIMAL(10, 2)      -- Fixed-point decimal
);

-- Insert sample data into the numeric_example table
INSERT INTO numeric_example (small_num, medium_num, int_num, big_num, float_num, double_num, decimal_num)
VALUES 
(32767, 8388607, 2147483647, 9223372036854775807, 12345.6789, 9876543210.12345678, 12345.67),
(-32768, -8388608, -2147483648, -9223372036854775808, -12345.6789, -9876543210.12345678, -12345.67);

-- Query to select all samples with their numeric values
SELECT 
    id,
    small_num,
    medium_num,
    int_num,
    big_num,
    float_num,
    double_num,
    decimal_num
FROM 
    numeric_example;

-- Example of performing calculations with numeric values
SELECT 
    id,
    small_num + 10 AS small_plus_ten,
    medium_num * 2 AS medium_times_two,
    int_num - 100 AS int_minus_hundred,
    big_num / 10 AS big_divided_by_ten,
    float_num * 1.5 AS float_times_one_point_five,
    double_num + 1000 AS adjusted_double,
    decimal_num / 2 AS divided_decimal
FROM 
    numeric_example;

-- Example of finding the maximum value in the integer columns
SELECT 
    MAX(int_num) AS max_integer_value,
    MAX(big_num) AS max_big_integer_value
FROM 
    numeric_example;

-- Example of rounding a DECIMAL value
SELECT 
    id,
    ROUND(decimal_num, 1) AS rounded_decimal
FROM 
    numeric_example;
