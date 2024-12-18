-- Create a table to store various date and time data types
CREATE TABLE date_time_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE,               -- Stores date in 'YYYY-MM-DD' format
    event_time TIME,               -- Stores time in 'HH:MM:SS' format
    event_datetime DATETIME,       -- Stores both date and time
    event_timestamp TIMESTAMP,     -- Stores timestamp in UTC
    event_year YEAR                -- Stores year in 'YYYY' format
);

-- Insert sample data into the date_time_example table
INSERT INTO date_time_example (event_name, event_date, event_time, event_datetime, event_timestamp, event_year)
VALUES 
('New Year Celebration', '2025-01-01', '00:00:00', '2025-01-01 00:00:00', NOW(), 2025),
('Independence Day', '2025-07-04', '12:00:00', '2025-07-04 12:00:00', NOW(), 2025);

-- Query to select all events with their respective dates and times
SELECT 
    id,
    event_name,
    event_date,
    event_time,
    event_datetime,
    event_timestamp,
    event_year
FROM 
    date_time_example;

-- Example of using DATE() function to extract the date part from a datetime value
SELECT 
    id,
    event_name,
    DATE(event_datetime) AS event_date_only
FROM 
    date_time_example;

-- Example of using TIME() function to extract the time part from a datetime value
SELECT 
    id,
    event_name,
    TIME(event_datetime) AS event_time_only
FROM 
    date_time_example;

-- Example of adding an interval to a date using DATE_ADD function
SELECT 
    id,
    event_name,
    DATE_ADD(event_date, INTERVAL 1 DAY) AS next_day_event_date
FROM 
    date_time_example;

-- Example of formatting a datetime value using DATE_FORMAT function
SELECT 
    id,
    event_name,
    DATE_FORMAT(event_datetime, '%W, %M %d, %Y') AS formatted_event_date
FROM 
    date_time_example;
