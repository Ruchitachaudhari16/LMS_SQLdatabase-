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
    
