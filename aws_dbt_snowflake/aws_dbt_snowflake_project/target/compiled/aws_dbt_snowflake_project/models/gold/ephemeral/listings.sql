

with
    listings as (
        select
            listing_id,
            property_type,
            room_type,
            city,
            country,
            price_per_night_tag,
            listing_created_at
        from AIRBNB.gold.OBT
    )
select *
from listings