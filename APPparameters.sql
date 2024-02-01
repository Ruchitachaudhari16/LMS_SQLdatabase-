SELECT * FROM lms.appparameters;
INSERT INTO appparameters (
    Id, key_type, key_value, key_text, cur_status,
    lastupd_user, lastupd_stamp, creator_stamp, creator_user, seq_num
) VALUES (
    1, 'DOC_STATUS', 'PND', 'PENDING', 'Active',
    'User1', '2022-03-02 14:45:00', '2022-03-02 14:45:00', 'User1', 1
),
(
    2, 'DOC_STATUS', 'RCEVD', 'RECEIVED ', 'Active',
    'User2', '2022-03-01 12:30:00', '2022-03-01 12:30:00', 'User2', 2
),
(
    3, 'DOC_STATUS', 'CFM', 'CONFIRM', 'INActive',
    'User3', '2022-03-02 14:45:00', '2022-03-02 14:45:00', 'User3', 3
);
