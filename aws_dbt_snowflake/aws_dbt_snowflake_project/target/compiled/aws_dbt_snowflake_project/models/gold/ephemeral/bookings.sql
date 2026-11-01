
with
    bookings as (
        select booking_id, booking_date, booking_status, created_at
        from AIRBNB.gold.OBT
    )
select *
from bookings