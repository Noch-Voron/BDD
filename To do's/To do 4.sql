select count(*) as 'Cantidad por A�o', LEFT(year,4) as 'A�o Inicial'
from series
group by left(year,4)
order by A�o_Inicial asc;