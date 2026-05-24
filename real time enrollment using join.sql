SELECT 
    Sec.Section_ID,
    Sec.Term,
    Sec.Section_num AS [Section No],
    Sec.Meeting_Times AS [Schedule],
    L.Building + ' ' + CAST(L.Room AS VARCHAR(10)) AS [Classroom],
    COUNT(E.Student_ID) AS [Total Enrolled Students],
    L.Capacity AS [Total Room Capacity],
    (L.Capacity - COUNT(E.Student_ID)) AS [Available Seats Left]
FROM Section AS Sec
INNER JOIN Classroom AS CR 
    ON Sec.Classroom_ID = CR.Classroom_ID
INNER JOIN Location AS L 
    ON CR.Location_ID = L.Location_ID
LEFT JOIN Enrollment AS E 
    ON Sec.Section_ID = E.Section_ID
GROUP BY 
    Sec.Section_ID, 
    Sec.Term, 
    Sec.Section_num, 
    Sec.Meeting_Times, 
    L.Building, 
    L.Room, 
    L.Capacity
ORDER BY [Total Enrolled Students] DESC;