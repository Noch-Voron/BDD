-- se crea una lista (?) que contiene cada g�nero de peliculas sin copias

with splitgenres as (
	select distinct value as genre
	from movies
	cross apply string_split(movies.genre, '|')
)
-- se selecciona cada g�nero y se concatena con ', ', para el resultado deseado
select string_agg(genre, ', ') within group (order by genre asc) as 'Generos Pel�culas'
from splitgenres;