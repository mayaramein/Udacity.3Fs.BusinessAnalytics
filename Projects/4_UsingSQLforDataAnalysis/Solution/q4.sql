SELECT t.Name AS Track, COUNT(il.InvoiceLineId) AS Sales
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY Sales DESC
LIMIT 5;
