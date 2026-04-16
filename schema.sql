CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE,
    registration_date DATE NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    credits INT NOT NULL CHECK (credits > 0)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_enrollments_student
        FOREIGN KEY (student_id) REFERENCES Students(student_id),
    CONSTRAINT fk_enrollments_course
        FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    CONSTRAINT uq_student_course UNIQUE (student_id, course_id)
);
