INSERT INTO Students (student_id, first_name, last_name, email, date_of_birth, registration_date)
VALUES
    (1, 'Alice', 'Mokoena', 'alice.mokoena@example.com', '2003-02-14', '2025-01-10'),
    (2, 'Brian', 'Naidoo', 'brian.naidoo@example.com', '2002-08-21', '2025-01-10'),
    (3, 'Chloe', 'Dlamini', 'chloe.dlamini@example.com', '2004-05-09', '2025-01-12'),
    (4, 'David', 'Smith', 'david.smith@example.com', '2003-11-30', '2025-01-15');

INSERT INTO Courses (course_id, course_name, department, credits)
VALUES
    (101, 'Database Systems', 'Computer Science', 4),
    (102, 'Introduction to Programming', 'Computer Science', 3),
    (103, 'Business Mathematics', 'Business', 3),
    (104, 'Academic Writing', 'Humanities', 2);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date, status)
VALUES
    (1001, 1, 101, '2025-01-20', 'Active'),
    (1002, 1, 102, '2025-01-20', 'Active'),
    (1003, 2, 101, '2025-01-21', 'Active'),
    (1004, 2, 103, '2025-01-21', 'Completed'),
    (1005, 3, 102, '2025-01-22', 'Active'),
    (1006, 3, 104, '2025-01-22', 'Active'),
    (1007, 4, 103, '2025-01-23', 'Dropped');
