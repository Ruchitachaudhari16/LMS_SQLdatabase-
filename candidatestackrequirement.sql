SELECT * FROM lms.candidatestackassignment;
INSERT INTO CandidateStackAssignment (
    Id, requirement_id, candidate_id, assign_date, complete_date, Status, creator_user
) VALUES
    (1, 1, 19, '2024-02-15', '2024-02-20', 'Assigned', 'Admin1'),
    (2, 2, 20, '2024-02-18', '2024-02-25', 'Completed', 'Admin2'),
    (3, 3, 13, '2024-02-20', '2024-02-25', 'Assigned', 'Admin3'),
    (4, 4, 17, '2024-02-25', '2024-02-29', 'Assigned', 'Admin1');
