-- se crea una lista (?) que contiene cada género de peliculas sin copias

with splitgenres as (
	select distinct value as genre
	from movies
	cross apply string_split(movies.genre, '|')
)
-- se selecciona cada género y se concatena con ', ', para el resultado deseado
select string_agg(genre, ', ') within group (order by genre asc) as 'Generos Películas'
from splitgenres;