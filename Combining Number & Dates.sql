-- Create a table to store numeric values along with dates
CREATE TABLE number_date_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_date DATE,               -- Stores the date of the event
    attendees INT,                 -- Number of attendees (integer)
    ticket_price DECIMAL(10, 2),   -- Ticket price (decimal for currency)
    total_revenue DECIMAL(10, 2)   -- Total revenue calculated from attendees and ticket price
);

-- Insert sample data into the number_date_example table
INSERT INTO number_date_example (event_date, attendees, ticket_price)
VALUES 
('2024-01-15', 150, 25.00),
('2024-02-20', 200, 30.00),
('2024-03-10', 100, 20.50);

-- Update total_revenue based on attendees and ticket_price
UPDATE number_date_example
SET total_revenue = attendees * ticket_price;

-- Query to select all events with their details
SELECT 
    id,
    event_date,
    attendees,
    ticket_price,
    total_revenue
FROM 
    number_date_example;

-- Example of calculating the average ticket price
SELECT 
    AVG(ticket_price) AS average_ticket_price
FROM 
    number_date_example;

-- Example of finding events with revenue greater than a certain amount
SELECT 
    id,
    event_date,
    total_revenue
FROM 
    number_date_example
WHERE 
    total_revenue > 4000;

-- Example of finding events in the future based on today's date
SELECT 
    id,
    event_date,
    DATEDIFF(event_date, CURDATE()) AS days_until_event
FROM 
    number_date_example
WHERE 
    event_date > CURDATE();
