{% snapshot DEV_RAW_SNAP %}

{{
    config(
        unique_key=
        strategy=
        update_at=
    )
}}
select*
from{{ source( 'DEV_CUST','CUSTOMER') }}

{% endsnapshot %}
