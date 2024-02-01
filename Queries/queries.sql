use lms;
-- 1. Find all candidates having java technology.
SELECT fellowship_candidate.first_name,fellowship_candidate.last_name
FROM fellowship_candidate
JOIN tech_stack 
ON fellowship_candidate.cic_id=tech_stack.Id
where tech_stack.tech_name='j'