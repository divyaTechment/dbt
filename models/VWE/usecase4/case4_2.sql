
{{ config(materialized='table') }}

Select count(distinct SUBSIDIARY_NAME) as total from  "VWE_S3"."PUBLIC"."SENTIMENTAL_FINAL" where SOURCE = 'Facebook'


