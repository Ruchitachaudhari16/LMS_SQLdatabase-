SELECT * FROM lms.candidate_documents;
INSERT INTO candidate_documents (Id, candidate_id, doc_type, doc_path, Status, creator_stamp, creator_user
) VALUES (1, 1, 'Experience Letter', '/documents/experienceletter.pdf', 'Active','2022-03-02 14:45:00', 1),
(2, 2, 'Degree Certificates', '/documents/degreecertificate.docx', 'Inactive','2022-03-01 12:30:00', 2),
(3, 3, 'Account Details', '/documents/accountdetail.pdf', 'Active','2022-03-02 14:45:00', 3),
(4, 4, 'Reference Letter', '/documents/reference_letter_user.pdf', 'Inactive', '2022-03-01 12:30:00',1),
(5, 5, 'Portfolio', '/documents/portfolio_user5.zip', 'Active', '2022-03-02 14:45:00',2);