CREATE TABLE AnimationTable (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Titulo varchar(100),
	Genero varchar(200),
	Tecnica varchar(200),
	IMDb float,
	Año INT,
	Episodios float,
	runtime varchar(20),
	rated_class varchar(20),
	total_ratings varchar(20),
	summary varchar(400),
	Id_movies INT FOREIGN KEY REFERENCES movies(Id),
	Id_series INT FOREIGN KEY REFERENCES series(Id)
);

INSERT INTO AnimationTable(Titulo, Año, Genero, IMDb, runtime, rated_class, total_ratings, summary, Id_movies)
SELECT title, ROUND(released_year, 0), genre, stars, runtime, rated_class, total_ratings, summary, Id
FROM movies
WHERE genre LIKE '%Animation%';

INSERT INTO AnimationTable(Titulo, Año, Tecnica, IMDb, Episodios, Id_series)
SELECT title, CONVERT(int, SUBSTRING(Year,1,4)), Technique, IMDb, Episodes, Id
FROM series;
