SELECT ROUND(released_year, 0) AS a�o, title
FROM movies
GROUP BY released_year, title

UNION ALL

SELECT CONVERT(int, SUBSTRING(Year,1,4)) AS a�o, Title
FROM series

GROUP BY Year, Title;

