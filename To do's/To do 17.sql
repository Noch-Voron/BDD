SELECT genre as Tipo, title
FROM movies
where genre like '%Animation%'
GROUP BY title, genre

UNION ALL

SELECT Technique as Tipo, Title
FROM series

GROUP BY Title, Technique;
