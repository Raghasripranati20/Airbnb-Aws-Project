
  
    

create or replace transient table AIRBNB.bronze.bronze_hosts
    
    
    
    
    

    as (

select *
from AIRBNB.STAGING.hosts

    where
        CREATED_AT
        > (select coalesce(max(CREATED_AT), '1900-01-01') from AIRBNB.bronze.bronze_hosts)

    )
;


  