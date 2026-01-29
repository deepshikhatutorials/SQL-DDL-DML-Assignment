-- Q3: Create Student table
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

-- Q4: Create Course table
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

-- Q5: Add City column
ALTER TABLE Student ADD City VARCHAR(30);

-- Q6: Add Semester column
ALTER TABLE Student ADD Semester INT;

-- Q7: Rename Phone to MobileNo
ALTER TABLE Student CHANGE Phone MobileNo VARCHAR(15);

-- Q8: Drop Course table
DROP TABLE Course;

-- Q9: Insert records
INSERT INTO Student VALUES
(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3),
(102, 'Aman', 'ECE', 22, '9876543222', 'Mumbai', 5),
(103, 'Neha', 'CSE', 21, '9876543333', 'Patna', 4),
(104, 'Pooja', 'IT', 19, '9876543444', 'Lucknow', 2),
(105, 'Rohit', 'ME', 23, '9876543555', 'Bhopal', 6);

-- Q10: Display all records
SELECT * FROM Student;

-- Q11: Display RollNo and Name
SELECT RollNo, Name FROM Student;

-- Q12: Students from CSE
SELECT * FROM Student WHERE Dept = 'CSE';

-- Q13: Age > 20
SELECT * FROM Student WHERE Age > 20;

-- Q14: Update Dept
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

-- Q15: Update City
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

-- Q16: Increase age
UPDATE Student SET Age = Age + 1;

-- Q17: Delete RollNo 105
DELETE FROM Student WHERE RollNo = 105;

-- Q18: Delete all records
DELETE FROM Student;