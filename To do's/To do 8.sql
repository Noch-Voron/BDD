select Title as 'Serie Animada', Google_users as Rating
from series
where cast(replace(Google_users, '%', '') as float )/ 100 < 0.3;