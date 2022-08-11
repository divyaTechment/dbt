


 {{ config(materialized='view') }}
select CUSTOMER_NAME as CUSTOMER_NAME, CUSTOMERS_AGE, STATES, REGION,"EVENTS"
from {{ ref('converted_user') }}