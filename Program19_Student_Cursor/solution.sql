USE CollegeDB;

DROP PROCEDURE IF EXISTS DisplayStudents;

DELIMITER $$

CREATE PROCEDURE DisplayStudents()
BEGIN

    -- Declare variables

    -- Declare cursor

    -- Declare NOT FOUND handler

    -- Open cursor

    -- Fetch records using a loop

    -- Close cursor

END $$

DELIMITER ;

CALL DisplayStudents();
DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    v_StudentID     Student.StudentID%TYPE;
    v_StudentName   Student.StudentName%TYPE;
    v_DepartmentID  Student.DepartmentID%TYPE;
BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO v_StudentID, v_StudentName, v_DepartmentID;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_StudentID ||
            ', Name: ' || v_StudentName ||
            ', Department ID: ' || v_DepartmentID
        );
    END LOOP;

    CLOSE student_cursor;
END;
/

