SELECT * FROM lms.companyrequirement;
-- Inserting Record 1
INSERT INTO companyrequirement (id,company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_stamp, creator_user)
VALUES (1,10,'2024-02-01', 'New York', 1, '/documents/req1.doc', 10, 1, 2, 3, 4, 1, 2, 'Special notes for req 1', 'Active','2024-02-01 12:34:56' , 'user');

-- Inserting Record 2
INSERT INTO companyrequirement (id,company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_stamp, creator_user)
VALUES (2,9, '2024-02-02', 'San Francisco', 0, NULL, 5, 2, 1, 3, 4, 2, 1, NULL, 'Pending', '2024-02-01 12:34:56' , 'user');

-- Inserting Record 3
INSERT INTO companyrequirement (id,company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_stamp, creator_user)
VALUES (3, 6,'2024-02-05', 'London', 1, '/documents/req3.doc', 8, 3, 2, 1, 2, 1, 2, 'Notes for req 3', 'Active', '2024-02-01 12:34:56', 'user');

-- Inserting Record 4
INSERT INTO companyrequirement (id,company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_stamp, creator_user)
VALUES (4,4, '2024-02-08', 'Tokyo', 1, '/documents/req4.doc', 12, 4, 3, 2, 1, 2, 1, 'Additional notes for req 4', 'Active','2024-02-01 12:34:56', 'user');

-- Inserting Record 5
INSERT INTO companyrequirement (id,company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_stamp, creator_user)
VALUES (5, 2,'2024-02-10', 'Berlin', 0, NULL, 15, 3, 3, 1, 2, 4, 3, NULL, 'Pending','2024-02-01 12:34:56', 'user');
select * from companyrequirement;
