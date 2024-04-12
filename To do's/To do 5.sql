SELECT ROUND(AVG(IMDb), 2) AS Promedio_segun_Netflix
FROM series
where Original_channel = 'Netflix';
