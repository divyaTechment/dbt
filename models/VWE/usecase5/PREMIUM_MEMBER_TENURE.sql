
{{ config(materialized='table',schema='usecase5_schema') }}

  Select * from VWE.PUBLIC.PREMIUM_CUSTOMER 
  where MEMBERSHIP_STATUS= 'Active'