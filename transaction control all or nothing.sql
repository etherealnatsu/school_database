-- Explicitly start a safe transaction block
BEGIN TRANSACTION;

BEGIN TRY
    -- Step 1: Insert a test student (Parent table)
    INSERT INTO Student (Student_ID, Cohort_ID, Fname, Lname, DATE_OF_BIRTH)
    VALUES (99, 1, 'Alice', 'Smith', '2004-01-15');

    -- Step 2: Insert into the Enrollment junction table (Child table)
    INSERT INTO Enrollment (Student_ID, Section_ID, ENROLLMENT_DATE)
    VALUES (99, 505, '2026-05-24'); -- Let's assume Section 505 doesn't exist yet!

    -- If everything succeeds, commit the changes permanently
    COMMIT TRANSACTION;
    PRINT 'Transaction committed successfully!';
END TRY
BEGIN CATCH
    -- If ANY error happens (like a missing Section_ID foreign key violation), 
    -- wipe the slate completely clean!
    ROLLBACK TRANSACTION;
    PRINT 'Error encountered! Transaction rolled back cleanly. Student 99 was NOT saved.';
    
    -- Show the actual error message
    ERROR_MESSAGE() AS [Error Log];
END CATCH;

-- we don't have section 505 so it gives error. you want to run this way because it will otherwise enter data for student but give erro for enrollment.