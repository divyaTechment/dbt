{{ config(materialized='table') }}

select INSERTION_ORDER, count(TOTAL_CONVERSIONS) as Total_Conversion from vwe.public.multi_attribute where year='2021'
 group by(INSERTION_ORDER) 