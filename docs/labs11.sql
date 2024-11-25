SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


SELECT MIN(due_date) AS earliest_due_date
FROM assignments;


SELECT MAX(due_date) AS latest_due_date
FROM assignments;


SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


SELECT MAX(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';


SELECT COUNT(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';



SELECT course_id, course_name
FROM courses
WHERE lab_days LIKE 'Tue%';


SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date
FROM courses
JOIN assignments
ON courses.course_id = assignments.course_id;
