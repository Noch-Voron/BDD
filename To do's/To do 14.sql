SELECT *
FROM series INNER JOIN movies 
ON series.Title = movies.title AND movies.released_year = CONVERT(int, SUBSTRING(series.Year,1,4)) AND runtime IS NOT NULL AND Episodes IS NOT NULL
