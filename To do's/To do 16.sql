select
    coalesce(movies.title, series.title) as title,
    coalesce(movies.released_year, left(series.Year, 4)) as year
from movies
full outer join series
    on movies.title = series.title and movies.released_year = left(series.Year, 4)
where 
    (movies.released_year is not null or series.Year is not null)
order by year;
