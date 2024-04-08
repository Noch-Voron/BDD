create table movies(
    title varchar(100),
    released_year float,
    rated_class varchar(20),
    runtime varchar(20),
    stars float,
    total_ratings varchar(20),
    genre varchar(200),
    summary varchar(400)
);

Bulk insert movies
from 'C:\Users\espin\Desktop\BDD\Bases de datos tarea 1/final_movies.csv'
with
(
    keepnulls,
    format = 'CSV',
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\n',
    tablock
)

