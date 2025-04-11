# Godwyn

CREATE TABLE Professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_number VARCHAR(20),
    major VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE Rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(100),
    building VARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    department VARCHAR(100)
);

CREATE TABLE ClassSchedules (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    subject VARCHAR(100),
    schedule VARCHAR(100),
    room_id INT,
    professor_id INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id),
    FOREIGN KEY (professor_id) REFERENCES Professors(professor_id)
);

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_number VARCHAR(20),
    address TEXT,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);