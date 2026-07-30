{{ config(materialized= 'incremental') }}
select
name as emp_name,
role as emp_role,
location,
case when location = 'Hyd' then 'GHMC' else '' end as loc_code,
mobile_number as contact,
update_at
from ANALYTICSDBT.DATAENGINEER_TEST.MOURITECH

{% if is_incremental() %}
WHERE updated_at >
(
SELECT MAX(update_at)
FROM {{ this }}
)
{% endif %}
