-- create a table
CREATE TABLE customer (
    customer_id TEXT PRIMARY KEY,
    name TEXT,
    created_date TIMESTAMP,
    credit_score INTEGER,
    last_updated TIMESTAMP
);

-- insert some values
INSERT INTO customer (customer_id, name, created_date, credit_score, last_updated)
VALUES 
    ('00613C022', 'John Doe', '2022-09-01T18:53:22+0000', 702, '2022-09-02T09:10:52+0000'),
    ('00613C015', 'Nel Smith', '2022-09-01T18:53:22+0000', 680, '2022-09-02T09:10:52+0000');