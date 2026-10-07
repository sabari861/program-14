USE CollegeDB;

DROP PROCEDURE IF EXISTS CalculateSum;

DELIMITER $$

CREATE PROCEDURE CalculateSum()
BEGIN
    -- Declare two variables
    -- Assign values
    -- Calculate and display the sum

END $$

DELIMITER ;

-- Execute the procedure
CALL CalculateSum();
DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 20;
    total NUMBER;
BEGIN
    total := num1 + num2;

    DBMS_OUTPUT.PUT_LINE('Sum = ' || total);
END;
/
