-- Create a table for storing JSON data
CREATE TABLE json_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample JSON data
INSERT INTO json_data (data) VALUES
('{"name": "John", "age": 30, "city": "New York"}'),
('{"name": "Alice", "age": 25, "city": "London"}');

-- Query specific fields from JSON
SELECT id, data->>'$.name' AS name, data->>'$.age' AS age
FROM json_data
WHERE data->>'$.city' = 'New York';

-- Query nested JSON data
SELECT id, data->>'$.address.street' AS street
FROM json_data
WHERE JSON_EXTRACT(data, '$.address.city') = 'London';

-- Update JSON data
UPDATE json_data
SET data = JSON_SET(data, '$.age', 31)
WHERE data->>'$.name' = 'John';
