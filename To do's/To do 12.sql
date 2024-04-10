SELECT 
	(CONVERT(VARCHAR(10), AVG(min_totales) / 60) + 'h ' +
	CONVERT(VARCHAR(10), AVG(min_totales) % 60) + 'm'
    ) AS DuracionPromedioDePeliculas

FROM (
    SELECT 
        CONVERT(int, LEFT(runtime, CHARINDEX('h', runtime) - 1)) * 60 + 
        CONVERT(int, SUBSTRING(runtime, CHARINDEX('h', runtime) + 2, CHARINDEX('m', runtime) - CHARINDEX('h', runtime) - 2)) AS min_totales
    FROM movies
    WHERE runtime LIKE '%h%' AND runtime LIKE '%m%'
) AS duracion_promedio;