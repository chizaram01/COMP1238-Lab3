SELECT course_name || ' - ' || semester AS Course_Semester
FROM courses;


SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';


SELECT *
FROM assignments
WHERE due_date > date('now');


SELECT status, COUNT(*) AS Count
FROM assignments
GROUP BY status;


SELECT course_name
FROM courses
ORDER BY length(course_name) DESC
LIMIT 1;


SELECT upper(course_name) AS Course_Name_Upper
FROM courses;



SELECT title
FROM assignments
WHERE due_date LIKE '____-09-%';


SELECT *
FROM assignments
WHERE due_date IS NULL;


SELECT courses.course_id, COUNT(assignments.id) AS Total_Assignments
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
GROUP BY courses.course_id;


SELECT courses.*
FROM courses
LEFT JOIN assignments ON courses.course_id = assignments.course_id
WHERE assignments.id IS NULL;
