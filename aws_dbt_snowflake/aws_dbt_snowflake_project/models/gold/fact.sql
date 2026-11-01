{% set configs = [
    {
        "table": "AIRBNB.GOLD.OBT",
        "columns": "GOLD_OBT.BOOKING_ID, GOLD_OBT.LISTING_ID, GOLD_OBT.HOST_ID, GOLD_OBT.TOTAL_AMOUNT,  GOLD_OBT.ACCOMMODATES, GOLD_OBT.BEDROOMS, GOLD_OBT.BATHROOMS, GOLD_OBT.PRICE_PER_NIGHT, GOLD_OBT.RESPONSE_RATE",
        "alias": "GOLD_OBT",
    },
    {
        "table": "AIRBNB.GOLD.DIM_LISTINGS",
        "columns": "",
        "alias": "DIM_LISTINGS",
        "join_condition": "GOLD_OBT.LISTING_ID = DIM_LISTINGS.LISTING_ID",
    },
    {
        "table": "AIRBNB.GOLD.DIM_HOSTS",
        "columns": "",
        "alias": "DIM_HOSTS",
        "join_condition": "GOLD_OBT.HOST_ID = DIM_HOSTS.HOST_ID",
    },
] %}

select {{ configs[0]["columns"] }}
from
{%- for config in configs %}
        {%- if loop.first %} {{ config["table"] }} as {{ config["alias"] }}
    {%- else %}
        left join
            {{ config["table"] }} as {{ config["alias"] }}
            on {{ config["join_condition"] }}
    {%- endif %}
{%- endfor %}
