- 1. Create Table
CREATE TABLE students (
    student_name VARCHAR(50),
    ID VARCHAR(10) PRIMARY KEY,
    class INT,
    section CHAR(1),
    total_marks INT
);

-- 2. Insert Records
INSERT INTO students (student_name, ID, class, section, total_marks) VALUES
-- Class 9, Section A
('Aarav Sharma', 'STU101', 9, 'A', 485),
('Ananya Reddy', 'STU102', 9, 'A', 462),
('Rahul Verma', 'STU103', 9, 'A', 462),
('Priya Nair', 'STU104', 9, 'A', 415),
('Aditya Joshi', 'STU105', 9, 'A', 415),

-- Class 9, Section B
('Kavya Patel', 'STU106', 9, 'B', 498),
('Sneha Kulkarni', 'STU107', 9, 'B', 440),
('Rohan Gupta', 'STU108', 9, 'B', 440),
('Varun Teja', 'STU109', 9, 'B', 440),
('Pooja Hegde', 'STU110', 9, 'B', 395),

-- Class 10, Section A
('Siddharth Rao', 'STU111', 10, 'A', 490),
('Vikram Mehta', 'STU112', 10, 'A', 465),
('Neha Sharma', 'STU113', 10, 'A', 465),
('Suresh Raina', 'STU114', 10, 'A', 390),
('Divya Singh', 'STU115', 10, 'A', 390),

-- Class 10, Section B
('Diya Mehra', 'STU116', 10, 'B', 482),
('Manish Kumar', 'STU117', 10, 'B', 450),
('Ishan Kishan', 'STU118', 10, 'B', 450),
('Ritu Phogat', 'STU119', 10, 'B', 420),
('Tarun Bajaj', 'STU120', 10, 'B', 420);
