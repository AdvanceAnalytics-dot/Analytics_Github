{% snapshot DEV_RAW_CUST_SNAP %}

{{
config(
    unique_key='CUST_NUMBER',
    strategy='check',
    check_cols='all'
)
}}
SELECT*
FROM
{{ source( 'DEV_RAW','CUSTOMER') }}

{% endsnapshot %}
