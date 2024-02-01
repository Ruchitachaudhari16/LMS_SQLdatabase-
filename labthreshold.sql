SELECT * FROM lms.lab_threshold;
INSERT INTO lab_threshold (
  id,lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, Status, creator_stamp, creator_user
) VALUES
(1,1, 100, 20, 30, 40, 'Active','2022-02-15 12:30:00', 1),
(2,2, 150, 25, 35, 45, 'Active','2022-02-16 14:45:00', 2),
(3,3, 120, 18, 28, 38, 'Inactive','2022-02-17 10:15:00', 1),
(4,4, 200, 30, 40, 50, 'Active','2022-02-18 08:00:00', 3),
(5,5, 80, 15, 25, 35, 'Inactive','2022-02-19 16:30:00', 2);