select
    {{ uppercase('CUST_NAME') }}
AS CUSTOMER_NAME
FROM
{{ source('DATAENGINEER', 'DEV_RAW_CUST_SNAP') }}