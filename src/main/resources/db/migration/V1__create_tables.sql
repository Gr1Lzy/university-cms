CREATE TABLE faculties (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    faculty_name VARCHAR(255) NOT NULL
);

CREATE TABLE departments (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    faculty_id BIGINT NOT NULL,
    CONSTRAINT fk_faculty_id FOREIGN KEY (faculty_id) REFERENCES faculties(id)
);

CREATE TABLE teachers (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id BIGINT,
    CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE courses (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(255) NOT NULL,
    description TEXT,
    teacher_id BIGINT,
    CONSTRAINT fk_teacher_id FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE groups (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(255) NOT NULL,
    department_id BIGINT,
    CONSTRAINT fk_group_department_id FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE students (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    group_id BIGINT,
    CONSTRAINT fk_group_id FOREIGN KEY (group_id) REFERENCES groups(id)
);

CREATE TABLE groups_lessons (
    group_id BIGINT,
    course_id BIGINT,
    PRIMARY KEY (group_id, course_id),
    CONSTRAINT fk_group_lesson_group_id FOREIGN KEY (group_id) REFERENCES groups(id),
    CONSTRAINT fk_group_lesson_course_id FOREIGN KEY (course_id) REFERENCES courses(id)
);
