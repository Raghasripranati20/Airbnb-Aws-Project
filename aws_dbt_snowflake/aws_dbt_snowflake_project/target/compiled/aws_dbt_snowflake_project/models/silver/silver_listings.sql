
select
    listing_id,
    host_id,
    property_type,
    room_type,
    city,
    country,
    accommodates,
    bedrooms,
    bathrooms,
    price_per_night,
    
    case
        when PRICE_PER_NIGHT < 100 then 'low' when PRICE_PER_NIGHT < 200 then 'medium' else 'high'
    end
 as price_per_night_tag,
    created_at
from AIRBNB.bronze.bronze_listings