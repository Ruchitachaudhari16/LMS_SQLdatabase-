SELECT * FROM lms.mentortechstack;
INSERT INTO mentortechstack (Id, mentor_id, tech_stack_id, status, creator_user)
VALUES
(1, 1, 1, 'Active', 'user1'),
(2, 2, 3, 'Inactive', 'user2'),
(3, 3, 2, 'Active', 'user3'),
(4, 4, 5, 'Inactive', 'user1'),
(5, 1, 4, 'Active', 'user2');
select * from mentortechstack;