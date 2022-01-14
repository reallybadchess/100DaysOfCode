/*
Create a new database called "school" this database should have two tables: teachers and students.

The students table should have columns for student_id, first_name,last_name, homeroom_number, phone,
email, and graduation year.

The teachers table should have columns for teacher_id, first_name, last_name,

homeroom_number, department, email, and phone.

The constraints are mostly up to you, but your table constraints do have to consider the following:

     We must have a phone number to contact students in case of an emergency.

     We must have ids as the primary key of the tables

    Phone numbers and emails must be unique to the individual.

Once you've made the tables, insert a student named Mark Watney (student_id=1) who has a 
phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a 
homeroom number.

Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is 
from the Biology department. His contact info is: jsalk@school.org and a phone number of 777-555-4321.
*/

--Student table

CREATE
TABLE students(
	studentId SERIAL PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	homeroomNumber INTEGER CHECK (homeroomNumber > 0),
	phone VARCHAR(100) NOT NULL UNIQUE,
	email VARCHAR(100),
	gradYear VARCHAR(4)
);

--Teacher table
CREATE
TABLE teacher(
	teacherId SERIAL PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	homeroomNumber INTEGER CHECK (homeroomNumber > 0),
	department VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone VARCHAR(50) NOT NULL UNIQUE
);

--------
-- Adding somme information to the student table
INSERT
INTO students(firstName,lastName, phone, gradYear, homeroomNumber)
VALUES
('Mark', 'Watney', '777-555-12334', '2035', '5');

SELECT *
FROM students;

-- Adding info to teacher table

INSERT 
INTO teacher(firstName, lastName, homeroomNumber, department, email, phone)
VALUES
('Jonas', 'Salk', '5', 'Biology', 'jsallk@schoo.org', '777-555-4321');

SELECT * 
FROM teacher;