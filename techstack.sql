SELECT * FROM lms.tech_stack;
INSERT INTO tech_stack (Id, tech_name, image_path, framework, cur_status, creator_user)
VALUES
(1, 'Java', '/images/java_logo.png', 'Spring', 'Active', 1),
(2, 'Python', '/images/python_logo.png', 'Django', 'Inactive', 2),
(3, 'JavaScript', '/images/javascript_logo.png', 'React', 'Active', 3),
(4, 'C#', '/images/csharp_logo.png', '.NET','Inactive',4),
(5,'Software Testing','/images/softwareTesting_logo.png','Selenium','Active',5);