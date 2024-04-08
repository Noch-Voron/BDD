SELECT ROUND(AVG(IMDb), 2) AS Promedio_Series_De_Netflix
FROM series
where Original_channel = 'Netflix';