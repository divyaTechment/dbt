

 {{ config(materialized='view') }}
select *
from {{ ref('converted_user') }} where EVENTS = 'Summer Fest'