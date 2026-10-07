USE CollegeDB;

DROP FUNCTION IF EXISTS CountStudentsByDepartment;

DELIMITER $$

CREATE FUNCTION CountStudentsByDepartment(
    p_department_id INT
)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN

    DECLARE student_count INT;

    -- Count students belonging to the given department

    -- Return the count

END $$

DELIMITER ;

-- Test
SELECT CountStudentsByDepartment(1) AS StudentCount;
CREATE OR REPLACE FUNCTION CountStudents (
    p_DepartmentID IN Student.DepartmentID%TYPE
)
RETURN NUMBER
IS
    student_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN student_count;
END;
/

