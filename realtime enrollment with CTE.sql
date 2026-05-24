WITH BaseSections AS (
    SELECT 
        Sec.Section_ID, 
        Sec.Term, 
        Sec.Section_num, 
        Sec.Meeting_Times, 
        L.Building, 
        L.Room, 
        L.Capacity
    FROM 
        Section AS Sec, 
        Classroom AS CR, 
        Location AS L
    WHERE 
        Sec.Classroom_ID = CR.Classroom_ID 
        AND CR.Location_ID = L.Location_ID
)
SELECT 
    BS.Section_ID, 
    BS.Term, 
    BS.Section_num AS [Section No], 
    BS.Meeting_Times AS [Schedule], 
    BS.Building + ' ' + CAST(BS.Room AS VARCHAR(10)) AS [Classroom], 
    COUNT(E.Student_ID) AS [Total Enrolled Students], 
    BS.Capacity AS [Total Room Capacity], 
    (BS.Capacity - COUNT(E.Student_ID)) AS [Available Seats Left] 
FROM 
    BaseSections AS BS
LEFT JOIN 
    Enrollment AS E ON BS.Section_ID = E.Section_ID 
GROUP BY 
    BS.Section_ID, 
    BS.Term, 
    BS.Section_num, 
    BS.Meeting_Times, 
    BS.Building, 
    BS.Room, 
    BS.Capacity 
ORDER BY 
    [Total Enrolled Students] DESC;

