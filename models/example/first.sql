 {{ config(materialized='table') }}
SELECT * FROM "VWE"."PUBLIC"."CONVERTED_USER" WHERE EVENTS = 'Christmas Celebration'
