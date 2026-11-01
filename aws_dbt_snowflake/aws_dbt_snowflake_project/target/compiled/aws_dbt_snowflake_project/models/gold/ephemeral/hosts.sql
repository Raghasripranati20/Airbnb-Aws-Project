
with
    hosts as (
        select
            host_id,
            host_name,
            host_since,
            superhost,
            response_rate_quality,
            host_created_at

        from AIRBNB.gold.OBT
    )
select *
from hosts