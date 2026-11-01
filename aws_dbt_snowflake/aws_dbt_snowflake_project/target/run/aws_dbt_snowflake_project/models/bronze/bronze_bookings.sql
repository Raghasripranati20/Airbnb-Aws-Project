
  
    

create or replace transient table AIRBNB.bronze.bronze_bookings
    
    
    
    
    

    as (


select *
from AIRBNB.STAGING.bookings


    where
        CREATED_AT
        > (select coalesce(max(CREATED_AT), '1900-01-01') from AIRBNB.bronze.bronze_bookings)

    )
;


  