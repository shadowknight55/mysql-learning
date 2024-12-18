-- Create a table to store various integer data types
CREATE TABLE integer_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    small_int_value SMALLINT,      -- Small integer (2 bytes)
    medium_int_value MEDIUMINT,    -- Medium integer (3 bytes)
    int_value INT,                  -- Standard integer (4 bytes)
    big_int_value BIGINT,           -- Large integer (8 bytes)
    tiny_int_value TINYINT          -- Tiny integer (1 byte)
);

-- Insert sample data into the integer_example table
INSERT INTO integer_example (small_int_value, medium_int_value, int_value, big_int_value, tiny_int_value)
VALUES 
(32767, 8388607, 2147483647, 9223372036854775807, 127),
(-32768, -8388608, -2147483648, -9223372036854775808, -128);

-- Query to select all samples with their integer values
SELECT 
    id,
    small_int_value,
    medium_int_value,
    int_value,
    big_int_value,
    tiny_int_value
FROM 
    integer_example;

-- Example of performing calculations with integer values
SELECT 
    id,
    small_int_value + 10 AS small_plus_ten,
    medium_int_value * 2 AS medium_times_two,
    int_value - 100 AS int_minus_hundred,
    big_int_value / 10 AS big_divided_by_ten,
    tiny_int_value + 1 AS tiny_plus_one
FROM 
    integer_example;

-- Example of using the MOD function to find remainders
SELECT 
    id,
    MOD(int_value, 100) AS remainder_of_int
FROM 
    integer_example;
