-- Inserting data into faculties table
INSERT INTO faculties (faculty_name) VALUES
    ('Faculty of Engineering');

-- Inserting data into departments table
INSERT INTO departments (department_name, faculty_id) VALUES
    ('Computer Science', 1);

-- Inserting data into teachers table
INSERT INTO teachers (first_name, last_name, department_id) VALUES
    ('John', 'Doe', 1),
    ('Alice', 'Smith', 1),
    ('Michael', 'Johnson', 1),
    ('Emily', 'Brown', 1),
    ('David', 'Wilson', 1);

-- Inserting data into courses table
INSERT INTO courses (subject, description, teacher_id) VALUES
    ('Introduction to Programming', 'Basic programming concepts', 1),
    ('Data Structures', 'Advanced data structures and algorithms', 2),
    ('Database Management Systems', 'Introduction to databases', 3),
    ('Computer Networks', 'Fundamentals of computer networks', 4),
    ('Software Engineering', 'Principles of software engineering', 5);

-- Inserting data into groups table
INSERT INTO groups (group_name, department_id) VALUES
    ('Group A', 1),
    ('Group B', 1);

-- Inserting data into students table
INSERT INTO students (first_name, last_name, group_id) VALUES
    ('Emma', 'Johnson', 1),
    ('Oliver', 'Williams', 1),
    ('Sophia', 'Jones', 1),
    ('James', 'Taylor', 2),
    ('Isabella', 'Brown', 2);

-- Inserting data into groups_lessons table
INSERT INTO groups_lessons (group_id, course_id) VALUES
    (1, 1), -- Group A taking Introduction to Programming
    (1, 2), -- Group A taking Data Structures
    (1, 4), -- Group A taking Computer Networks
    (2, 3), -- Group B taking Database Management Systems
    (2, 5), -- Group B taking Software Engineering
    (1, 3), -- Group A also taking Database Management Systems
    (2, 2); -- Group B also taking Data Structures
