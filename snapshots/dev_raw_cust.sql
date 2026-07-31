{% snapshot DEV_RAW_SNAP %}

{{
    config(
        unique_key='CUST_NUMBER',
        strategy='timestamp',
        update_at='create_date'
    )
}}
select*
from{{ source( 'DEV_CUST','CUSTOMER') }}

{% endsnapshot %}
