select count(*) as 'Cantidad por Año', LEFT(year,4) as 'Año Inicial'
from series
group by left(year,4)
order by Año_Inicial asc;