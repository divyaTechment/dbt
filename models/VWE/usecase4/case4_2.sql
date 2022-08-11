
{{ config(materialized='view') }}

Select count(distinct SUBSIDIARY_NAME) as total from  "VWE"."PUBLIC"."SENTIMENTAL_FINAL" where SOURCE = 'Facebook'


