SELECT TOP 10 ID, Team_Name, COUNT(table2.Winner_Team_ID) as NumberOfWins 
FROM table1
LEFT JOIN table2 ON table1.ID = table2.Winner_Team_ID
GROUP BY table1.ID, table1.Team_Name
ORDER BY NumberOfWins DESC, ID

