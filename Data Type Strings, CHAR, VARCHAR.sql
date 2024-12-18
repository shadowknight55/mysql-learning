-- Create a table to store string data using CHAR and VARCHAR
CREATE TABLE string_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    char_value CHAR(10),          -- Fixed-length string (10 characters)
    varchar_value VARCHAR(255)     -- Variable-length string (up to 255 characters)
);

-- Insert sample data into the string_example table
INSERT INTO string_example (char_value, varchar_value)
VALUES 
('Hello     ', 'This is a variable length string.'),
('World     ', 'Another example of VARCHAR.'),
('Test      ', 'MySQL handles strings efficiently.');

-- Query to select all samples with their string values
SELECT 
    id,
    char_value,
    varchar_value
FROM 
    string_example;

-- Example of using LENGTH() function to find the length of strings
SELECT 
    id,
    char_value,
    LENGTH(char_value) AS char_length,
    LENGTH(varchar_value) AS varchar_length
FROM 
    string_example;

-- Example of using TRIM() function to remove extra spaces from CHAR values
SELECT 
    id,
    TRIM(char_value) AS trimmed_char_value,
    varchar_value
FROM 
    string_example;

-- Example of concatenating strings using CONCAT() function
SELECT 
    id,
    CONCAT(char_value, ' - ', varchar_value) AS combined_string
FROM 
    string_example;

-- Example of finding records where the VARCHAR value contains a specific substring
SELECT 
    id,
    varchar_value
FROM 
    string_example
WHERE 
    varchar_value LIKE '%variable%';
