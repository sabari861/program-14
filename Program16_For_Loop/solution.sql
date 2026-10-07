USE CollegeDB;

DROP PROCEDURE IF EXISTS DisplayNumbers;

DELIMITER $$

CREATE PROCEDURE DisplayNumbers()
BEGIN

    -- Declare counter variable

    -- Write a loop to display numbers from 1 to 10

END $$

DELIMITER ;

CALL DisplayNumbers();
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/
