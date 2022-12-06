
with weather as (
    select date, DailyWindSpeed from daily_weather 
    where strftime('%Y', date) = '2014'
    order by DailyWindSpeed desc
    limit 10
),
all_trip as (
    select pickup_datetime from taxi_trips
    where strftime('%Y', pickup_datetime) = '2014'
    union all
    select pickup_datetime from uber_trips
    where strftime('%Y', pickup_datetime) = '2014'
)
select date, max(DailyWindSpeed), count(1) as popularity
from weather
left join all_trip
on weather.date = strftime('%Y-%m-%d', all_trip.pickup_datetime)
group by weather.date
order by date asc
