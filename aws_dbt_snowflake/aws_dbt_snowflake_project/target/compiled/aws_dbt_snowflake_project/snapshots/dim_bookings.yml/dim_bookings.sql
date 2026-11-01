with __dbt__cte__bookings as (

with
    bookings as (
        select booking_id, booking_date, booking_status, created_at
        from AIRBNB.gold.OBT
    )
select *
from bookings
) select * from __dbt__cte__bookings