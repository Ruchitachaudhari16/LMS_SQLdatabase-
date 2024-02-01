SELECT * FROM lms.mentor_ideation_map;
INSERT INTO mentor_ideation_map (
    Id, parent_mentor_id, mentor_id, status, creator_user
) VALUES
    (1, 1, 2, 'Active', 'Admin1'),
    (2, 3, 3, 'Inactive', 'Admin2'),
    (3,4,1,'Active','Admin3');
