SELECT ROUND(released_year, 0) AS año, title
FROM movies
GROUP BY released_year, title
HAVING released_year IS NOT NULL
  
UNION ALL

SELECT CONVERT(int, SUBSTRING(Year,1,4)) AS año, Title
FROM series

GROUP BY Year, Title
HAVING Year IS NOT NULL;
