SELECT ROUND(AVG(IMDb), 2) AS Promedio_segun_Netflix
FROM series
WHERE Original_channel = 'Netflix';
