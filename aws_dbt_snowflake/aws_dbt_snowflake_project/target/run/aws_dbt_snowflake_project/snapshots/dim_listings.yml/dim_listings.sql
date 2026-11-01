
      
  
    

create or replace transient table AIRBNB.gold.dim_listings
    
    
    
    
    

    as (
    

    select *,
        md5(coalesce(cast(LISTING_ID as varchar ), '')
         || '|' || coalesce(cast(LISTING_CREATED_AT as varchar ), '')
        ) as dbt_scd_id,
        LISTING_CREATED_AT as dbt_updated_at,
        LISTING_CREATED_AT as dbt_valid_from,
        
  
  coalesce(nullif(LISTING_CREATED_AT, LISTING_CREATED_AT), to_date('9999-12-31'))
  as dbt_valid_to
from (
        with __dbt__cte__listings as (


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
) select * from __dbt__cte__listings
    ) sbq



    )
;


  
  