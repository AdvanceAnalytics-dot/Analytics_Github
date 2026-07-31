{{ config(materialized= 'ephemeral') }}
select
name as emp_name,
case when location = 'Hyd' then 'GHMC' else '' end as loc_code,
from ANALYTICSDBT.DATAENGINEER_TEST.MOURITECH