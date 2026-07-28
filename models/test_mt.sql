{{ config(materialized= 'table') }}
select
name as emp_name,
role as emp_role,
mobile_number as contact
from ANALYTICSDBT.DATAENGINEER_TEST.MOURITECH