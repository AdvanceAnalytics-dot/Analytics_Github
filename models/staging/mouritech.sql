{{ config(materialized='table') }}

select
*
from {{ source('ANALYTICSDBT', 'mouritech') }}