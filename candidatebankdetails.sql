SELECT * FROM lms.hired_candidate;
-- Insert 10 records into the candidate_bank_details table
INSERT INTO candidate_bank_details (Id, candidate_Id, Name, Account_Number, Is_Account_Num_Verified, Ifsc_code, is_ifsc_code_verified,
    pan_number, is_pan_number_verified, addhaar_num, is_addhaar_num_verified, creator_stamp, creator_user)
VALUES
(101,20, 'Devika kale', '1234567890', true, 'ABCD123456', true, 'ABCDE1234F', true, '9012345555', true, '2024-02-01 10:00:00', 1),
( 102,13, 'Ram Sangle', '2345678901', false, 'WXYZ987654', false, 'ABCDE5678G', false, '5555555555', false, '2024-02-01 10:15:00', 2),
( 103,12, 'Nikita Rane', '3456789012', true, 'PQRS345678', true, 'ABCDE9012H', true, '9876543210', true, '2024-02-01 10:30:00', 3),
(104,17, 'Rashmi Deoda', '4567890123', false, 'LMNO456789', false, 'ABCDE3456J', false, '8956344567', false, '2024-02-01 10:45:00', 1),
(105,19, 'Ritvi Sharma', '5678901234', true, 'UVWX567890', true, 'ABCDE5678K', true, '9525351205', true, '2024-02-01 11:00:00', 2);
