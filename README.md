# Student Management Database (SQL)

## Overview
This project is a relational database designed to manage students, courses, and enrollments. It demonstrates how tables connect through primary and foreign keys and includes practical SQL queries for retrieving and analyzing data.

## Database Structure
- `Students` table
- `Courses` table
- `Enrollments` table to link students and courses

## Key Features
- Uses primary and foreign keys
- Demonstrates one-to-many and many-to-many relationships
- Includes queries for retrieval and analysis
- Shows basic database design and normalization
- Covers `SELECT`, `JOIN`, and `GROUP BY`

## Files
- `schema.sql` - creates the database tables
- `sample_data.sql` - inserts example records
- `queries.sql` - useful queries for reporting and analysis

## Entity Relationships
- One student can have many enrollments
- One course can have many enrollments
- `Enrollments` resolves the many-to-many relationship between students and courses

## Normalization Notes
- **First Normal Form (1NF):** each column stores atomic values
- **Second Normal Form (2NF):** non-key attributes depend on the full primary key
- **Third Normal Form (3NF):** student and course details are stored separately to reduce redundancy

## How to Use
1. Run `schema.sql` to create the tables.
2. Run `sample_data.sql` to populate the database.
3. Run `queries.sql` to test retrieval and analysis queries.

## Future Improvements
- Add more complex queries
- Track grades and attendance
- Integrate with a front-end application
