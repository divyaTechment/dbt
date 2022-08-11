{{ config(materialized='table') }}

Select CHANNEL,count(IMPRESSIONS) as impressions, count(CLICKS) as clicks from 
"VWE"."PUBLIC"."MULTI_ATTRIBUTE" group by (CHANNEL)


