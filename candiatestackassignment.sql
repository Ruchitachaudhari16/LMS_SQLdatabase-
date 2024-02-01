SELECT * FROM lms.candidatestackassignment;
-- Inserting Record 1
INSERT INTO your_table (requirement_id, candidate_id, assign_date, complete_date, Status, creator_stamp, creator_user)
VALUES (101, 201, '2024-02-01', '2024-02-10', 'In Progress','2024-02-01 12:34:56', 'John Doe');

-- Inserting Record 2
INSERT INTO candidatestackassignment (Id,requirement_id, candidate_id, assign_date, complete_date, Status, creator_stamp, creator_user)
VALUES (1,2, 12, '2024-02-02', '2024-02-15', 'Completed', '2024-02-01 12:34:56', 'admin');

-- Inserting Record 3
INSERT INTO candidatestackassignment (Id,requirement_id, candidate_id, assign_date, complete_date, Status, creator_stamp, creator_user)
VALUES (2,3,20, '2024-02-05', NULL, 'Assigned','2024-02-01 12:34:56', 'user');

-- Inserting Record 4
INSERT INTO candidatestackassignment (Id,requirement_id, candidate_id, assign_date, complete_date, Status, creator_stamp, creator_user)
VALUES (3,1 ,17, '2024-02-08', NULL, 'Pending', '2024-02-01 12:34:56', 'user');
