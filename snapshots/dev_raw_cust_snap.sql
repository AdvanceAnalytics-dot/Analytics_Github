{% snapshot DEV_RAW_CUST_SNAP %}

{{
config(
    unique_key='CUST_NUMBER',
    strategy='timestamp',
    check_clos='all'
)
}}
SELECT*
FROM
{{ source( 'DEV_RAW','CUSTOMER') }}

{% endsnapshot %}
