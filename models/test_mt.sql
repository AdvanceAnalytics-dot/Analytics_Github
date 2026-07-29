{{ config(materialized= 'table') }}
select
name as emp_name,
role as emp_role,
location,
case when location = 'HYD' then 'GHMC' else '' end as code,
mobile_number as contact
from ANALYTICSDBT.DATAENGINEER_TEST.MOURITECH