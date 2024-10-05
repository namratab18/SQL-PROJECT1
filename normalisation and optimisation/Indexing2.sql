-- Find all courses a student is enrolled in
SELECT Courses.CourseName
FROM Enrollments
JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Enrollments.StudentID = 101;
