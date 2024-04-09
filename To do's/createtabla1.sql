create table series(
	Id float PRIMARY KEY,
	Title varchar(100),
	Episodes float,
	Year varchar(50),
	Original_channel varchar(100),
	American_company varchar(100),
	Note varchar(100),
	Technique varchar(200),
	IMDb float,
	Google_users varchar(10)
	);

Bulk insert series
from 'C:\Users\espin\Desktop\BDD\Bases de datos tarea 1\Animated_Tv_Series.csv'
with
(
    keepnulls,
    format = 'CSV',
    firstrow = 2,
    fieldterminator = ',',
    rowterminator = '\n',
    tablock
)
