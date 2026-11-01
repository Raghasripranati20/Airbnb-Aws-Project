
  
    

create or replace transient table AIRBNB.gold.OBT
    
    
    
    
    

    as (


select
    
        SILVER_bookings.*,
    
        SILVER_listings.HOST_ID, SILVER_listings.PROPERTY_TYPE, SILVER_listings.ROOM_TYPE, SILVER_listings.CITY, SILVER_listings.COUNTRY, SILVER_listings.ACCOMMODATES, SILVER_listings.BEDROOMS, SILVER_listings.BATHROOMS, SILVER_listings.PRICE_PER_NIGHT, silver_listings.PRICE_PER_NIGHT_TAG, SILVER_listings.CREATED_AT AS LISTING_CREATED_AT,
    
        SILVER_hosts.HOST_NAME, SILVER_hosts.HOST_SINCE, SILVER_hosts.SUPERHOST, SILVER_hosts.RESPONSE_RATE, SILVER_hosts.RESPONSE_RATE_QUALITY, SILVER_hosts.CREATED_AT AS HOST_CREATED_AT
    
from

         AIRBNB.SILVER.SILVER_BOOKINGS as SILVER_bookings
    

        
        left join
            AIRBNB.SILVER.SILVER_LISTINGS as SILVER_listings
            on SILVER_bookings.listing_id = SILVER_listings.listing_id
    

        
        left join
            AIRBNB.SILVER.SILVER_HOSTS as SILVER_hosts
            on SILVER_listings.host_id = SILVER_hosts.host_id
    

    )
;


  