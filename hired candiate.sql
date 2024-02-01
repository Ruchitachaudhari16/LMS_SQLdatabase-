SELECT * FROM lms.hired_candidate;
-- Insert a record into the hired_candidate table
INSERT INTO hired_candidate (first_name,middle_name,last_name,email_id,hired_city,degree,hired_date,mobile_number,permanent_pincode,
    hired_lab,attitude,communication_remark,knowledge_remark,aggregate_remark,status,creator_user_id) VALUES (
    'Ritvi','M','Sharma','user9@bridgelabz.com','Mumbai','Bachelor','2024-01-31', '9525351205','12345','Lab1','Positive','Good communication skills',
    'High knowledge level','Excellent','Hired',19 ),
    ('Devika', NULL, 'kale', 'user10@bridgelabz.com', 'Pune', 'PhD', '2024-02-02', '9012345555', '67890', 'Lab3', 'Neutral', 'Average communication skills', 'Moderate knowledge level', 'Good', 'Pending', 20), (
   
   'Ram', 'B', 'Sangle', 'user3@bridgelabz.com', 'NewMumbai', 'Bachelor', '2024-02-03', '5555555555', '98765', 'Lab1', 'Positive', 'Good communication skills', 'High knowledge level', 'Excellent', 'Hired', 13
), 
(
    'Rashmi', NULL, 'Deoda', 'user7@bridgelabz.com', 'City2', 'Master', '2024-02-04', '8956344567', '11223', 'Lab2', 'Positive', 'Excellent communication skills', 'High knowledge level', 'Outstanding', 'Hired',17
), (
    'Nikita', 'C', 'Rane', 'user2@bridgelabz.com', 'City3', 'Bachelor', '2024-02-05', '9876543210', '45678', 'Lab3', 'Positive', 'Good communication skills', 'Moderate knowledge level', 'Good', 'Hired',12
);

