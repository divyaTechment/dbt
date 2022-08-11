 {{ config(materialized='view') }}
select *
from {{ ref('converted_user') }} where EVENTS = 'Heritage Festival'