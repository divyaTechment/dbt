

 {{ config(materialized='view') }}
select *
from {{ ref('converted_user') }} where EVENTS = 'New Year'