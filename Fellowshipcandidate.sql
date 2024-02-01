SELECT * FROM lms.fellowship_candidate;
INSERT INTO fellowship_candidate (
    cic_id, first_name, middle_name, last_name, email_id, hired_city, degree, hired_date,
    mobile_number, permanent_pincode, hired_lab, attitude, communication_remark, knowledge_remark,
    aggregate_remark, creator_user_id, birth_date, is_birth_date_verified, parent_name,
    parent_occupation, parents_mobile_number, parents_annual_salary, local_address,
    permanent_address, photo_path, joining_date, candidate_status, personal_information,
    bank_information, educational_information, document_status, remark
) VALUES
    (
        1, 'Ritvi', 'M', 'Sharma', 'user9@bridgelabz.com', 'Mumbai', 'Bachelor', '2024-01-31',
        '9525351205', '12345', 'Lab1', 'Positive', 'Good communication skills', 'High knowledge level',
        'Excellent', 19, '2000-05-15', 1, 'Mr. Sharma', 'Engineer', '9876543210', 1200000,
        '123 Main St, Mumbai', '456 Second St, Pune', '/photos/ritvi_sharma.jpg', '2024-02-15',
        'Hired', '25', '5678901234', 'Btech_ComputerScience', 'Documents received', 'Best'
    ),
    (
        2, 'Devika', NULL, 'kale', 'user10@bridgelabz.com', 'Pune', 'PhD', '2024-02-02',
        '9012345555', '67890', 'Lab3', 'Neutral', 'Average communication skills', 'Moderate knowledge level',
        'Good', 20, '1998-09-20', 1, 'Mrs. Kale', 'Professor', '9876543210', 800000,
        '789 Third St, Pune', '987 Fourth St, Mumbai', '/photos/devika_kale.jpg', '2024-02-18',
        'Pending', '27', '1234567890', 'BachlorOfElectricalEngg', 'Documents pending', 'Good'
    ),
    (
        3, 'Ram', 'B', 'Sangle', 'user3@bridgelabz.com', 'NewMumbai', 'Bachelor', '2024-02-03',
        '5555555555', '98765', 'Lab1', 'Positive', 'Good communication skills', 'High knowledge level',
        'Excellent', 13, '1999-12-10', 1, 'Mr. Sangle', 'Manager', '9876543210', 1500000,
        '456 Fifth St, NewMumbai', '321 Sixth St, Mumbai', '/photos/ram_sangle.jpg', '2024-02-20',
        'Hired', '28', '2345678901', 'Mechanical Engineering', 'Documents received', 'Average'
    ),
    (
        4, 'Rashmi', NULL, 'Deoda', 'user7@bridgelabz.com', 'City2', 'Master', '2024-02-04',
        '8956344567', '11223', 'Lab2', 'Positive', 'Excellent communication skills', 'High knowledge level',
        'Outstanding', 17, '1997-07-25', 1, 'Mrs. Deoda', 'CEO', '9876543210', 2000000,
        '654 Seventh St, City2', '852 Eighth St, NewMumbai', '/photos/rashmi_deoda.jpg', '2024-02-25',
        'Hired', '29', '4567890123', 'Bachlor in Electronics and communication', 'Documents pending', 'Excellent'
    ),
    (
        5, 'Nikita', 'C', 'Rane', 'user2@bridgelabz.com', 'City3', 'Bachelor', '2024-02-05',
        '9876543210', '45678', 'Lab3', 'Positive', 'Good communication skills', 'Moderate knowledge level',
        'Good', 12, '1996-03-05', 1, 'Mrs. Rane', 'Entrepreneur', '9876543210', 1800000,
        '741 Ninth St, City3', '963 Tenth St, Pune', '/photos/nikita_rane.jpg', '2024-03-01',
        'Hired', '26', '3456789012', 'Civil Engineering', 'Documents received', 'Good'
    );
