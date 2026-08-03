{% snapshot DEV_RAW_CUST_SNAP %}

{{
config(
    unique_key='CUST_NUMBER',
    strategy='timestamp',
    updated_at='last_updated'
)
}}
SELECT*
FROM
{{ source( 'DEV_RAW','CUSTOMER') }}

{% endsnapshot %}
