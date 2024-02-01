SELECT * FROM lms.company;
-- Create the Company table
CREATE TABLE Company (
    Id INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    location VARCHAR(255),
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user INT
);

-- Insert 10 records into the Company table
INSERT INTO Company (Id, name, address, location, status, creator_user)
VALUES
(1, 'Honeywell', '123 Main St', 'City1', 'Active', 1),
(2, 'Atos', '456 Oak St', 'City2', 'Inactive', 2),
(3, 'Capgemini', '789 Pine St', 'City3', 'Pending', 3),
(4, 'PQR Industries', '321 Elm St', 'City1', 'Active', 1),
(5, 'Amdocs', '654 Birch St', 'City2', 'Inactive', 2),
(6, 'QK', '987 Maple St', 'City3', 'Pending', 3),
(7, 'Infosys', '741 Cedar St', 'City1', 'Active', 1),
(8, 'wipro', '852 Pine St', 'City2', 'Inactive', 2),
(9, 'GHI Corporation', '963 Oak St', 'City3', 'Pending', 3),
(10, 'TCS', '159 Birch St', 'City1', 'Active', 1);
