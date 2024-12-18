-- Create a table for storing large text data
-- This table is designed to hold articles, long descriptions, or other large text content

-- Table: large_text_data
CREATE TABLE large_text_data (
    -- Primary key, auto-incrementing
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Short title or description of the content
    -- VARCHAR(255) is suitable for titles or short descriptions
    title VARCHAR(255),
    
    -- Main content column
    -- MEDIUMTEXT can store up to 16MB of text data
    -- Suitable for articles, long descriptions, or HTML content
    content MEDIUMTEXT,
    
    -- Timestamp to record when the entry was created
    -- Automatically set to the current time when a row is inserted
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

