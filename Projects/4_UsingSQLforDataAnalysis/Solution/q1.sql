SELECT g.Name AS Genre, COUNT(il.InvoiceLineId) AS TracksSold
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.Name
ORDER BY TracksSold DESC;
