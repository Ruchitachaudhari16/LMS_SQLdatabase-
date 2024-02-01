SELECT * FROM lms.mentortechstack;
INSERT INTO mentor (Id, name, mentor_type, lab_id, status, creator_user)
VALUES
(1, 'Sunil', 'Lead Mentor', 1, 'Active', 'user1'),
(2, 'Aishwarya', 'Buddy Mentor', 2, 'Inactive', 'user2'),
(3, 'Gunjan', 'Lead Mentor', 1, 'Active', 'user3'),
(4, 'Shaikh', 'Practice mentor', 2, 'Inactive', 'user1'),
(5, 'venkat', 'ideation', 4, 'Active', 'user2'),
(6, 'Pooja', 'Buddy Mentor', 5, 'Inactive', 'user3');
