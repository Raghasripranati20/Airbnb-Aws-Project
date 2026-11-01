

select
    booking_id,
    listing_id,
    booking_date,
    (
    round(NIGHTS_BOOKED * BOOKING_AMOUNT, 2)
)
    + cleaning_fee
    + service_fee as total_amount,
    booking_status,
    created_at
from AIRBNB.bronze.bronze_bookings