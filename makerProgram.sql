SELECT * FROM lms.maker_program;
INSERT INTO Maker_Program (Id,program_name,program_type,program_link,tech_stack_id,
    tech_type_id,is_program_approved,Description,status,creator_stamp,Creator_user
) VALUES (1,' Program','Web Development','https://javatpoint.com',
    1, 1,true,'WebApp program description.','Active','2022-03-02 14:45:00','User7'
),
(2, 'Project','App Development Project','https://appproject.com',
    2, 1,true,'WebApp program description.','Active','2022-03-02 14:45:00','User8'
),
(3,'Project','Data Science ','https://dataanalysis.com',
    2, 1,false,'data science tool.','Inctive','2022-03-02 14:45:00','User2'
);
