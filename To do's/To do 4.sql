select count(*) as 'Cantidad por Año', LEFT(year,4) as 'Año_Inicial'
from series
group by left(year,4)
having count(*) > 5
order by Año_Inicial asc;
