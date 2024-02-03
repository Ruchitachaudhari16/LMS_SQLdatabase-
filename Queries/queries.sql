use lms;
-- 1. Find all candidates having java technology.
SELECT fellowship_candidate.first_name,fellowship_candidate.last_name
FROM fellowship_candidate
JOIN tech_stack 
ON fellowship_candidate.cic_id=tech_stack.Id
where tech_stack.tech_name='java';

-- 2- find all mentors and ideations have java technology
-- m.*: Selects all columns from the Mentor table (m is an alias for Mentor).
-- mt.*: Selects all columns from the MentorTechStack table (mt is an alias for MentorTechStack).
-- mim.*: Selects all columns from the Mentor_Ideation_Map table (mim is an alias for Mentor_Ideation_Map).
SELECT
    m.*,
    mt.*,
    mim.*
FROM
    Mentor m
JOIN
    MentorTechStack mt ON m.Id = mt.mentor_id
JOIN
    Tech_Stack ts ON mt.tech_stack_id = ts.Id
JOIN
    Mentor_Ideation_Map mim ON m.Id = mim.mentor_id
WHERE
    ts.tech_name = 'Java';
    
    -- 3.- find name of candidate which did not assign technology
    SELECT
    ud.first_name,
    ud.last_name
FROM
    user_details ud
LEFT JOIN
    CandidateStackAssignment cs ON ud.id = cs.candidate_id
WHERE
    cs.candidate_id IS NULL;

-- 4.- find name of cnadidate which is not submit documents
SELECT
    ud.first_name,
    ud.last_name
FROM
    user_details ud
LEFT JOIN
    candidate_documents cd ON ud.id = cd.candidate_id
WHERE
    cd.candidate_id IS NULL;

-- 5.- find name of candidate which is not submit bank details
SELECT
    ud.first_name,
    ud.last_name
FROM
    user_details ud
LEFT JOIN
    candidate_bank_details cbd ON ud.id = cbd.candidate_Id
WHERE
    cbd.candidate_Id IS NULL;

-- 6.-find name of candidates which is joined in feb  month
SELECT
    ud.first_name,
    ud.last_name
FROM
    user_details ud
JOIN
    fellowship_candidate fc ON ud.id = fc.creator_user_id
WHERE
    MONTH(fc.joining_date) = 2;

-- 7.-find name of candidates which is end of couse in feb
SELECT u.first_name, u.last_name
FROM user_details u
JOIN fellowship_candidate fc ON u.id = fc.creator_user_id
WHERE fc.hired_date IS NOT NULL
  AND MONTH(fc.hired_date) = 2;
  
  -- 8.-find name of candidates which is ending date accounding to joining date if joining date is 22-02-2019
  SELECT u.first_name, u.last_name
FROM user_details u
JOIN fellowship_candidate fc ON u.id = fc.creator_user_id
WHERE fc.joining_date IS NOT NULL
  AND DATE_ADD(fc.joining_date, INTERVAL 12 MONTH) = '2019-02-22';
  
  -- 9.-find all candidates which is passed out in 2019 year
  SELECT u.first_name, u.last_name
FROM user_details u
JOIN candidate_qualification cq ON u.id = cq.candidate_id
WHERE cq.passing_year = 2019;

-- 10.
SELECT u.first_name, u.last_name, ts.tech_name
FROM user_details u
JOIN candidate_qualification cq ON u.id = cq.candidate_id
JOIN candidatestackassignment csa ON u.id = csa.candidate_id
JOIN tech_stack ts ON csa.tech_stack = ts.Id
WHERE cq.degree_name = 'MCA';

SELECT u.first_name, u.last_name, ts.tech_name
FROM user_details u
JOIN candidate_stack_assignment csa ON u.id = csa.candidate_id
JOIN tech_stack ts ON csa.tech_stack_id = ts.Id -- Adjust this part based on the actual relationship
WHERE u.id IN (
    SELECT cq.candidate_id
    FROM candidate_qualification cq
    WHERE cq.degree_name = 'MCA'
);

-- 11.-how many candiates which is having last month
 SELECT COUNT(*) AS candidate_count
FROM user_details u
JOIN hired_candidate hc ON u.id = hc.creator_user_id
WHERE MONTH(hc.hired_date) = MONTH(CURRENT_DATE - INTERVAL 1 MONTH)
  AND YEAR(hc.hired_date) = YEAR(CURRENT_DATE - INTERVAL 1 MONTH);
  
  -- 12.how many week candidate completed in the bridgelabz since joining date candidate id is 12
  SELECT u.first_name, u.last_name, DATEDIFF(CURDATE(), fc.joining_date) / 7 AS weeks_completed
FROM user_details u
JOIN fellowship_candidate fc ON u.id = fc.creator_user_id
WHERE u.id = 12;

-- 13.  To find the joining date of a candidate with ID 17,
SELECT u.first_name, u.last_name, fc.joining_date
FROM user_details u
JOIN fellowship_candidate fc ON u.id = fc.creator_user_id
WHERE u.id = 17;





