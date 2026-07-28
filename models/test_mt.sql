{{ config(materialized= 'table') }}
select
name as emp_name,
role as emp_role,
mobile_number as contact
from {{ source( 'DATAENGINEER_TEST'.'mouritech') }}