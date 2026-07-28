{{ config(materialized= 'table') }}
select
name as emp_name,
role as emp_role,
mobile_number as contact,
case when contact = '1232415112' then '91' else '' end as code, 
from ANALYTICSDBT.DATAENGINEER_TEST.MOURITECH