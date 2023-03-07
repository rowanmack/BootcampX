
SELECT students.name as student, 
AVG(assignment_submissions.duration) as average_assignment_duration,
AVG(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;


-- students.name
-- students.id
-- assignment_submissions.student_id
-- assignment_submissions.assignment_id
-- assignment_submissions.duration
-- assignments.id
-- assignments.duration
-- Order by average completion time from smallest to largest.
-- Only get currently enrolled students.
-- This will require data from students, assignment_submissions, and assignments.