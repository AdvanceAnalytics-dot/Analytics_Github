{{ config(materialized= 'table') }}
select
name as emp_name,
role as emp_role,
location,
case when location = 'Hyd' then 'GHMC' else '' end as loc_code,
mobile_number as contact
from {{ source( 'ANALYTICSDBT'.'DATAENGINEER_TEST'.'MOURITECH) }}