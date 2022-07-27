 {{ config(materialized='table') }}
SELECT * FROM "VWE_S3"."PUBLIC"."CONVERTED_USER" WHERE EVENTS = 'Christmas Celebration'
