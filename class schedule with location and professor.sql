SELECT 
    Sec.Section_ID,
    Sec.Term,
    Sec.Section_num AS [Section No],
    CO.Department_ID AS [Dept ID],
    E.Lname + ', ' + E.Fname AS [Instructor],
    L.Building + ' - Room ' + CAST(L.Room AS VARCHAR(10)) AS [Location],
    L.Capacity AS [Max Room Capacity],
    Sec.Meeting_Times AS [Schedule]
FROM Section AS Sec
INNER JOIN Course AS CO 
    ON Sec.Course_ID = CO.COURSE_ID
INNER JOIN Employee AS E 
    ON Sec.Employee_ID = E.EMPLOYEE_ID
INNER JOIN Classroom AS CR 
    ON Sec.Classroom_ID = CR.Classroom_ID
INNER JOIN Location AS L 
    ON CR.Location_ID = L.Location_ID
ORDER BY Sec.Term DESC, L.Building, L.Room;