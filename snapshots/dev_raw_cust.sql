{% snapshot DEV_RAW_CUST %}

{{
config(
        unique_key='CUST_NUMBER',
        strategy='timestamp',
        update_at='create_date'
)
}}
select*
from{{ source( 'DEV_RAW','DEV_CUST') }}

{% endsnapshot %}
