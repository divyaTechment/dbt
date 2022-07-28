
{{ config(materialized='table',schema='usecase5_schema') }}

  Select * from VWE_S3.PUBLIC.PREMIUM_CUSTOMER 
  where MEMBERSHIP_STATUS= 'Active'