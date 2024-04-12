select Titulo,
    IMDb,
    Canal
from (
    select
        Title as Titulo,
        IMDb,
        Original_channel as Canal,
        row_number() over (partition by Original_channel order by IMDb desc, Title) as RowNum
    from series
    where IMDb > 7.5
) as RankedSeries
where RowNum <= 5 and Canal is not null
order by Canal, IMDb desc;
