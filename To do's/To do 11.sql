SELECT
	(SELECT TOP 1 Title 
	FROM series
	WHERE Episodes = (SELECT MAX(Episodes) FROM series)) AS Titulo,
	MAX(Episodes) AS Episodios
FROM series;