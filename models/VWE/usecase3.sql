
{{ config(materialized='table',schema='new_staging_schema') }}
Select CUSTOMER_ID, sum("Sales_Amount($)") as Overall_Sales_Amount,sum(QUANTITY) as Quantity from VWE_S3.PUBLIC.WHOLESALE 
group by(CUSTOMER_ID)


