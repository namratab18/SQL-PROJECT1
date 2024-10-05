-- Create index on StudentID in the Enrollments table
CREATE INDEX idx_student_enrollment ON Enrollments (StudentID);

-- Create index on CourseID in the Enrollments table
CREATE INDEX idx_course_enrollment ON Enrollments (CourseID);
