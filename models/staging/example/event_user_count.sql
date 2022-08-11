{{ config(materialized='view') }}

with
heritage as( select count(*),CUSTOMER_NAME,"Location_of_tasting_room" from heritage_event),
newyear as( select count(*),CUSTOMER_NAME,"Location_of_tasting_room" from newyear_event),
summer as( select count(*),CUSTOMER_NAME,"Location_of_tasting_room" from summer_event),
hallowen as( select count(*),CUSTOMER_NAME,"Location_of_tasting_room" from hallowen_event),
christmas as( select count(*),CUSTOMER_NAME,"Location_of_tasting_room" from christmas_event)


select *
from
heritage inner join newyear on heritage.CUSTOMER_NAME = newyear.CUSTOMER_NAME
inner join summer inner join hallowen  on summer.CUSTOMER_NAME = hallowen.CUSTOMER_NAME
inner join christmas on christmas.CUSTOMER_NAME where "Location_of_tasting_room" = "Napa Valley"



