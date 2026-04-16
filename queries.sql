-- View all students
SELECT *
FROM Students;

-- View all courses
SELECT *
FROM Courses;

-- View all enrollments with student and course details
SELECT
    e.enrollment_id,
    s.student_id,
    s.first_name,
    s.last_name,
    c.course_name,
    e.enrollment_date,
    e.status
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Find all courses taken by a specific student
SELECT
    s.first_name,
    s.last_name,
    c.course_name,
    e.status
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE s.student_id = 1;

-- Count how many students are enrolled in each course
SELECT
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
ORDER BY total_students DESC, c.course_name;

-- Count enrollments by status
SELECT
    status,
    COUNT(*) AS total_enrollments
FROM Enrollments
GROUP BY status
ORDER BY total_enrollments DESC;

-- Find students with more than one course
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    COUNT(e.course_id) AS course_count
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(e.course_id) > 1
ORDER BY course_count DESC, s.last_name;
